Rem  Copyright © 2017 Oracle and/or its affiliates.  All rights reserved.
Rem  Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl. 

drop SEQUENCE PROJECT_BUDGET_SEQ;
drop sequence AUDIT_DETAILS_SEQ;  
drop SEQUENCE apex_access_control_seq;  
drop table PROJECT_BUDGET cascade constraints;
drop table AUDIT_DETAILS cascade constraints;
drop table APEX_ACCESS_SETUP cascade constraints;
drop table APEX_ACCESS_CONTROL cascade constraints;
DROP PROCEDURE PROJECT_BUDGET_DATA;