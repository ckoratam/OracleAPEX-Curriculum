Rem  Copyright © 2017 Oracle and/or its affiliates.  All rights reserved.
Rem  Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl. 


--<< Drop existing DB Objects >>--
--   Uncomment the following lines if rereunning the script
-- drop table demo_proj_constraints cascade constraints;
-- drop table demo_proj_status cascade constraints;
-- drop table demo_proj_team_members cascade constraints;
-- drop table demo_projects cascade constraints;
-- drop table demo_proj_milestones cascade constraints;
-- drop table demo_proj_tasks cascade constraints;
-- drop table demo_proj_task_todos cascade constraints;
-- drop table demo_proj_task_links cascade constraints;
-- drop table demo_proj_comments cascade constraints;
-- drop package demo_projects_data_pkg;
--------------------------------------------------------------
--<< Create all of the necessary tables for Demo Projects >>--
--------------------------------------------------------------
 
-----------------------------------------------------------
-- Demo Project Constraint Lookup table
-----------------------------------------------------------
create table demo_proj_constraints(
    constraint_name varchar2(30)   not null 
                    constraint demo_proj_const_lookup_pk
                    primary key,
    message         varchar2(4000) not null)
/

------------------------------------------------------------
-- Demo Project Status table
-----------------------------------------------------------
create table demo_proj_status (
    cd                  varchar2(15)        not null
                        constraint demo_proj_status_pk 
                        primary key,
    description         varchar2(255) not null,
    display_order       number not null,
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

create or replace trigger biu_demo_proj_status
    before insert or update on demo_proj_status
    for each row
begin
    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.cd         := upper(:new.cd);
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

------------------------------------------------------------
-- Demo Project Team Members table
-----------------------------------------------------------
create table demo_proj_team_members (
    id                  number        not null
                        constraint demo_proj_team_members_pk 
                        primary key,
    username            varchar2(255) not null,
    full_name           varchar2(255) not null,
    email               varchar2(255),
    profile             varchar2(4000),
    
    photo_filename      varchar2(100),
    photo_blob          blob,
    photo_mimetype      varchar2(255),
    photo_charset       varchar2(128),
    photo_last_updated  date,
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_proj_team_members add constraint demo_proj_team_members_uk
  unique (username);

create or replace trigger biu_demo_proj_team_members
    before insert or update on demo_proj_team_members
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.username   := upper(:new.username);
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Projects table
-----------------------------------------------------------
create table demo_projects (
    id                   number        not null
                         constraint demo_projects_pk 
                         primary key,
    project_lead         number,
    --
    name                 varchar2(255) not null,
    description          varchar2(4000),
    status_cd            varchar2(15) not null,
    completed_date       date,
    --
    created              timestamp with local time zone  not null,
    created_by           varchar2(255)                   not null,
    updated              timestamp with local time zone  not null,
    updated_by           varchar2(255)                   not null )
/

alter table demo_projects add constraint demo_projects_uk
  unique (name);

alter table demo_projects add constraint demo_proj_team_member_fk
  foreign key (project_lead) references demo_proj_team_members (id)
  on delete set null;

create index demo_proj_team_member_idx on demo_projects (project_lead);

alter table demo_projects add constraint demo_proj_status_fk
  foreign key (status_cd) references demo_proj_status (cd)
  on delete set null;

create index demo_proj_status_idx on demo_projects (status_cd);


create or replace trigger biu_demo_projects
    before insert or update on demo_projects
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Milestones table
-----------------------------------------------------------
create table demo_proj_milestones (
    id                   number        not null
                         constraint demo_proj_milestones_pk 
                         primary key,
    project_id           number not null,
    --
    name                 varchar2(255) not null,
    description          varchar2(4000),
    due_date             date not null,
    --
    created              timestamp with local time zone  not null,
    created_by           varchar2(255)                   not null,
    updated              timestamp with local time zone  not null,
    updated_by           varchar2(255)                   not null )
/

alter table demo_proj_milestones add constraint demo_proj_mstone_proj_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_proj_mstone_prj_idx on demo_proj_milestones (project_id);

create or replace trigger biu_demo_proj_milestones
    before insert or update on demo_proj_milestones
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Tasks table
-----------------------------------------------------------
create table demo_proj_tasks (
    id                   number        not null
                         constraint demo_proj_tasks_pk 
                         primary key,
    project_id           number not null,
    milestone_id         number,
    assignee             number,
    --
    name                 varchar2(255) not null,
    description          varchar2(4000),
    start_date           date not null,
    end_date             date not null,
    is_complete_yn       varchar2(1),
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_proj_tasks add constraint demo_proj_tasks_uk
  unique (project_id, name);

alter table demo_proj_tasks add constraint demo_proj_task_project_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_proj_task_project_idx on demo_proj_tasks (project_id);

alter table demo_proj_tasks add constraint demo_proj_task_mstone_fk
  foreign key (milestone_id) references demo_proj_milestones (id) 
  on delete set null;

create index demo_proj_task_mstone_idx on demo_proj_tasks (milestone_id);

alter table demo_proj_tasks add constraint demo_proj_task_team_mem_fk
  foreign key (assignee) references demo_proj_team_members (id) 
  on delete set null;

create index demo_proj_task_team_mm_idx on demo_proj_tasks (assignee);

create or replace trigger biu_demo_proj_tasks
    before insert or update on demo_proj_tasks
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Task ToDos table
-----------------------------------------------------------
create table demo_proj_task_todos (
    id                 number        not null
                         constraint demo_proj_task_todos_pk 
                         primary key,
    project_id           number not null,
    task_id              number not null,
    assignee             number,
    --
    name                 varchar2(255) not null,
    description          varchar2(4000),
    is_complete_yn       varchar2(1),
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_proj_task_todos add constraint demo_proj_task_todo_prj_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_proj_tsk_todo_prj_idx  on demo_proj_task_todos (project_id);

alter table demo_proj_task_todos add constraint demo_proj_task_todo_tsk_fk
  foreign key (task_id) references demo_proj_tasks (id) 
  on delete cascade;

create index demo_proj_tsk_todo_tsk_idx on demo_proj_task_todos (task_id);

alter table demo_proj_task_todos add constraint demo_proj_task_todo_tm_fk
  foreign key (assignee) references demo_proj_team_members (id) 
  on delete set null;

create index demo_proj_task_todo_tm_idx on demo_proj_task_todos (assignee);

create or replace trigger biu_demo_proj_task_todos
    before insert or update on demo_proj_task_todos
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Task Links table
-----------------------------------------------------------
create table demo_proj_task_links (
    id                 number        not null
                         constraint demo_proj_task_links_pk 
                         primary key,
    project_id         number not null,
    task_id            number not null,
    --
    link_type          varchar2(20) not null,
    url                varchar2(255),
    application_id     number,
    application_page   number,
    description        varchar2(4000),
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_proj_task_links add constraint demo_proj_task_link_prj_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_proj_tsk_link_prj_idx  on demo_proj_task_links (project_id);

alter table demo_proj_task_links add constraint demo_proj_task_link_tsk_fk
  foreign key (task_id) references demo_proj_tasks (id) 
  on delete cascade;

create index demo_proj_tsk_link_tsk_idx on demo_proj_task_links (task_id);

alter table demo_proj_task_links add constraint demo_proj_task_link_lty_ch 
   check ( link_type in ('URL','Application'));


create or replace trigger biu_demo_proj_task_links
    before insert or update on demo_proj_task_links
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Project Comments table
-----------------------------------------------------------
create table demo_proj_comments (
    id                   number        not null
                         constraint demo_proj_comments_pk 
                         primary key,
    project_id           number not null,
    --
    comment_text         varchar2(4000) not null,
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_proj_comments add constraint demo_proj_comment_proj_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_proj_comment_proj_idx on demo_proj_comments (project_id);

create or replace trigger biu_demo_proj_comments
    before insert or update on demo_proj_comments
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/