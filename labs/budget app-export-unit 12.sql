Rem  Copyright © 2017 Oracle and/or its affiliates.  All rights reserved.
Rem  Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl. 


set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.0.00.45'
,p_default_workspace_id=>1841547862027812
,p_default_application_id=>106
,p_default_owner=>'APEX_DEMO'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 106 - BUDGET APP
--
-- Application Export:
--   Application:     106
--   Name:            BUDGET APP
--   Date and Time:   12:02 Monday February 20, 2017
--   Exported By:     CHAITANYA
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.0.00.45
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                      6
--     Items:                   20
--     Computations:             1
--     Validations:              2
--     Processes:               14
--     Regions:                  9
--     Buttons:                 10
--     Dynamic Actions:          4
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included
--     Install scripts:          2

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,106)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX_DEMO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'BUDGET APP')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_106')
,p_page_view_logging=>'YES'
,p_checksum_salt=>'2507610659F032E8177B5784F243D6D25B55C1F29E1DAFAD63D5B2037F1F6BEA'
,p_bookmark_checksum_function=>'SH512'
,p_on_max_session_timeout_url=>'#LOGOUT_URL#'
,p_on_max_idle_timeout_url=>'#LOGOUT_URL#'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(22874814879714826)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:BUDGET APP'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_last_updated_by=>'CHAITANYA'
,p_last_upd_yyyymmddhh24miss=>'20170220120040'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(22763396030714777)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22919778105866086)
,p_list_item_link_text=>'Interactive Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22891763304714916)
,p_list_item_link_text=>'PROJECT_BUDGET'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23234656565186498)
,p_list_item_link_text=>'Project Budget Report'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(22874152436714824)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22878932422714829)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22761634202714776)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22761963680714777)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22762260189714777)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22762574097714777)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22762849665714777)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22763184923714777)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/project_budget_breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(22898738083714938)
,p_name=>'PROJECT_BUDGET Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22898871778714938)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22763682812714777)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22763989272714779)
,p_page_template_id=>wwv_flow_api.id(22763682812714777)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22764273875714779)
,p_page_template_id=>wwv_flow_api.id(22763682812714777)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22764570346714779)
,p_page_template_id=>wwv_flow_api.id(22763682812714777)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22764899254714779)
,p_page_template_id=>wwv_flow_api.id(22763682812714777)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22765185292714779)
,p_page_template_id=>wwv_flow_api.id(22763682812714777)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22765462539714779)
,p_page_template_id=>wwv_flow_api.id(22763682812714777)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22765763640714779)
,p_page_template_id=>wwv_flow_api.id(22763682812714777)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22766009597714779)
,p_page_template_id=>wwv_flow_api.id(22763682812714777)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22766211135714779)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22766551603714779)
,p_page_template_id=>wwv_flow_api.id(22766211135714779)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22766827692714779)
,p_page_template_id=>wwv_flow_api.id(22766211135714779)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22767122489714779)
,p_page_template_id=>wwv_flow_api.id(22766211135714779)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22767442997714779)
,p_page_template_id=>wwv_flow_api.id(22766211135714779)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22767726799714779)
,p_page_template_id=>wwv_flow_api.id(22766211135714779)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22768099625714780)
,p_page_template_id=>wwv_flow_api.id(22766211135714779)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22768372362714780)
,p_page_template_id=>wwv_flow_api.id(22766211135714779)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22768630375714780)
,p_page_template_id=>wwv_flow_api.id(22766211135714779)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22768905885714780)
,p_page_template_id=>wwv_flow_api.id(22766211135714779)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22769149863714780)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22769410660714780)
,p_page_template_id=>wwv_flow_api.id(22769149863714780)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22769760358714780)
,p_page_template_id=>wwv_flow_api.id(22769149863714780)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22769909218714780)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22770236688714780)
,p_page_template_id=>wwv_flow_api.id(22769909218714780)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22770513102714780)
,p_page_template_id=>wwv_flow_api.id(22769909218714780)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22770882877714780)
,p_page_template_id=>wwv_flow_api.id(22769909218714780)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22771180983714780)
,p_page_template_id=>wwv_flow_api.id(22769909218714780)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22771481331714780)
,p_page_template_id=>wwv_flow_api.id(22769909218714780)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22771795745714780)
,p_page_template_id=>wwv_flow_api.id(22769909218714780)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22772056463714782)
,p_page_template_id=>wwv_flow_api.id(22769909218714780)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22772374764714782)
,p_page_template_id=>wwv_flow_api.id(22769909218714780)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22772609575714782)
,p_page_template_id=>wwv_flow_api.id(22769909218714780)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22772877746714782)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22773160746714782)
,p_page_template_id=>wwv_flow_api.id(22772877746714782)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22773466748714782)
,p_page_template_id=>wwv_flow_api.id(22772877746714782)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22773780193714782)
,p_page_template_id=>wwv_flow_api.id(22772877746714782)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22774059925714782)
,p_page_template_id=>wwv_flow_api.id(22772877746714782)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22774311759714782)
,p_page_template_id=>wwv_flow_api.id(22772877746714782)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22774658697714782)
,p_page_template_id=>wwv_flow_api.id(22772877746714782)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22774955153714782)
,p_page_template_id=>wwv_flow_api.id(22772877746714782)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22775143928714782)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22775446445714783)
,p_page_template_id=>wwv_flow_api.id(22775143928714782)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22775733635714783)
,p_page_template_id=>wwv_flow_api.id(22775143928714782)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22776050779714783)
,p_page_template_id=>wwv_flow_api.id(22775143928714782)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22776407051714783)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22776762263714783)
,p_page_template_id=>wwv_flow_api.id(22776407051714783)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22777012136714783)
,p_page_template_id=>wwv_flow_api.id(22776407051714783)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22777323807714783)
,p_page_template_id=>wwv_flow_api.id(22776407051714783)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22777646028714783)
,p_page_template_id=>wwv_flow_api.id(22776407051714783)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22777959172714783)
,p_page_template_id=>wwv_flow_api.id(22776407051714783)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22778240047714783)
,p_page_template_id=>wwv_flow_api.id(22776407051714783)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22778544868714783)
,p_page_template_id=>wwv_flow_api.id(22776407051714783)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22778864628714783)
,p_page_template_id=>wwv_flow_api.id(22776407051714783)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22779088278714783)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22779346830714783)
,p_page_template_id=>wwv_flow_api.id(22779088278714783)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22779656836714785)
,p_page_template_id=>wwv_flow_api.id(22779088278714783)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22779929105714785)
,p_page_template_id=>wwv_flow_api.id(22779088278714783)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22780226494714785)
,p_page_template_id=>wwv_flow_api.id(22779088278714783)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22780510536714785)
,p_page_template_id=>wwv_flow_api.id(22779088278714783)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22780864250714785)
,p_page_template_id=>wwv_flow_api.id(22779088278714783)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22781143537714785)
,p_page_template_id=>wwv_flow_api.id(22779088278714783)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22781308127714785)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22781639594714785)
,p_page_template_id=>wwv_flow_api.id(22781308127714785)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22781934690714785)
,p_page_template_id=>wwv_flow_api.id(22781308127714785)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22782233908714785)
,p_page_template_id=>wwv_flow_api.id(22781308127714785)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(22852824331714815)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(22852940869714815)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(22853076510714815)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22782698418714785)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22782987715714787)
,p_plug_template_id=>wwv_flow_api.id(22782698418714785)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22786397668714787)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22786553189714788)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22786817214714788)
,p_plug_template_id=>wwv_flow_api.id(22786553189714788)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22787107718714788)
,p_plug_template_id=>wwv_flow_api.id(22786553189714788)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22787327956714788)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22787633008714788)
,p_plug_template_id=>wwv_flow_api.id(22787327956714788)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22787944313714788)
,p_plug_template_id=>wwv_flow_api.id(22787327956714788)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22789387125714788)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22789641967714788)
,p_plug_template_id=>wwv_flow_api.id(22789387125714788)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22789974817714788)
,p_plug_template_id=>wwv_flow_api.id(22789387125714788)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22796309180714791)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22796668290714791)
,p_plug_template_id=>wwv_flow_api.id(22796309180714791)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22796970499714791)
,p_plug_template_id=>wwv_flow_api.id(22796309180714791)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22800942750714793)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22802730906714794)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22803098629714794)
,p_plug_template_id=>wwv_flow_api.id(22802730906714794)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22804274382714794)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22804515228714794)
,p_plug_template_id=>wwv_flow_api.id(22804274382714794)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22806320827714794)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22806998897714796)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22807298632714796)
,p_plug_template_id=>wwv_flow_api.id(22806998897714796)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22807464815714796)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22807720065714796)
,p_plug_template_id=>wwv_flow_api.id(22807464815714796)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22808036868714796)
,p_plug_template_id=>wwv_flow_api.id(22807464815714796)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22814057282714798)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22814370678714798)
,p_plug_template_id=>wwv_flow_api.id(22814057282714798)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22814663797714799)
,p_plug_template_id=>wwv_flow_api.id(22814057282714798)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22816624000714799)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22817447140714799)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22817761961714799)
,p_plug_template_id=>wwv_flow_api.id(22817447140714799)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22834705678714807)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22838164353714808)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22842966256714810)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22844550265714810)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22846999313714812)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22847945744714812)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22848101122714812)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22848353313714812)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22848517856714812)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22850190629714813)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22851145492714813)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22818785816714801)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22818993399714801)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22822389616714802)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22826979048714804)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22827719942714804)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22827938438714804)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(22827938438714804)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22830506659714804)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22830977493714804)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22832900447714805)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22852369397714815)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22852448654714815)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22852567411714815)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22852670827714815)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22852778800714815)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(22853777176714815)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(22853998951714815)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(22853812980714815)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(22855127809714816)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(22779088278714783)
,p_default_dialog_template=>wwv_flow_api.id(22775143928714782)
,p_error_template=>wwv_flow_api.id(22769149863714780)
,p_printer_friendly_template=>wwv_flow_api.id(22779088278714783)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(22769149863714780)
,p_default_button_template=>wwv_flow_api.id(22852940869714815)
,p_default_region_template=>wwv_flow_api.id(22807464815714796)
,p_default_chart_template=>wwv_flow_api.id(22807464815714796)
,p_default_form_template=>wwv_flow_api.id(22807464815714796)
,p_default_reportr_template=>wwv_flow_api.id(22807464815714796)
,p_default_tabform_template=>wwv_flow_api.id(22807464815714796)
,p_default_wizard_template=>wwv_flow_api.id(22807464815714796)
,p_default_menur_template=>wwv_flow_api.id(22816624000714799)
,p_default_listr_template=>wwv_flow_api.id(22807464815714796)
,p_default_irr_template=>wwv_flow_api.id(22806320827714794)
,p_default_report_template=>wwv_flow_api.id(22827938438714804)
,p_default_label_template=>wwv_flow_api.id(22852448654714815)
,p_default_menu_template=>wwv_flow_api.id(22853777176714815)
,p_default_calendar_template=>wwv_flow_api.id(22853812980714815)
,p_default_list_template=>wwv_flow_api.id(22842966256714810)
,p_default_nav_list_template=>wwv_flow_api.id(22850190629714813)
,p_default_top_nav_list_temp=>wwv_flow_api.id(22850190629714813)
,p_default_side_nav_list_temp=>wwv_flow_api.id(22848353313714812)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(22787327956714788)
,p_default_dialogr_template=>wwv_flow_api.id(22786397668714787)
,p_default_option_label=>wwv_flow_api.id(22852448654714815)
,p_default_required_label=>wwv_flow_api.id(22852670827714815)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(22848101122714812)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.1/')
,p_files_version=>63
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#HAMMERJS_URL#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22854108103714815)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22854330086714815)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22854524541714815)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22854718416714815)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22854992084714815)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(23325831034834700)
,p_theme_id=>42
,p_name=>'Vita (Copy)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#ce7e05","@g_Link-Base":"#bf0b05"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#23325831034834700.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200D0A202A20566974610D0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290D0A202A200D0A202A2054686973204353532066696C65207761732067656E657261746564207573';
wwv_flow_api.g_varchar2_table(2) := '696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200D0A202A200D0A202A2F0D0A0D0A2E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A2023356435';
wwv_flow_api.g_varchar2_table(3) := '6435643B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20233634363436343B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(4) := '723A20233636363636363B0D0A7D0D0A2E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233433343334333B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(5) := '233462346234623B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A0D0A2E742D416C6572742D2D77697A6172642C0D0A2E742D416C6572742D2D686F7269';
wwv_flow_api.g_varchar2_table(6) := '7A6F6E74616C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(7) := '79656C6C6F77207B0D0A20206261636B67726F756E642D636F6C6F723A20236665663765303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068322C0D0A2E742D416C6572742D2D636F6C6F724247';
wwv_flow_api.g_varchar2_table(8) := '2E742D416C6572742D2D79656C6C6F772068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068332C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77206833207B';
wwv_flow_api.g_varchar2_table(9) := '0D0A2020636F6C6F723A20233330333033303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E67202E742D416C6572742D626F64792C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C657274';
wwv_flow_api.g_varchar2_table(10) := '2D2D79656C6C6F77202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A20233730373037303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(11) := '6F6C6F723A20236565666466333B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D737563636573732068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373206833207B0D0A';
wwv_flow_api.g_varchar2_table(12) := '2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A20233736373637363B0D0A7D0D0A2E742D41';
wwv_flow_api.g_varchar2_table(13) := '6C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0D0A20206261636B67726F756E642D636F6C6F723A20236663656165613B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(14) := '742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7265642068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D';
wwv_flow_api.g_varchar2_table(15) := '2D64616E6765722068332C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564206833207B0D0A2020636F6C6F723A20233334333433343B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64';
wwv_flow_api.g_varchar2_table(16) := '616E676572202E742D416C6572742D626F64792C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A20233734373437343B0D0A7D0D0A2E742D416C657274';
wwv_flow_api.g_varchar2_table(17) := '2D2D636F6C6F7242472E742D416C6572742D2D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236564663666663B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F2068322C0D0A2E742D';
wwv_flow_api.g_varchar2_table(18) := '416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F206833207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F202E742D416C6572742D626F';
wwv_flow_api.g_varchar2_table(19) := '6479207B0D0A2020636F6C6F723A20233736373637363B0D0A7D0D0A0D0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E207B0D0A2020';
wwv_flow_api.g_varchar2_table(20) := '636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0D0A2020636F6C6F723A20233030613032643B0D0A7D0D0A0D0A2E742D416C6572742D2D696E666F202E742D41';
wwv_flow_api.g_varchar2_table(21) := '6C6572742D69636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E207B0D';
wwv_flow_api.g_varchar2_table(22) := '0A2020636F6C6F723A20236535333933353B0D0A7D0D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D686F72697A6F';
wwv_flow_api.g_varchar2_table(23) := '6E74616C2C0D0A2E742D416C6572742D2D77697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572';
wwv_flow_api.g_varchar2_table(24) := '742D2D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C203136302C2034352C20302E39293B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D49636F6E';
wwv_flow_api.g_varchar2_table(25) := '2C0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D416C6572742D7469746C65207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D70616765202E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(26) := '2D636C6F7365416C657274207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F766572207B0D0A202062';
wwv_flow_api.g_varchar2_table(27) := '6F782D736861646F773A2030202D38707820302030202365366536653620696E7365743B0D0A7D0D0A2E742D42616467654C6973742061207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(28) := '6C6172202E742D42616467654C6973742D6974656D3A686F766572202E742D42616467654C6973742D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D42616467654C6973742D2D636972';
wwv_flow_api.g_varchar2_table(29) := '63756C6172202E742D42616467654C6973742D76616C7565207B0D0A2020636F6C6F723A20233733373337333B0D0A2020626F782D736861646F773A2030203020302031707820726762612836342C2036342C2036342C20302E312920696E7365743B0D';
wwv_flow_api.g_varchar2_table(30) := '0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C75652061207B0D0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(31) := '20317078202363653765303520696E7365743B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(32) := '782D736861646F773A20302030203020347078202363653765303520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(33) := '2D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0D0A2020626F782D736861646F773A203020302030203270782072676261283230362C203132362C20352C20302E3235292C2030203020302031707820';
wwv_flow_api.g_varchar2_table(34) := '2363653765303520696E7365743B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(35) := '63697263756C617220612E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236365376530353B0D0A20207472616E736974696F6E3A20626F782D736861646F77';
wwv_flow_api.g_varchar2_table(36) := '20302E31732C20636F6C6F7220302E31732C206261636B67726F756E642D636F6C6F7220302E33733B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D777261703A686F766572202E742D426164';
wwv_flow_api.g_varchar2_table(37) := '67654C6973742D76616C7565207B0D0A2020626F782D736861646F773A20302030203020347078202363653765303520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20234646463B';
wwv_flow_api.g_varchar2_table(38) := '0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0D0A2020';
wwv_flow_api.g_varchar2_table(39) := '626F782D736861646F773A20302030203020387078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A0D0A2E742D42616467654C6973742D2D626F74746F6D426F72646572207B0D0A2020626F726465722D626F74746F6D2D';
wwv_flow_api.g_varchar2_table(40) := '636F6C6F723A20236661663766313B0D0A7D0D0A0D0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D426F6479';
wwv_flow_api.g_varchar2_table(41) := '202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233736373637363B0D0A7D0D0A2E742D426F64792D7469746C65202E612D4261724368617274202E';
wwv_flow_api.g_varchar2_table(42) := '612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E742D426F64792D696E666F202E612D4261724368617274202E612D42617243686172742D6974656D';
wwv_flow_api.g_varchar2_table(43) := '202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565';
wwv_flow_api.g_varchar2_table(44) := '2C0D0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E612D426172436861';
wwv_flow_api.g_varchar2_table(45) := '7274202E612D42617243686172742D6974656D20696D67207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(46) := '6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172';
wwv_flow_api.g_varchar2_table(47) := '742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172207B0D';
wwv_flow_api.g_varchar2_table(48) := '0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D6D6F64';
wwv_flow_api.g_varchar2_table(49) := '65726E202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E612D4261';
wwv_flow_api.g_varchar2_table(50) := '7243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D66696C6C6564207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(51) := '20236365376530353B0D0A7D0D0A0D0A626F6479207B0D0A20206261636B67726F756E643A20236661663766313B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A61207B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(52) := '426F64792D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20236638663365633B0D0A2020626F726465722D6C6566743A2031707820736F6C6964207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(53) := '426F64792D7469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235342C203235342C203235332C20302E39293B0D0A2020636F6C6F723A20233365336533653B0D0A20202D7765626B69742D6261636B64726F702D66';
wwv_flow_api.g_varchar2_table(54) := '696C7465723A20736174757261746528313830252920626C757228387078293B0D0A7D0D0A2E75692D7769646765742D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F647920';
wwv_flow_api.g_varchar2_table(55) := '2E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233365336533653B0D0A7D';
wwv_flow_api.g_varchar2_table(56) := '0D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C0D0A2E742D427574746F6E52';
wwv_flow_api.g_varchar2_table(57) := '6567696F6E202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D73696465207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F';
wwv_flow_api.g_varchar2_table(58) := '6C6F723A20233337333733373B0D0A7D0D0A2E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D726473';
wwv_flow_api.g_varchar2_table(59) := '2D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236665666566643B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E65722E69732D737475636B207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(60) := '6F756E642D636F6C6F723A2072676261283235342C203235342C203235332C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A2020';
wwv_flow_api.g_varchar2_table(61) := '6261636B67726F756E642D636F6C6F723A20236665666566643B0D0A7D0D0A2E742D426F64792D7469746C652E6A732D6869646542726561646372756D6273207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(62) := '20302E3935293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(63) := '3665363B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202363653765303520696E7365742C20302031707820327078207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(64) := '2E3135293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A686F7665722C0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020636F6C6F723A20236365376530353B0D0A7D0D0A2E742D426F64792D746F7042757474';
wwv_flow_api.g_varchar2_table(65) := '6F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206865696768743A2034';
wwv_flow_api.g_varchar2_table(66) := '3870783B0D0A7D0D0A0D0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0D0A2E617065782D736964652D6E6176202E742D426F64792D7469746C';
wwv_flow_api.g_varchar2_table(67) := '65207B0D0A2020746F703A20343870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D';
wwv_flow_api.g_varchar2_table(68) := '426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D';
wwv_flow_api.g_varchar2_table(69) := '0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F6479';
wwv_flow_api.g_varchar2_table(70) := '2D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D7369';
wwv_flow_api.g_varchar2_table(71) := '64652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A20';
wwv_flow_api.g_varchar2_table(72) := '2020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(73) := '752D52544C202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A0D0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73207B0D0A2020746F70';
wwv_flow_api.g_varchar2_table(74) := '3A20383870783B0D0A7D0D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20383870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A203634307078';
wwv_flow_api.g_varchar2_table(75) := '29207B0D0A20202E617065782D746F702D6E61762E6A732D6D656E754E6176436F6C6C6170736564202E742D4865616465722D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D31303025293B0D';
wwv_flow_api.g_varchar2_table(76) := '0A202020202D6D732D7472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A202020207472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D6E6176207B0D0A';
wwv_flow_api.g_varchar2_table(77) := '202077696474683A2032303070783B0D0A7D0D0A0D0A2E742D426F64792D616374696F6E73207B0D0A202077696474683A2032303070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D426F64792D616374696F6E73202E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(78) := '2D686561646572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0D0A2020747261';
wwv_flow_api.g_varchar2_table(79) := '6E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20202D7765626B69742D7472616E73666F72';
wwv_flow_api.g_varchar2_table(80) := '6D3A207472616E736C617465336428343070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C6174652834307078293B0D0A20207472616E73666F726D3A207472616E736C617465336428343070782C20302C203029';
wwv_flow_api.g_varchar2_table(81) := '3B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D426F64792D73696465207B0D0A2020202077696474683A2032343070783B0D0A20207D0D0A7D0D0A406D';
wwv_flow_api.g_varchar2_table(82) := '65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A202020206C6566743A2034';
wwv_flow_api.g_varchar2_table(83) := '3870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A3A6E6F74282E752D52544C29202E617065782D7369';
wwv_flow_api.g_varchar2_table(84) := '64652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E64656420';
wwv_flow_api.g_varchar2_table(85) := '2E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D';
wwv_flow_api.g_varchar2_table(86) := '0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283135327078293B0D0A20207472616E73666F726D3A207472';
wwv_flow_api.g_varchar2_table(87) := '616E736C61746533642831353270782C20302C2030293B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20202D7765626B69742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(88) := '3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3135327078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D31353270782C20';
wwv_flow_api.g_varchar2_table(89) := '302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564';
wwv_flow_api.g_varchar2_table(90) := '202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D7369';
wwv_flow_api.g_varchar2_table(91) := '64652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870';
wwv_flow_api.g_varchar2_table(92) := '616E646564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(93) := '6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870';
wwv_flow_api.g_varchar2_table(94) := '616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E20';
wwv_flow_api.g_varchar2_table(95) := '7B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020202D7765626B';
wwv_flow_api.g_varchar2_table(96) := '69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C';
wwv_flow_api.g_varchar2_table(97) := '61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020202D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(98) := '726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32';
wwv_flow_api.g_varchar2_table(99) := '303070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E74';
wwv_flow_api.g_varchar2_table(100) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E617645';
wwv_flow_api.g_varchar2_table(101) := '7870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(102) := '76457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870';
wwv_flow_api.g_varchar2_table(103) := '616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020207472616E73666F726D3A206E6F6E652021696D706F7274616E743B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E6170';
wwv_flow_api.g_varchar2_table(104) := '65782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E752D';
wwv_flow_api.g_varchar2_table(105) := '52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A2020';
wwv_flow_api.g_varchar2_table(106) := '7D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C';
wwv_flow_api.g_varchar2_table(107) := '6566743A2034343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020';
wwv_flow_api.g_varchar2_table(108) := '206D617267696E2D72696768743A2034343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(109) := '792D636F6E74656E742C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73';
wwv_flow_api.g_varchar2_table(110) := '666F726D3A206E6F6E653B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D';
wwv_flow_api.g_varchar2_table(111) := '50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74';
wwv_flow_api.g_varchar2_table(112) := '656E742C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D';
wwv_flow_api.g_varchar2_table(113) := '0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A203230307078';
wwv_flow_api.g_varchar2_table(114) := '3B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070';
wwv_flow_api.g_varchar2_table(115) := '783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768';
wwv_flow_api.g_varchar2_table(116) := '743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2030';
wwv_flow_api.g_varchar2_table(117) := '3B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D6172';
wwv_flow_api.g_varchar2_table(118) := '67696E2D6C6566743A2031353270783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B';
wwv_flow_api.g_varchar2_table(119) := '0D0A202020206D617267696E2D72696768743A2031353270783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E';
wwv_flow_api.g_varchar2_table(120) := '742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C';
wwv_flow_api.g_varchar2_table(121) := '656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20343870783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B0D0A2020';
wwv_flow_api.g_varchar2_table(122) := '20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(123) := '207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B0D0A202020202D7765626B69742D';
wwv_flow_api.g_varchar2_table(124) := '7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C61';
wwv_flow_api.g_varchar2_table(125) := '74653364282D32303070782C20302C2030293B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A2020202074';
wwv_flow_api.g_varchar2_table(126) := '72616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E';
wwv_flow_api.g_varchar2_table(127) := '207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61';
wwv_flow_api.g_varchar2_table(128) := '696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E';
wwv_flow_api.g_varchar2_table(129) := '742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(130) := '792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D42';
wwv_flow_api.g_varchar2_table(131) := '6F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F77';
wwv_flow_api.g_varchar2_table(132) := '4C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E';
wwv_flow_api.g_varchar2_table(133) := '742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A202020202D6D732D7472';
wwv_flow_api.g_varchar2_table(134) := '616E73666F726D3A207472616E736C617465283135327078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A';
wwv_flow_api.g_varchar2_table(135) := '732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C20';
wwv_flow_api.g_varchar2_table(136) := '30293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3135327078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A20207D0D0A20203A6E6F74282E';
wwv_flow_api.g_varchar2_table(137) := '752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52';
wwv_flow_api.g_varchar2_table(138) := '544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E75';
wwv_flow_api.g_varchar2_table(139) := '2D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69742D7472616E73666F726D3A20747261';
wwv_flow_api.g_varchar2_table(140) := '6E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030';
wwv_flow_api.g_varchar2_table(141) := '293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69742D7472';
wwv_flow_api.g_varchar2_table(142) := '616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C617465';
wwv_flow_api.g_varchar2_table(143) := '3364282D32303070782C20302C2030293B0D0A20207D0D0A7D0D0A0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C61';
wwv_flow_api.g_varchar2_table(144) := '70736564202E742D426F64792D6E6176202E742D547265654E6176207B0D0A202077696474683A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64';
wwv_flow_api.g_varchar2_table(145) := '792D636F6E74656E742C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(146) := '6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F';
wwv_flow_api.g_varchar2_table(147) := '64792D636F6E74656E742C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61';
wwv_flow_api.g_varchar2_table(148) := '70736564202E742D426F64792D73696465207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E617065782D';
wwv_flow_api.g_varchar2_table(149) := '736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A202020202D6D732D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(150) := '3A207472616E736C61746558282D34387078293B0D0A202020207472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365';
wwv_flow_api.g_varchar2_table(151) := '64202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465582834387078293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465582834387078293B0D0A202020';
wwv_flow_api.g_varchar2_table(152) := '207472616E73666F726D3A207472616E736C617465582834387078293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A2020';
wwv_flow_api.g_varchar2_table(153) := '3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61';
wwv_flow_api.g_varchar2_table(154) := '70736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469';
wwv_flow_api.g_varchar2_table(155) := '746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564';
wwv_flow_api.g_varchar2_table(156) := '202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20203A6E6F';
wwv_flow_api.g_varchar2_table(157) := '74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C656674';
wwv_flow_api.g_varchar2_table(158) := '3A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D';
wwv_flow_api.g_varchar2_table(159) := '617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(160) := '6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E';
wwv_flow_api.g_varchar2_table(161) := '742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D746974';
wwv_flow_api.g_varchar2_table(162) := '6C65207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A2020202072696768743A2034387078';
wwv_flow_api.g_varchar2_table(163) := '3B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D61726769';
wwv_flow_api.g_varchar2_table(164) := '6E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D61';
wwv_flow_api.g_varchar2_table(165) := '7267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74';
wwv_flow_api.g_varchar2_table(166) := '656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E74';
wwv_flow_api.g_varchar2_table(167) := '2D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E';
wwv_flow_api.g_varchar2_table(168) := '6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D';
wwv_flow_api.g_varchar2_table(169) := '6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F6479';
wwv_flow_api.g_varchar2_table(170) := '2D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0D0A3A6E6F74282E752D52544C';
wwv_flow_api.g_varchar2_table(171) := '29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20202D6D73';
wwv_flow_api.g_varchar2_table(172) := '2D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D7269';
wwv_flow_api.g_varchar2_table(173) := '676874457870616E646564202E742D426F64792D6D61696E2C0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20202D7765626B69742D7472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(174) := '72616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A20207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B';
wwv_flow_api.g_varchar2_table(175) := '0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C6566';
wwv_flow_api.g_varchar2_table(176) := '74202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0D0A202020207472616E73666F726D3A206E';
wwv_flow_api.g_varchar2_table(177) := '6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267';
wwv_flow_api.g_varchar2_table(178) := '696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A2020';
wwv_flow_api.g_varchar2_table(179) := '20206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F6479';
wwv_flow_api.g_varchar2_table(180) := '2D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F6479';
wwv_flow_api.g_varchar2_table(181) := '2D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E74';
wwv_flow_api.g_varchar2_table(182) := '2D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(183) := '792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(184) := '2D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C';
wwv_flow_api.g_varchar2_table(185) := '6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A73';
wwv_flow_api.g_varchar2_table(186) := '2D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E742D50';
wwv_flow_api.g_varchar2_table(187) := '616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A7D0D';
wwv_flow_api.g_varchar2_table(188) := '0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(189) := '2D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D5061';
wwv_flow_api.g_varchar2_table(190) := '6765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765';
wwv_flow_api.g_varchar2_table(191) := '426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6E6176207B0D0A202020';
wwv_flow_api.g_varchar2_table(192) := '207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D746974';
wwv_flow_api.g_varchar2_table(193) := '6C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D746974';
wwv_flow_api.g_varchar2_table(194) := '6C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D';
wwv_flow_api.g_varchar2_table(195) := '2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365';
wwv_flow_api.g_varchar2_table(196) := '642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20';
wwv_flow_api.g_varchar2_table(197) := '393932707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A';
wwv_flow_api.g_varchar2_table(198) := '20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29';
wwv_flow_api.g_varchar2_table(199) := '202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D72696768';
wwv_flow_api.g_varchar2_table(200) := '74457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D';
wwv_flow_api.g_varchar2_table(201) := '0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E742D';
wwv_flow_api.g_varchar2_table(202) := '50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564';
wwv_flow_api.g_varchar2_table(203) := '2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D42';
wwv_flow_api.g_varchar2_table(204) := '6F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C61746528323030707829';
wwv_flow_api.g_varchar2_table(205) := '3B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C6566';
wwv_flow_api.g_varchar2_table(206) := '74202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20343870782021696D706F7274616E743B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D5061';
wwv_flow_api.g_varchar2_table(207) := '6765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A203070782021696D706F7274616E743B0D0A2020202072696768743A20343870782021696D706F7274616E743B0D0A20207D0D';
wwv_flow_api.g_varchar2_table(208) := '0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A203070783B0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874436F6C';
wwv_flow_api.g_varchar2_table(209) := '6C6170736564202E742D426F64792D7469746C65207B0D0A202072696768743A203070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D616374696F6E73';
wwv_flow_api.g_varchar2_table(210) := '207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A20207472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(211) := '207472616E736C61746533642832303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D616374696F6E73207B0D0A20202D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(212) := '6E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32';
wwv_flow_api.g_varchar2_table(213) := '303070782C20302C2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792D2D73686F774C656674';
wwv_flow_api.g_varchar2_table(214) := '202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A';
wwv_flow_api.g_varchar2_table(215) := '202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D636F6E74656E74496E6E6572207B0D0A20206D617267696E3A2030206175746F3B0D0A20206D61782D77696474683A20313030253B0D0A7D';
wwv_flow_api.g_varchar2_table(216) := '0D0A0D0A2E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A20726762612835352C2035352C2035352C20302E3735293B0D0A7D0D0A2E742D42726561646372756D622D6974656D2C0D0A2E742D42726561646372';
wwv_flow_api.g_varchar2_table(217) := '756D622D6974656D2061207B0D0A2020636F6C6F723A20233661366136613B0D0A7D0D0A2E742D42726561646372756D622D6974656D20613A686F7665722C0D0A2E742D42726561646372756D622D6974656D20613A666F637573207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(218) := '6F723A20236266306230353B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D426F64792D7469746C652D736872696E6B202E742D42726561646372756D62';
wwv_flow_api.g_varchar2_table(219) := '526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D426F64792D7469746C652D736872696E6B202E742D42726561646372756D62526567696F6E2D2D';
wwv_flow_api.g_varchar2_table(220) := '757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D7769';
wwv_flow_api.g_varchar2_table(221) := '6474683A20363430707829207B0D0A20202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A20202020636F6C6F723A20233337';
wwv_flow_api.g_varchar2_table(222) := '333733373B0D0A20207D0D0A7D0D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F766572207B0D0A2020636F6C6F723A20236365376530353B0D0A7D0D0A2E742D42726561646372756D62526567696F6E2D2D757365427265';
wwv_flow_api.g_varchar2_table(223) := '61646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(224) := '0A2E742D427574746F6E2C0D0A2E612D427574746F6E207B0D0A2020626F726465723A206E6F6E653B0D0A2020746578742D736861646F773A206E6F6E653B0D0A2020626F726465722D7261646975733A203270783B0D0A20207472616E736974696F6E';
wwv_flow_api.g_varchar2_table(225) := '3A206261636B67726F756E642D636F6C6F7220302E327320656173652C20626F782D736861646F7720302E327320656173652C20636F6C6F7220302E327320656173653B0D0A7D0D0A2E742D427574746F6E202E742D49636F6E2C0D0A2E612D42757474';
wwv_flow_api.g_varchar2_table(226) := '6F6E202E742D49636F6E207B0D0A20207472616E736974696F6E3A20696E68657269743B0D0A7D0D0A2E742D427574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F7665722C0D0A2E742D427574746F6E3A666F6375732C0D0A2E612D4275';
wwv_flow_api.g_varchar2_table(227) := '74746F6E3A666F637573207B0D0A20207A2D696E6465783A203130303B0D0A20206F75746C696E653A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6265666F72652C0D0A2E612D427574746F6E3A666F';
wwv_flow_api.g_varchar2_table(228) := '6375733A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(229) := '30203020317078202363653765303520696E7365742021696D706F7274616E743B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E3A666F637573';
wwv_flow_api.g_varchar2_table(230) := '3A6163746976653A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F7265207B';
wwv_flow_api.g_varchar2_table(231) := '0D0A20206F7061636974793A20303B0D0A7D0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572293A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D';
wwv_flow_api.g_varchar2_table(232) := '427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572292E69732D616374697665207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E31352920696E7365742C';
wwv_flow_api.g_varchar2_table(233) := '20302032707820327078207267626128302C20302C20302C20302E312920696E7365742021696D706F7274616E743B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C65';
wwv_flow_api.g_varchar2_table(234) := '2E726164696F2D67726F757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F757020696E7075743A636865636B6564202B206C6162656C207B0D0A20';
wwv_flow_api.g_varchar2_table(235) := '206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D67726F7570206C6162656C';
wwv_flow_api.g_varchar2_table(236) := '2C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F7570206C6162656C207B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E327320656173652C20626F782D736861646F';
wwv_flow_api.g_varchar2_table(237) := '7720302E327320656173652C20636F6C6F7220302E327320656173653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D67726F7570206C6162656C3A66';
wwv_flow_api.g_varchar2_table(238) := '697273742D6F662D747970652C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F7570206C6162656C3A66697273742D6F662D74797065207B0D0A2020626F726465722D7261646975733A203270782030203020';
wwv_flow_api.g_varchar2_table(239) := '3270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D67726F7570206C6162656C3A6C6173742D6F662D747970652C0D0A2E617065782D627574746F';
wwv_flow_api.g_varchar2_table(240) := '6E2D67726F7570207461626C652E726164696F2D67726F7570206C6162656C3A6C6173742D6F662D74797065207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461';
wwv_flow_api.g_varchar2_table(241) := '696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D67726F7570206C6162656C3A6F6E6C792D6F662D747970652C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F7570206C';
wwv_flow_api.g_varchar2_table(242) := '6162656C3A6F6E6C792D6F662D74797065207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A0D0A2E612D427574746F6E3A6265666F72652C0D0A2E742D427574746F6E3A6265666F72652C0D0A2E612D427574746F6E3A616674';
wwv_flow_api.g_varchar2_table(243) := '65722C0D0A2E742D427574746F6E3A6166746572207B0D0A2020636F6E74656E743A2027273B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A20303B0D0A20206C6566743A20303B0D0A202077696474683A20313030253B';
wwv_flow_api.g_varchar2_table(244) := '0D0A20206865696768743A20313030253B0D0A2020626F726465722D7261646975733A20696E68657269743B0D0A20206F7061636974793A20303B0D0A20207472616E736974696F6E3A202E327320656173653B0D0A7D0D0A2E612D427574746F6E3A62';
wwv_flow_api.g_varchar2_table(245) := '65666F72652C0D0A2E742D427574746F6E3A6265666F7265207B0D0A20207A2D696E6465783A20313B0D0A7D0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A6166746572207B0D0A20207A2D696E6465783A202D313B0D0A20';
wwv_flow_api.g_varchar2_table(246) := '20626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E303735293B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A616674';
wwv_flow_api.g_varchar2_table(247) := '65722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E612D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C';
wwv_flow_api.g_varchar2_table(248) := '696E6B293A686F7665723A6166746572207B0D0A20206F7061636974793A20313B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A6163746976653A61667465722C0D0A2E74';
wwv_flow_api.g_varchar2_table(249) := '2D427574746F6E3A666F6375733A6163746976653A6166746572207B0D0A20206F7061636974793A20303B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A61667465';
wwv_flow_api.g_varchar2_table(250) := '722C0D0A2E742D427574746F6E3A666F6375733A6166746572207B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A2020626F782D736861646F773A2030203020317078203170782072676261283230362C203132362C2035';
wwv_flow_api.g_varchar2_table(251) := '2C20302E3235293B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E707574202B206C6162656C2C0D0A2E617065782D627574746F';
wwv_flow_api.g_varchar2_table(252) := '6E2D67726F757020696E707574202B206C6162656C2C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292C0D0A2E612D427574746F6E207B0D0A2020636F6C6F723A20233338333833383B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(253) := '756E642D636F6C6F723A20236638663866383B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D';
wwv_flow_api.g_varchar2_table(254) := '2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E707574202B206C6162656C3A686F7665722C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A686F7665722C0D0A2E74';
wwv_flow_api.g_varchar2_table(255) := '2D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A2E612D427574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(256) := '3A20302030203020317078207267626128302C20302C20302C20302E31352920696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F';
wwv_flow_api.g_varchar2_table(257) := '20696E707574202B206C6162656C3A666F6375732C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A666F6375732C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A666F63';
wwv_flow_api.g_varchar2_table(258) := '75732C0D0A2E612D427574746F6E3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E61';
wwv_flow_api.g_varchar2_table(259) := '7065782D6974656D2D726164696F20696E707574202B206C6162656C2E69732D6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2E69732D6163746976652C0D0A2E742D427574746F6E3A6E6F7428';
wwv_flow_api.g_varchar2_table(260) := '2E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A2E612D427574746F6E2E69732D6163746976652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D';
wwv_flow_api.g_varchar2_table(261) := '6974656D2D726164696F20696E707574202B206C6162656C3A6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(262) := '2D73696D706C65293A6163746976652C0D0A2E612D427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F';
wwv_flow_api.g_varchar2_table(263) := '427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E7075743A616374697665202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D69';
wwv_flow_api.g_varchar2_table(264) := '74656D2D726164696F20696E7075743A666F637573202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A616374697665202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A66';
wwv_flow_api.g_varchar2_table(265) := '6F637573202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202363653765303520696E7365742021696D706F7274616E743B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D466F726D2D6669656C';
wwv_flow_api.g_varchar2_table(266) := '64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B';
wwv_flow_api.g_varchar2_table(267) := '6564202B206C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A2020636F6C6F723A20233338333833383B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(268) := '20302E31352920696E7365742C20302032707820327078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A0D0A2E612D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F';
wwv_flow_api.g_varchar2_table(269) := '6E2D2D73696D706C65292C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072';
wwv_flow_api.g_varchar2_table(270) := '696D617279207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D686F743A6E';
wwv_flow_api.g_varchar2_table(271) := '6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0D0A626F6479202E75692D7374617465';
wwv_flow_api.g_varchar2_table(272) := '2D64656661756C742E75692D7072696F726974792D7072696D6172793A686F7665722C0D0A2E612D427574746F6E2D2D686F743A6E6F74283A616374697665293A666F6375732C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F';
wwv_flow_api.g_varchar2_table(273) := '6E2D2D73696D706C65293A6E6F74283A616374697665293A666F6375732C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6E6F74283A616374697665293A666F6375732C0D';
wwv_flow_api.g_varchar2_table(274) := '0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236537386430363B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(275) := '612D427574746F6E2D2D686F743A6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D62757474';
wwv_flow_api.g_varchar2_table(276) := '6F6E2E75692D627574746F6E2D2D686F743A6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0D0A2E612D427574746F6E2D2D686F742E69732D616374';
wwv_flow_api.g_varchar2_table(277) := '6976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D';
wwv_flow_api.g_varchar2_table(278) := '686F742E69732D6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236235366630343B';
wwv_flow_api.g_varchar2_table(279) := '0D0A7D0D0A0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574';
wwv_flow_api.g_varchar2_table(280) := '746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D7369';
wwv_flow_api.g_varchar2_table(281) := '6D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236663646337633B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A';
wwv_flow_api.g_varchar2_table(282) := '6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E';
wwv_flow_api.g_varchar2_table(283) := '2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(284) := '756E642D636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(285) := '236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D737563636573';
wwv_flow_api.g_varchar2_table(286) := '733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233030626133343B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(287) := '2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D7369';
wwv_flow_api.g_varchar2_table(288) := '6D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D';
wwv_flow_api.g_varchar2_table(289) := '616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(290) := '2D686F7429207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A';
wwv_flow_api.g_varchar2_table(291) := '2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(292) := '723A20236538346634633B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74';
wwv_flow_api.g_varchar2_table(293) := '282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574';
wwv_flow_api.g_varchar2_table(294) := '746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A';
wwv_flow_api.g_varchar2_table(295) := '6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233230313330313B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E';
wwv_flow_api.g_varchar2_table(296) := '2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20';
wwv_flow_api.g_varchar2_table(297) := '206261636B67726F756E642D636F6C6F723A20236664653362623B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D42';
wwv_flow_api.g_varchar2_table(298) := '7574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(299) := '2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236664643961323B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E';
wwv_flow_api.g_varchar2_table(300) := '742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(301) := '2D7761726E696E6729207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20';
wwv_flow_api.g_varchar2_table(302) := '302E3132352920696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D6172';
wwv_flow_api.g_varchar2_table(303) := '79293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74';
wwv_flow_api.g_varchar2_table(304) := '282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A666F6375732C0D0A';
wwv_flow_api.g_varchar2_table(305) := '2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(306) := '73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E74';
wwv_flow_api.g_varchar2_table(307) := '2D427574746F6E2D2D686F74207B0D0A2020626F782D736861646F773A20302030203020317078202363653765303520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(308) := '73696D706C652E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20236365376530353B0D0A7D0D0A2E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(309) := '696D706C652E742D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E';
wwv_flow_api.g_varchar2_table(310) := '69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F76';
wwv_flow_api.g_varchar2_table(311) := '6572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D61637469';
wwv_flow_api.g_varchar2_table(312) := '7665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A202062';
wwv_flow_api.g_varchar2_table(313) := '6F782D736861646F773A20302030203020317078202366646439613220696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072';
wwv_flow_api.g_varchar2_table(314) := '696D6172793A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(315) := '6F723A20236661613532363B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E74';
wwv_flow_api.g_varchar2_table(316) := '2D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429';
wwv_flow_api.g_varchar2_table(317) := '2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236664643961323B0D0A2020636F6C6F723A20233230313330313B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172';
wwv_flow_api.g_varchar2_table(318) := '793A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F63757320';
wwv_flow_api.g_varchar2_table(319) := '2E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A2023323031';
wwv_flow_api.g_varchar2_table(320) := '3330313B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A2030203020302031707820236662636534';
wwv_flow_api.g_varchar2_table(321) := '6120696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292C0D';
wwv_flow_api.g_varchar2_table(322) := '0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130343B0D0A7D0D0A2E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(323) := '2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574';
wwv_flow_api.g_varchar2_table(324) := '746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(325) := '636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F766572';
wwv_flow_api.g_varchar2_table(326) := '202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C65';
wwv_flow_api.g_varchar2_table(327) := '2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(328) := '652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202365353339333520696E7365743B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(329) := '3A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(330) := '64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236535333933353B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E';
wwv_flow_api.g_varchar2_table(331) := '742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D';
wwv_flow_api.g_varchar2_table(332) := '706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(333) := '3B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574';
wwv_flow_api.g_varchar2_table(334) := '746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F';
wwv_flow_api.g_varchar2_table(335) := '74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(336) := '6F7429207B0D0A2020626F782D736861646F773A20302030203020317078202330306130326420696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D';
wwv_flow_api.g_varchar2_table(337) := '427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F';
wwv_flow_api.g_varchar2_table(338) := '6E207B0D0A2020636F6C6F723A20233030613032643B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(339) := '2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(340) := '74746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D42757474';
wwv_flow_api.g_varchar2_table(341) := '6F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(342) := '6F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A202063';
wwv_flow_api.g_varchar2_table(343) := '6F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E';
wwv_flow_api.g_varchar2_table(344) := '6F55493A6E6F74283A686F766572293A6E6F74283A666F637573293A6E6F74282E69732D61637469766529207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(345) := '74746F6E2D2D6E6F55493A666F6375732C0D0A2E742D427574746F6E2D2D6E6F55492E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A666F63';
wwv_flow_api.g_varchar2_table(346) := '75733A686F766572207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(347) := '642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A2020626F782D736861646F773A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B3A686F766572207B0D0A202074657874';
wwv_flow_api.g_varchar2_table(348) := '2D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2C0D0A2E742D427574746F6E2D2D6C696E6B202E742D49636F6E207B0D0A2020636F6C6F723A20236266306230353B0D';
wwv_flow_api.g_varchar2_table(349) := '0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20236365376530353B0D0A7D0D';
wwv_flow_api.g_varchar2_table(350) := '0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(351) := '2D7072696D617279202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0D0A2020636F6C6F723A20236661613532362021696D706F7274616E743B0D0A7D0D0A0D0A2E';
wwv_flow_api.g_varchar2_table(352) := '742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D776172';
wwv_flow_api.g_varchar2_table(353) := '6E696E67202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130342021696D706F7274616E743B0D0A7D0D0A0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(354) := '74746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572202E74';
wwv_flow_api.g_varchar2_table(355) := '2D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E676572202E742D49636F6E207B0D0A2020636F6C6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F';
wwv_flow_api.g_varchar2_table(356) := '55492E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E';
wwv_flow_api.g_varchar2_table(357) := '2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0D0A2020636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E';
wwv_flow_api.g_varchar2_table(358) := '67202E742D427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0D0A2020626F726465722D7261646975733A2032';
wwv_flow_api.g_varchar2_table(359) := '70783B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163';
wwv_flow_api.g_varchar2_table(360) := '746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202366616135323620696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465';
wwv_flow_api.g_varchar2_table(361) := '723A686F7665722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(362) := '3A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(363) := '742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267';
wwv_flow_api.g_varchar2_table(364) := '626128302C20302C20302C20302E34293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235';
wwv_flow_api.g_varchar2_table(365) := '293B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A20206D696E2D77696474683A20333270783B0D0A7D0D0A2E742D427574746F6E2E742D427574';
wwv_flow_api.g_varchar2_table(366) := '746F6E2D2D686561646572547265653A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202366616135323620696E7365743B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474';
wwv_flow_api.g_varchar2_table(367) := '683A20343830707829207B0D0A20202E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A202020206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A20207D0D0A7D0D';
wwv_flow_api.g_varchar2_table(368) := '0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465725269676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236638663365633B0D0A2020626F726465723A2031707820736F6C696420236561646363373B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(369) := '742D427574746F6E2E742D427574746F6E2D2D68656164657252696768743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236561646363373B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252';
wwv_flow_api.g_varchar2_table(370) := '696768743A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D427574746F6E2D2D6E6176426172202E';
wwv_flow_api.g_varchar2_table(371) := '742D427574746F6E2D6261646765207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0D0A7D0D0A2E742D427574746F6E2D2D68656C';
wwv_flow_api.g_varchar2_table(372) := '70427574746F6E202E612D49636F6E207B0D0A20206F7061636974793A202E353B0D0A7D0D0A0D0A2E742D4865616465722D6E6176426172202E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A2020626F726465722D626F74';
wwv_flow_api.g_varchar2_table(373) := '746F6D2D72696768742D7261646975733A20303B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233833353030333B0D0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(374) := '663B0D0A7D0D0A0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F';
wwv_flow_api.g_varchar2_table(375) := '6E2D2D73696D706C65202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(376) := '6C652E742D427574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73756363657373202E66613A616674';
wwv_flow_api.g_varchar2_table(377) := '65722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A7D0D0A0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(378) := '74746F6E2D2D7072696D617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(379) := '20236664643961323B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B';
wwv_flow_api.g_varchar2_table(380) := '0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F7665';
wwv_flow_api.g_varchar2_table(381) := '72202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A7D0D0A0D0A2E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20';
wwv_flow_api.g_varchar2_table(382) := '20636F6C6F723A20233430343034303B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(383) := '3B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D77697A6172642C0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(384) := '742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469';
wwv_flow_api.g_varchar2_table(385) := '746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F';
wwv_flow_api.g_varchar2_table(386) := '6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D696E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65';
wwv_flow_api.g_varchar2_table(387) := '207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0D0A2E742D427574746F6E52656769';
wwv_flow_api.g_varchar2_table(388) := '6F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D42757474';
wwv_flow_api.g_varchar2_table(389) := '6F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A0D0A2E66632E75692D776964676574207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(390) := '642D636F6C6F723A20236666666666663B0D0A7D0D0A2E66632D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(391) := '722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E66632D746F6F6C6261722068322C0D0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0D0A2E6663202E66632D6461792D6E756D626572';
wwv_flow_api.g_varchar2_table(392) := '207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0D0A2E66632D76696577202E75692D7769646765742D686561646572207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(393) := '6E642D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233236323632363B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A6469762E66632D6167656E64614C697374207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(394) := '642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0D0A20';
wwv_flow_api.g_varchar2_table(395) := '206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020636F6C6F723A20233236323632363B0D0A2020626F726465722D636F6C6F723A20236661666166613B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64617920';
wwv_flow_api.g_varchar2_table(396) := '7B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64617465207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E6663202E66632D6167656E64614C697374202E66632D657665';
wwv_flow_api.g_varchar2_table(397) := '6E742D73746172742D74696D652C0D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D616C6C2D646179207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A626F6479202E66632074642E66632D746F6461792C0D';
wwv_flow_api.g_varchar2_table(398) := '0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74';
wwv_flow_api.g_varchar2_table(399) := '656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(400) := '6465722D636F6C6F723A20236661666166613B0D0A7D0D0A0D0A2E742D436172642D77726170207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D436172642D777261703A666F637573207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(401) := '6F6C6F723A20236365376530353B0D0A7D0D0A2E742D436172642D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436172642D64657363207B0D0A2020636F6C6F723A20233430343034303B0D0A';
wwv_flow_api.g_varchar2_table(402) := '7D0D0A2E742D43617264732D2D636F6D70616374202E742D436172642D77726170207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6D70616374202E742D436172642D64657363';
wwv_flow_api.g_varchar2_table(403) := '207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436172642D696E666F207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436172642D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A';
wwv_flow_api.g_varchar2_table(404) := '7D0D0A2E742D43617264202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D77726170207B0D0A20206261';
wwv_flow_api.g_varchar2_table(405) := '636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C6557726170207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(406) := '663B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D777261702C0D0A2E742D436172642D2D6665617475726564202E742D436172642D77726170207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(407) := '723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0D0A2E742D436172642D2D6665617475726564202E742D436172642D626F6479207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(408) := '6F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D436C617373696343616C65';
wwv_flow_api.g_varchar2_table(409) := '6E6461722D646179436F6C756D6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A2020';
wwv_flow_api.g_varchar2_table(410) := '636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E6973';
wwv_flow_api.g_varchar2_table(411) := '2D696E616374697665202E742D436C617373696343616C656E6461722D64617465207B0D0A20206F7061636974793A202E353B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0D0A2E742D436C617373';
wwv_flow_api.g_varchar2_table(412) := '696343616C656E6461722D6461792E69732D696E616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C';
wwv_flow_api.g_varchar2_table(413) := '617373696343616C656E6461722D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D64617465207B0D';
wwv_flow_api.g_varchar2_table(414) := '0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C617373696343616C656E64';
wwv_flow_api.g_varchar2_table(415) := '61722D6576656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(416) := '723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E74';
wwv_flow_api.g_varchar2_table(417) := '2D436C617373696343616C656E6461722D74696D65436F6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C61737369634361';
wwv_flow_api.g_varchar2_table(418) := '6C656E6461722D6461794576656E74732C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(419) := '742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E747320612C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E';
wwv_flow_api.g_varchar2_table(420) := '6461722D6461794576656E74732061207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E74';
wwv_flow_api.g_varchar2_table(421) := '2D436C617373696343616C656E6461722D6461792E69732D746F6461792C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(422) := '726F756E642D636F6C6F723A20236665656464343B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C697374207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C617373696343616C656E646172';
wwv_flow_api.g_varchar2_table(423) := '2D6C6973745469746C652C0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C697374546974';
wwv_flow_api.g_varchar2_table(424) := '6C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(425) := '3430343034303B0D0A7D0D0A2E742D436F6D6D656E74732D7573657249636F6E2C0D0A2E742D436F6D6D656E74732D75736572496D67207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D436F6D6D656E74732D757365';
wwv_flow_api.g_varchar2_table(426) := '7249636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233539353935393B0D0A7D0D0A2E742D436F6D6D656E74732D696E666F207B0D0A2020636F6C6F723A20233632363236323B0D0A';
wwv_flow_api.g_varchar2_table(427) := '7D0D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(428) := '6F6C6F723A20236662666266623B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A2020626F726465722D636F6C6F723A20236532653265323B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D';
wwv_flow_api.g_varchar2_table(429) := '6D656E74732D696E666F3A6166746572207B0D0A2020626F726465722D636F6C6F723A2072676261283234382C203234382C203234382C2030293B0D0A2020626F726465722D72696768742D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(430) := '6F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2072676261283233322C203233322C203233322C2030293B0D0A2020626F726465722D72696768742D636F6C';
wwv_flow_api.g_varchar2_table(431) := '6F723A20236532653265323B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(432) := '6975733A2030203020327078203270783B0D0A2020626F726465722D636F6C6F723A20236532653265323B0D0A7D0D0A2E742D436F6E66696750616E656C2D61626F7574207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663765303B';
wwv_flow_api.g_varchar2_table(433) := '0D0A2020636F6C6F723A20233536353635363B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D';
wwv_flow_api.g_varchar2_table(434) := '0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A7D0D0A2E742D436F6E66696750616E65';
wwv_flow_api.g_varchar2_table(435) := '6C2D69636F6E2E69732D64697361626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A7D0D0A2E742D436F6E66696750616E656C2D73657474696E672C0D0A2E742D436F6E66696750616E656C2D7374617475';
wwv_flow_api.g_varchar2_table(436) := '73207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0D';
wwv_flow_api.g_varchar2_table(437) := '0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D';
wwv_flow_api.g_varchar2_table(438) := '0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A2E742D4469616C6F67207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E';
wwv_flow_api.g_varchar2_table(439) := '742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C626172';
wwv_flow_api.g_varchar2_table(440) := '2D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236233623362333B0D0A7D0D0A2E742D4469616C6F673A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(441) := '636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D466F6F7465722D746F70427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233661366136613B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(442) := '466F6F7465722D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202363653765303520696E7365743B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E65723A6265666F7265207B';
wwv_flow_api.g_varchar2_table(443) := '0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D2C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578';
wwv_flow_api.g_varchar2_table(444) := '745F6669656C642C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265612C0D0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(445) := '2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C792C0D0A2E742D466F726D2D696E707574436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(446) := '20696E7075742E706F7075705F6C6F762C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742C0D0A2E752D54462D6974656D2D2D746578742C0D0A2E752D54462D6974656D2D2D74657874617265612C0D0A2E752D54462D69';
wwv_flow_api.g_varchar2_table(447) := '74656D2D2D646174657069636B65722C0D0A2E752D54462D6974656D2D2D73656C656374207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020636F6C6F723A20233339333933393B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(448) := '3A20236639663966393B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D2E617065782D706167652D6974656D2D6572';
wwv_flow_api.g_varchar2_table(449) := '726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E7061';
wwv_flow_api.g_varchar2_table(450) := '7373776F72642E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265612E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F72';
wwv_flow_api.g_varchar2_table(451) := '6D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C792E6170';
wwv_flow_api.g_varchar2_table(452) := '65782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E74';
wwv_flow_api.g_varchar2_table(453) := '61696E65722073656C6563742E617065782D706167652D6974656D2D6572726F722C0D0A2E752D54462D6974656D2D2D746578742E617065782D706167652D6974656D2D6572726F722C0D0A2E752D54462D6974656D2D2D74657874617265612E617065';
wwv_flow_api.g_varchar2_table(454) := '782D706167652D6974656D2D6572726F722C0D0A2E752D54462D6974656D2D2D646174657069636B65722E617065782D706167652D6974656D2D6572726F722C0D0A2E752D54462D6974656D2D2D73656C6563742E617065782D706167652D6974656D2D';
wwv_flow_api.g_varchar2_table(455) := '6572726F72207B0D0A2020626F726465722D636F6C6F723A20236562363536323B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D2E617065782D706167652D6974656D2D6572726F72';
wwv_flow_api.g_varchar2_table(456) := '3A72657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D46';
wwv_flow_api.g_varchar2_table(457) := '6F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207465787461';
wwv_flow_api.g_varchar2_table(458) := '7265612E74657874617265612E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722E617065782D70616765';
wwv_flow_api.g_varchar2_table(459) := '2D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C792E617065782D706167652D6974656D2D6572726F723A72657175697265643A';
wwv_flow_api.g_varchar2_table(460) := '76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F';
wwv_flow_api.g_varchar2_table(461) := '6E7461696E65722073656C6563742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E752D54462D6974656D2D2D746578742E617065782D706167652D6974656D2D6572726F723A72657175697265643A';
wwv_flow_api.g_varchar2_table(462) := '76616C69642C0D0A2E752D54462D6974656D2D2D74657874617265612E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E752D54462D6974656D2D2D646174657069636B65722E617065782D706167652D';
wwv_flow_api.g_varchar2_table(463) := '6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E752D54462D6974656D2D2D73656C6563742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C6964207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(464) := '3A20236466646664663B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F66';
wwv_flow_api.g_varchar2_table(465) := '69656C643A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A';
wwv_flow_api.g_varchar2_table(466) := '666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A666F63';
wwv_flow_api.g_varchar2_table(467) := '75732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563743A666F6375732C0D0A2E752D54462D6974656D';
wwv_flow_api.g_varchar2_table(468) := '2D2D746578743A666F6375732C0D0A2E752D54462D6974656D2D2D74657874617265613A666F6375732C0D0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375732C0D0A2E752D54462D6974656D2D2D73656C6563743A666F63757320';
wwv_flow_api.g_varchar2_table(469) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A2020626F726465722D636F6C6F723A20236365376530352021696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D696E707574436F6E';
wwv_flow_api.g_varchar2_table(470) := '7461696E657220696E7075745B747970653D2274657874225D3A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A666F6375733A3A2D6D732D76616C75';
wwv_flow_api.g_varchar2_table(471) := '652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265';
wwv_flow_api.g_varchar2_table(472) := '613A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E';
wwv_flow_api.g_varchar2_table(473) := '6572207370616E2E646973706C61795F6F6E6C793A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375733A3A2D6D732D76616C75652C0D0A2E74';
wwv_flow_api.g_varchar2_table(474) := '2D466F726D2D696E707574436F6E7461696E65722073656C6563743A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D746578743A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D7465787461';
wwv_flow_api.g_varchar2_table(475) := '7265613A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D73656C6563743A666F6375733A3A2D6D732D76616C7565';
wwv_flow_api.g_varchar2_table(476) := '207B0D0A2020636F6C6F723A20233339333933393B0D0A20200D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E';
wwv_flow_api.g_varchar2_table(477) := '657220696E7075742E746578745F6669656C643A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220746578';
wwv_flow_api.g_varchar2_table(478) := '74617265612E74657874617265613A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E64';
wwv_flow_api.g_varchar2_table(479) := '6973706C61795F6F6E6C793A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563743A686F76';
wwv_flow_api.g_varchar2_table(480) := '65722C0D0A2E752D54462D6974656D2D2D746578743A686F7665722C0D0A2E752D54462D6974656D2D2D74657874617265613A686F7665722C0D0A2E752D54462D6974656D2D2D646174657069636B65723A686F7665722C0D0A2E752D54462D6974656D';
wwv_flow_api.g_varchar2_table(481) := '2D2D73656C6563743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D706C616365';
wwv_flow_api.g_varchar2_table(482) := '686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0D0A20';
wwv_flow_api.g_varchar2_table(483) := '20636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(484) := '20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D20696E7075742E66696C65207B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370';
wwv_flow_api.g_varchar2_table(485) := '616E2E646973706C61795F6F6E6C79207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D73656C656374';
wwv_flow_api.g_varchar2_table(486) := '2C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0D0A2020636F6C6F723A202333393339';
wwv_flow_api.g_varchar2_table(487) := '33393B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(488) := '2D466F726D2D726164696F4C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C0D0A2E742D466F726D2D636865636B626F784C6162656C2C0D0A2E742D466F726D2D696E707574';
wwv_flow_api.g_varchar2_table(489) := '436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0D0A2E742D466F726D2D6C6162656C207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E742D466F726D2D6572726F72207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(490) := '6535333933353B0D0A7D0D0A2E742D466F726D2D706F737454657874207B0D0A2020636F6C6F723A20236363636363633B0D0A7D0D0A2E742D466F726D2D2D73656172636820696E7075742E742D466F726D2D7365617263684669656C64207B0D0A2020';
wwv_flow_api.g_varchar2_table(491) := '6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174657069636B65722C0D0A2E742D466F';
wwv_flow_api.g_varchar2_table(492) := '726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D746F702D72696768742D7261646975733A20303B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B';
wwv_flow_api.g_varchar2_table(493) := '0D0A7D0D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A20303B0D0A2020';
wwv_flow_api.g_varchar2_table(494) := '626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A';
wwv_flow_api.g_varchar2_table(495) := '7D0D0A0D0A2E636865636B626F785F67726F757020696E7075742C0D0A2E726164696F5F67726F757020696E707574207B0D0A20200D0A20200D0A7D0D0A2E636865636B626F785F67726F757020696E707574202B206C6162656C3A6265666F72652C0D';
wwv_flow_api.g_varchar2_table(496) := '0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A666F637573202B';
wwv_flow_api.g_varchar2_table(497) := '206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F637573202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20236365376530353B0D0A7D0D0A2E636865636B626F785F6772';
wwv_flow_api.g_varchar2_table(498) := '6F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(499) := '2D636F6C6F723A20236365376530353B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F72652C0D0A2E72';
wwv_flow_api.g_varchar2_table(500) := '6164696F5F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233663366336633B0D0A20206261636B67726F756E642D636F6C6F723A20233663366336633B0D0A7D';
wwv_flow_api.g_varchar2_table(501) := '0D0A0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D70';
wwv_flow_api.g_varchar2_table(502) := '726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D7072652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A';
wwv_flow_api.g_varchar2_table(503) := '20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F782D736861646F773A20302030203020317078202364666466646620696E7365743B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D46';
wwv_flow_api.g_varchar2_table(504) := '6F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A2020626F726465722D746F';
wwv_flow_api.g_varchar2_table(505) := '702D72696768742D7261646975733A20303B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F';
wwv_flow_api.g_varchar2_table(506) := '726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A0D0A2E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D2D69636F6E';
wwv_flow_api.g_varchar2_table(507) := '207B0D0A2020636F6C6F723A20236365376530353B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A7D0D0A2E742D4865616465722D6C6F676F2C0D0A';
wwv_flow_api.g_varchar2_table(508) := '2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976652C0D0A2E742D486561646572202E742D427574746F6E2D2D686561646572207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D48656164';
wwv_flow_api.g_varchar2_table(509) := '65722D6C6F676F3A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465723A686F766572207B0D0A20';
wwv_flow_api.g_varchar2_table(510) := '20746578742D6465636F726174696F6E3A206E6F6E653B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A666F6375732C0D';
wwv_flow_api.g_varchar2_table(511) := '0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202366616135323620696E7365743B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(512) := '2D4865616465722D6E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20233661343130333B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(513) := '723A207472616E73706172656E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020626F726465722D7261646975733A20313030253B';
wwv_flow_api.g_varchar2_table(514) := '0D0A7D0D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D746F702D77696474683A20303B0D0A7D0D0A2E742D486561646572202E612D4D656E75';
wwv_flow_api.g_varchar2_table(515) := '2D636F6E74656E74207B0D0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(516) := '723A207472616E73706172656E743B0D0A7D0D0A2E742D4865726F526567696F6E2D69636F6E207B0D0A2020626F726465722D7261646975733A203470783B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(517) := '6F723A20236666666666663B0D0A7D0D0A2E742D4865726F526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D4865726F526567696F6E2D636F6C2D2D636F6E74656E74207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(518) := '20233661366136613B0D0A7D0D0A0D0A2E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(519) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D76616C75';
wwv_flow_api.g_varchar2_table(520) := '65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0D0A2020626F726465722D746F702D636F6C6F723A20236635663566353B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(521) := '6C6F723A20236661666166613B0D0A7D0D0A2E612D4952522D66756C6C56696577207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F';
wwv_flow_api.g_varchar2_table(522) := '6E74726F6C73207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952522D746F6F6C626172207B0D0A20206261636B67726F756E643A20236666666666663B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(523) := '6C6F723A20236536653665363B0D0A7D0D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A7D0D0A2E612D5265706F72742D70657263656E7443';
wwv_flow_api.g_varchar2_table(524) := '68617274207B0D0A20206261636B67726F756E642D636F6C6F723A20236665656464343B0D0A7D0D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0D0A20202D7765626B69742D626F726465722D746F702D72696768742D72616469';
wwv_flow_api.g_varchar2_table(525) := '75733A203070782021696D706F7274616E743B0D0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D746F70';
wwv_flow_api.g_varchar2_table(526) := '72696768743A20307078202021696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0D0A2020626F726465722D746F702D72696768742D7261646975';
wwv_flow_api.g_varchar2_table(527) := '733A203070782021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A7D0D0A2E612D4952522D69636F6E566965775461626C652C0D0A2E612D4952522D';
wwv_flow_api.g_varchar2_table(528) := '6368617274566965772C0D0A2E612D4952522D7069766F74566965772C0D0A2E612D4952522D67726F75704279566965772C0D0A2E612D4952522D64657461696C56696577207B0D0A2020626F726465722D746F702D636F6C6F723A2023663566356635';
wwv_flow_api.g_varchar2_table(529) := '3B0D0A7D0D0A2E612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(530) := '2D636F6C6F723A20236661666166613B0D0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020236536653665363B0D0A7D0D0A2E612D4952';
wwv_flow_api.g_varchar2_table(531) := '522D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D';
wwv_flow_api.g_varchar2_table(532) := '0D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572536F7274207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D4756';
wwv_flow_api.g_varchar2_table(533) := '2D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233230323032303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(534) := '67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D7461626C65207472207464207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(535) := '0A2E612D4952522D7461626C65207B0D0A2020626F726465722D636F6C6C617073653A2073657061726174653B0D0A7D0D0A2E612D4952522D7461626C652074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(536) := '39663966393B0D0A7D0D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D7461626C65207464207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(537) := '6C6566743A2031707820736F6C696420236632663266323B0D0A2020626F726465722D746F703A2031707820736F6C696420236632663266323B0D0A7D0D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0D0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(538) := '6F773A20302030203020317078202363653765303520696E7365743B0D0A7D0D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0D0A2020626F726465722D636F6C6F723A20236365376530353B0D0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(539) := '3A202D31707820302030202363653765303520696E7365742C2031707820302030202363653765303520696E7365743B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D652C0D0A2E612D4952522D73696E676C65526F772D76616C756520';
wwv_flow_api.g_varchar2_table(540) := '7B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(541) := '6F723A20236666666666663B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A';
wwv_flow_api.g_varchar2_table(542) := '7D0D0A2E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C';
wwv_flow_api.g_varchar2_table(543) := '65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F766572207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(544) := '67726F756E642D636F6C6F723A20236365376530353B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0D0A2E612D4952522D636F6E74726F6C734C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(545) := '236666666666663B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0D0A20202E69732D6D6178696D697A65642E742D4952522D726567696F6E202E742D6668742D746865616420';
wwv_flow_api.g_varchar2_table(546) := '2E612D4952522D686561646572207B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0D0A20207D0D0A7D0D0A2E75692D7769646765742D636F6E74656E74202E612D4952522D69636F6E4C6973742D6C';
wwv_flow_api.g_varchar2_table(547) := '696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(548) := '642D636F6C6F723A20236637663766373B0D0A7D0D0A0D0A2E612D4952522D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20696E68657269743B0D0A7D0D0A0D0A2E612D4952522D736F7274576964676574207B0D0A202062';
wwv_flow_api.g_varchar2_table(549) := '61636B67726F756E642D636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A2020636F6C6F723A20234646463B0D0A202062';
wwv_flow_api.g_varchar2_table(550) := '6F726465722D77696474683A20303B0D0A2020626F782D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E35292C2030203870782031367078202D347078207267626128302C20302C20302C20302E3135';
wwv_flow_api.g_varchar2_table(551) := '293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C626172207B0D0A202077696474683A203870783B0D0A20206865696768743A203870783B0D0A7D0D0A2E612D4952522D736F727457696467657420';
wwv_flow_api.g_varchar2_table(552) := '3A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D';
wwv_flow_api.g_varchar2_table(553) := '7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A0D0A2E612D4952522D736F72745769646765742D68656C';
wwv_flow_api.g_varchar2_table(554) := '70207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0D0A202070616464696E673A203870783B0D0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(555) := '61646975733A203270783B0D0A202077696474683A206175746F3B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(556) := '722D72696768742D77696474683A20303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A202063';
wwv_flow_api.g_varchar2_table(557) := '6F6C6F723A20234646463B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F766572207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(558) := '6F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078';
wwv_flow_api.g_varchar2_table(559) := '202363653765303520696E7365743B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2E69732D6163746976652C0D0A2E612D4952522D627574746F6E2E612D4952522D736F7274576964676574';
wwv_flow_api.g_varchar2_table(560) := '2D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C207B0D';
wwv_flow_api.g_varchar2_table(561) := '0A20206865696768743A20343070783B0D0A202070616464696E673A2031327078203870783B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20234646463B0D0A7D';
wwv_flow_api.g_varchar2_table(562) := '0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73';
wwv_flow_api.g_varchar2_table(563) := '706172656E743B0D0A2020617070656172616E63653A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20206865696768743A20343070783B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(564) := '723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D3A666F637573207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(565) := '61646F773A20302030203020317078202363653765303520696E7365743B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F7773207B0D0A2020626F726465722D746F702D77696474683A20303B0D0A7D0D0A2E612D4952522D736F727457';
wwv_flow_api.g_varchar2_table(566) := '69646765742D726F77207B0D0A2020636F6C6F723A20234646463B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A686F766572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(567) := '6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202363653765303520696E';
wwv_flow_api.g_varchar2_table(568) := '7365743B0D0A7D0D0A2E612D4947202E612D4952522D736F72745769646765743A6265666F7265207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A7D0D0A2E6F6A2D6476742D63617465676F727931207B0D';
wwv_flow_api.g_varchar2_table(569) := '0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E6F6A2D6476742D63617465676F727932207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E6F6A2D6476742D63617465676F727933207B0D0A2020636F6C6F723A2023666263';
wwv_flow_api.g_varchar2_table(570) := '6534613B0D0A7D0D0A2E6F6A2D6476742D63617465676F727934207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E6F6A2D6476742D63617465676F727935207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A2E6F6A2D64';
wwv_flow_api.g_varchar2_table(571) := '76742D63617465676F727936207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E6F6A2D6476742D63617465676F727937207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A2E6F6A2D6476742D63617465676F727938207B';
wwv_flow_api.g_varchar2_table(572) := '0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E6F6A2D6476742D63617465676F727939207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793130207B0D0A2020636F6C6F723A202338';
wwv_flow_api.g_varchar2_table(573) := '31626235663B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793131207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793132207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(574) := '0A2E742D4C696E6B734C6973742D6974656D2C0D0A2E742D4C696E6B734C6973742D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(575) := '20236439643964393B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0D';
wwv_flow_api.g_varchar2_table(576) := '0A2020626F782D736861646F773A20302030203020317078202363653765303520696E7365743B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020';
wwv_flow_api.g_varchar2_table(577) := '636F6C6F723A20236439643964393B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020';
wwv_flow_api.g_varchar2_table(578) := '636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(579) := '6E642D636F6C6F723A20236562656265623B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D';
wwv_flow_api.g_varchar2_table(580) := '4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E6973';
wwv_flow_api.g_varchar2_table(581) := '2D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269';
wwv_flow_api.g_varchar2_table(582) := '676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4C696E6B734C697374';
wwv_flow_api.g_varchar2_table(583) := '2D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(584) := '742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E74287267626128302C20';
wwv_flow_api.g_varchar2_table(585) := '302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E30313529293B0D0A7D0D0A2E742D4C696E';
wwv_flow_api.g_varchar2_table(586) := '6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A20236365376530353B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E6973';
wwv_flow_api.g_varchar2_table(587) := '2D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C';
wwv_flow_api.g_varchar2_table(588) := '696E6B734C6973742D6261646765207B0D0A2020626F726465722D7261646975733A203470783B0D0A7D0D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F6E207B0D0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(589) := '6975733A20313030253B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F';
wwv_flow_api.g_varchar2_table(590) := '6E73202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(591) := '4C6973742D69636F6E2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73';
wwv_flow_api.g_varchar2_table(592) := '202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A2020636F6C6F723A20233530336331643B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D4C696E6B734C6973742D6C69';
wwv_flow_api.g_varchar2_table(593) := '6E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236631653864393B0D0A7D0D0A0D0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0D0A20206261636B67726F756E643A20233030613032643B0D0A2020';
wwv_flow_api.g_varchar2_table(594) := '636F6C6F723A2077686974653B0D0A7D0D0A626F6479202E742D4C6F67696E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4C6F67696E2D726567696F6E207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(595) := '3A20236666666666663B0D0A7D0D0A2E742D4C6F67696E2D6C6F676F207B0D0A2020636F6C6F723A20236365376530353B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20';
wwv_flow_api.g_varchar2_table(596) := '202E742D50616765426F64792D2D6C6F67696E2C0D0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0D0A202020206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20207D0D0A7D0D0A0D0A2E742D4D';
wwv_flow_api.g_varchar2_table(597) := '656469614C697374207B0D0A2020626F726465722D636F6C6F723A20236530653065303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656469614C6973742D6974656D207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(598) := '2D636F6C6F723A20236530653065303B0D0A7D0D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D72696768743A2031707820736F6C69642023653065306530';
wwv_flow_api.g_varchar2_table(599) := '3B0D0A7D0D0A0D0A612E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A686F766572207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(600) := '2D636F6C6F723A20236661666166613B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0D0A2020626F782D736861646F773A203020302030203170782023636537';
wwv_flow_api.g_varchar2_table(601) := '65303520696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4D656469614C6973742D62616467652C0D0A2E742D4D656469614C6973742D64657363';
wwv_flow_api.g_varchar2_table(602) := '207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D4D656469614C6973742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(603) := '742D4D656469614C6973742D2D636F6C73207B0D0A2020626F782D736861646F773A202D317078202D31707820302030202365306530653020696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D';
wwv_flow_api.g_varchar2_table(604) := '6974656D3A6265666F72652C0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A0D0A2E612D4D65';
wwv_flow_api.g_varchar2_table(605) := '6E754261722D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0D0A20';
wwv_flow_api.g_varchar2_table(606) := '20646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267696E2D72696768743A203870783B0D0A20206D617267696E2D6C';
wwv_flow_api.g_varchar2_table(607) := '6566743A202D3470783B0D0A7D0D0A2E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A20236365376530353B0D0A2020626F726465722D72696768743A2031707820736F6C696420236639396230643B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(608) := '65722D6C6566743A2031707820736F6C696420236639396230643B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A20206D617267696E2D6C6566743A20';
wwv_flow_api.g_varchar2_table(609) := '303B0D0A7D0D0A2E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E754261722E752D52544C202E612D4D656E754261722D6974656D2E612D4D656E752D';
wwv_flow_api.g_varchar2_table(610) := '2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A203870782038707820387078203470783B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(611) := '2E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E612D4D656E754261722D6974';
wwv_flow_api.g_varchar2_table(612) := '656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236639396230643B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A2023663939';
wwv_flow_api.g_varchar2_table(613) := '6230643B0D0A7D0D0A0D0A2E742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F726465722D7261646975733A203270783B0D0A202070616464696E673A2030203670783B0D0A2020666F';
wwv_flow_api.g_varchar2_table(614) := '6E742D73697A653A20313170783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(615) := '3235293B0D0A7D0D0A2E612D4D656E752D6C6162656C436F6E7461696E6572202E742D4D656E752D6261646765207B0D0A20206C696E652D6865696768743A20313670783B0D0A20206D617267696E2D6C6566743A203470783B0D0A20206D617267696E';
wwv_flow_api.g_varchar2_table(616) := '2D746F703A203870783B0D0A7D0D0A0D0A2E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A202335303363';
wwv_flow_api.g_varchar2_table(617) := '31643B0D0A7D0D0A2E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D4D656E752D2D63757272656E74207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(618) := '756E642D636F6C6F723A20236661623033663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236661663766313B0D';
wwv_flow_api.g_varchar2_table(619) := '0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A2020636F6C6F723A202333373337';
wwv_flow_api.g_varchar2_table(620) := '33373B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20233736373637';
wwv_flow_api.g_varchar2_table(621) := '363B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236365';
wwv_flow_api.g_varchar2_table(622) := '376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D';
wwv_flow_api.g_varchar2_table(623) := '4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E20';
wwv_flow_api.g_varchar2_table(624) := '2E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E7543';
wwv_flow_api.g_varchar2_table(625) := '6F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E6465';
wwv_flow_api.g_varchar2_table(626) := '64203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612838302C20';
wwv_flow_api.g_varchar2_table(627) := '36302C2032392C20302E3735293B0D0A7D0D0A2E612D4D656E752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235302C203234372C203234312C20302E3935293B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(628) := '3A20236563653063633B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D4D656E75426172207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73';
wwv_flow_api.g_varchar2_table(629) := '706172656E743B0D0A7D0D0A2E742D486561646572202E612D4D656E75426172207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(630) := '6F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233333333333333B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D65';
wwv_flow_api.g_varchar2_table(631) := '6E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267696E2D7269676874';
wwv_flow_api.g_varchar2_table(632) := '3A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A20236632663266323B0D0A2020626F726465722D7269676874';
wwv_flow_api.g_varchar2_table(633) := '3A2031707820736F6C696420236439643964393B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236439643964393B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(634) := '61722D6974656D3A66697273742D6368696C64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D65';
wwv_flow_api.g_varchar2_table(635) := '6E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E754261722E752D52544C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F726465723A206E';
wwv_flow_api.g_varchar2_table(636) := '6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A203870782038707820387078203470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D';
wwv_flow_api.g_varchar2_table(637) := '656E754261722D6C6162656C207B0D0A2020636F6C6F723A20726762612835312C2035312C2035312C20302E35293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(638) := '636F6C6F723A20236439643964393B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(639) := '696F6E202E742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F726465722D7261646975733A203270783B0D0A202070616464696E673A2030203670783B0D0A2020666F6E742D73697A65';
wwv_flow_api.g_varchar2_table(640) := '3A20313170783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D';
wwv_flow_api.g_varchar2_table(641) := '0D0A2E612D4D656E752D6C6162656C436F6E7461696E6572202E742D526567696F6E202E742D4D656E752D6261646765207B0D0A20206C696E652D6865696768743A20313670783B0D0A20206D617267696E2D6C6566743A203470783B0D0A20206D6172';
wwv_flow_api.g_varchar2_table(642) := '67696E2D746F703A203870783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(643) := '74656D207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D';
wwv_flow_api.g_varchar2_table(644) := '0D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64';
wwv_flow_api.g_varchar2_table(645) := '697361626C65642E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E6973';
wwv_flow_api.g_varchar2_table(646) := '2D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E';
wwv_flow_api.g_varchar2_table(647) := '69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D';
wwv_flow_api.g_varchar2_table(648) := '656E752D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A2020';
wwv_flow_api.g_varchar2_table(649) := '636F6C6F723A20233333333333333B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E74';
wwv_flow_api.g_varchar2_table(650) := '2D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D65';
wwv_flow_api.g_varchar2_table(651) := '6E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E';
wwv_flow_api.g_varchar2_table(652) := '202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E';
wwv_flow_api.g_varchar2_table(653) := '752D616363656C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A202333333333';
wwv_flow_api.g_varchar2_table(654) := '33333B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F';
wwv_flow_api.g_varchar2_table(655) := '6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A2020626F782D736861646F773A20302031';
wwv_flow_api.g_varchar2_table(656) := '707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A0D0A2E742D486561646572207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6C6162656C';
wwv_flow_api.g_varchar2_table(657) := '207B0D0A2020636F6C6F723A20236661663766313B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F70';
wwv_flow_api.g_varchar2_table(658) := '3B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(659) := '236235366630342021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E75';
wwv_flow_api.g_varchar2_table(660) := '2D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236235366630342021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E75';
wwv_flow_api.g_varchar2_table(661) := '2D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B';
wwv_flow_api.g_varchar2_table(662) := '0D0A2020636F6C6F723A20236661663766312021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D';
wwv_flow_api.g_varchar2_table(663) := '486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236235366630342021696D706F7274616E743B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(664) := '2D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A2072676261283235302C203234372C203234312C20302E38293B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(665) := '2D636F6C6F723A20236365376530353B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E20';
wwv_flow_api.g_varchar2_table(666) := '2E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(667) := '726F756E642D636F6C6F723A20236639396230643B0D0A2020626F726465722D636F6C6F723A20236639396230643B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D';
wwv_flow_api.g_varchar2_table(668) := '656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20236661613532363B0D0A2020626F726465722D636F6C6F723A20236661613532363B0D0A7D0D0A2E742D48656164';
wwv_flow_api.g_varchar2_table(669) := '6572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(670) := '6661663766313B0D0A2020626F726465722D636F6C6F723A20236661663766313B0D0A2020636F6C6F723A20233530336331643B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D';
wwv_flow_api.g_varchar2_table(671) := '4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236663633837613B0D0A2020626F726465722D636F6C6F723A20236663633837613B0D0A2020636F6C6F723A20233532333230323B';
wwv_flow_api.g_varchar2_table(672) := '0D0A7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236235366630343B0D0A7D0D0A2E742D486561646572202E612D';
wwv_flow_api.g_varchar2_table(673) := '4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20236661663766313B0D0A7D0D0A2E742D486561646572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A2072676261283235302C203234372C203234312C2030';
wwv_flow_api.g_varchar2_table(674) := '2E3735293B0D0A7D0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A';
wwv_flow_api.g_varchar2_table(675) := '20206261636B67726F756E642D636F6C6F723A20233963363030342021696D706F7274616E743B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F6479202E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(676) := '2D6C6162656C207B0D0A2020636F6C6F723A20233337333733373B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A';
wwv_flow_api.g_varchar2_table(677) := '20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(678) := '236563653063632021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D6375';
wwv_flow_api.g_varchar2_table(679) := '7272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236563653063632021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272';
wwv_flow_api.g_varchar2_table(680) := '656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(681) := '723A20233337333733372021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D426F6479202E612D4D65';
wwv_flow_api.g_varchar2_table(682) := '6E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236563653063632021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E';
wwv_flow_api.g_varchar2_table(683) := '754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20726762612835352C2035352C2035352C20302E38293B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D';
wwv_flow_api.g_varchar2_table(684) := '0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C20';
wwv_flow_api.g_varchar2_table(685) := '2E612D49636F6E2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236438626439343B';
wwv_flow_api.g_varchar2_table(686) := '0D0A2020626F726465722D636F6C6F723A20236438626439343B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(687) := '7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E75';
wwv_flow_api.g_varchar2_table(688) := '2D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233337333733373B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(689) := '233337333733373B0D0A2020636F6C6F723A20236636663666363B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A';
wwv_flow_api.g_varchar2_table(690) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236563653063633B0D0A7D0D0A2E742D426F6479202E612D4D656E752D636F6E74656E';
wwv_flow_api.g_varchar2_table(691) := '74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236563653063633B0D0A7D0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(692) := '3337333733373B0D0A7D0D0A2E742D426F6479202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612835352C2035352C2035352C20302E3735293B0D0A7D0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974';
wwv_flow_api.g_varchar2_table(693) := '656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236633656264662021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(694) := '0A7D0D0A2E742D426F6479202E612D4D656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(695) := '636F6C6F723A20236563653063633B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20';
wwv_flow_api.g_varchar2_table(696) := '200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233430343034303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(697) := '2D526567696F6E202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(698) := '6F6E202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D';
wwv_flow_api.g_varchar2_table(699) := '4D656E752D2D63757272656E742C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A202365366536653620';
wwv_flow_api.g_varchar2_table(700) := '21696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D526567696F6E202E612D4D656E754261722D6974';
wwv_flow_api.g_varchar2_table(701) := '656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B';
wwv_flow_api.g_varchar2_table(702) := '0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B';
wwv_flow_api.g_varchar2_table(703) := '0D0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E';
wwv_flow_api.g_varchar2_table(704) := '207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E38293B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(705) := '2E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D20';
wwv_flow_api.g_varchar2_table(706) := '3E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A2020626F726465722D636F6C6F723A20236266626662663B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(707) := '723A20233030303030303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(708) := '6666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E';
wwv_flow_api.g_varchar2_table(709) := '752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233430343034303B0D0A2020626F726465722D636F6C6F723A20233430343034303B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(710) := '0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(711) := '0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20';
wwv_flow_api.g_varchar2_table(712) := '206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E61';
wwv_flow_api.g_varchar2_table(713) := '2D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D52';
wwv_flow_api.g_varchar2_table(714) := '6567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D';
wwv_flow_api.g_varchar2_table(715) := '656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A2023653665366536';
wwv_flow_api.g_varchar2_table(716) := '3B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D636F6E';
wwv_flow_api.g_varchar2_table(717) := '74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233963363030343B0D0A7D0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D666F6375';
wwv_flow_api.g_varchar2_table(718) := '7365642C0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233833353030332021696D706F7274616E743B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(719) := '4865616465722D757365724D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D4E617669676174696F6E4261722D6D656E75202E';
wwv_flow_api.g_varchar2_table(720) := '612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A20206261636B67726F756E642D636F6C6F723A20233833353030333B0D0A2020626F726465722D77696474683A20303B0D0A7D';
wwv_flow_api.g_varchar2_table(721) := '0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A';
wwv_flow_api.g_varchar2_table(722) := '20206261636B67726F756E642D636F6C6F723A20236235366630342021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(723) := '6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E';
wwv_flow_api.g_varchar2_table(724) := '743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D20';
wwv_flow_api.g_varchar2_table(725) := '612C0D0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(726) := '0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236266306230353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D506F7075704C4F562D726573756C';
wwv_flow_api.g_varchar2_table(727) := '74735365742074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(728) := '28326E29207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234641464146413B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0D0A2E75692D7769646765742D636F6E74656E7420612E742D506F70';
wwv_flow_api.g_varchar2_table(729) := '75704C4F562D726573756C74735365742D6C696E6B207B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A2E742D506167652D2D706F7075704C4F56207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(730) := '2D506F7075704C4F562D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20236661663766313B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233337333733';
wwv_flow_api.g_varchar2_table(731) := '373B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B';
wwv_flow_api.g_varchar2_table(732) := '0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E6B7320612C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(733) := '6F723A20233430343034303B0D0A7D0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236631306530363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(734) := '2D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233736373637363B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(735) := '723A20233765376537653B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D70';
wwv_flow_api.g_varchar2_table(736) := '6167696E6174696F6E2C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A0D0A2E742D526567696F6E2C0D0A2E742D436F6E74656E74';
wwv_flow_api.g_varchar2_table(737) := '426C6F636B2D2D6C696768744247202E742D436F6E74656E74426C6F636B2D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E6669656C64646174612062207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(738) := '6C6F723A20233337333733373B0D0A7D0D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0D0A20';
wwv_flow_api.g_varchar2_table(739) := '20636F6C6F723A20233365336533653B0D0A7D0D0A2E742D526567696F6E202E6669656C646461746120622C0D0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(740) := '2E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(741) := '6E6F55492C0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0D';
wwv_flow_api.g_varchar2_table(742) := '0A20206261636B67726F756E643A207472616E73706172656E743B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D526567696F6E2D2D737461636B6564207B0D0A2020626F726465722D7261646975733A20302021696D706F727461';
wwv_flow_api.g_varchar2_table(743) := '6E743B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D';
wwv_flow_api.g_varchar2_table(744) := '0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E74';
wwv_flow_api.g_varchar2_table(745) := '2D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(746) := '686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74313A6E6F74282E742D526567696F6E2D2D74657874';
wwv_flow_api.g_varchar2_table(747) := '436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D5265';
wwv_flow_api.g_varchar2_table(748) := '67696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D52';
wwv_flow_api.g_varchar2_table(749) := '6567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E';
wwv_flow_api.g_varchar2_table(750) := '7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74323A6E6F7428';
wwv_flow_api.g_varchar2_table(751) := '2E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74323A6E6F74282E742D526567696F6E2D2D7465787443';
wwv_flow_api.g_varchar2_table(752) := '6F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D746578';
wwv_flow_api.g_varchar2_table(753) := '74436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74333A6E6F74282E742D526567';
wwv_flow_api.g_varchar2_table(754) := '696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(755) := '6E2D2D616363656E74333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74333A6E6F74282E';
wwv_flow_api.g_varchar2_table(756) := '742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74';
wwv_flow_api.g_varchar2_table(757) := '332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363';
wwv_flow_api.g_varchar2_table(758) := '656E74343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A2020636F6C6F723A20236630666166';
wwv_flow_api.g_varchar2_table(759) := '363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(760) := '2D2D616363656E74343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(761) := '2D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(762) := '0A2E742D526567696F6E2D2D616363656E74353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A';
wwv_flow_api.g_varchar2_table(763) := '2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E';
wwv_flow_api.g_varchar2_table(764) := '6F55492C0D0A2E742D526567696F6E2D2D616363656E74353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(765) := '236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(766) := '20233831626235663B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74363A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(767) := '6C6F723A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74363A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(768) := '6572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74363A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C69';
wwv_flow_api.g_varchar2_table(769) := '6E6B207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74362E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469';
wwv_flow_api.g_varchar2_table(770) := '746C65207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74373A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A';
wwv_flow_api.g_varchar2_table(771) := '20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74373A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E';
wwv_flow_api.g_varchar2_table(772) := '202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74373A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D6865616465';
wwv_flow_api.g_varchar2_table(773) := '72202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74372E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(774) := '6572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74383A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D5265';
wwv_flow_api.g_varchar2_table(775) := '67696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74383A6E6F74282E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(776) := '2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74383A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E20';
wwv_flow_api.g_varchar2_table(777) := '2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74382E742D526567696F6E2D2D74657874436F6E74656E74203E';
wwv_flow_api.g_varchar2_table(778) := '202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74393A6E6F74282E742D526567696F6E2D2D7465787443';
wwv_flow_api.g_varchar2_table(779) := '6F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7439';
wwv_flow_api.g_varchar2_table(780) := '3A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74393A6E6F74282E742D526567696F6E2D2D';
wwv_flow_api.g_varchar2_table(781) := '74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74392E742D526567696F6E';
wwv_flow_api.g_varchar2_table(782) := '2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431303A6E6F7428';
wwv_flow_api.g_varchar2_table(783) := '2E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(784) := '2D526567696F6E2D2D616363656E7431303A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74';
wwv_flow_api.g_varchar2_table(785) := '31303A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(786) := '2D2D616363656E7431302E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(787) := '67696F6E2D2D616363656E7431313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(788) := '6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C';
wwv_flow_api.g_varchar2_table(789) := '0D0A2E742D526567696F6E2D2D616363656E7431313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(790) := '666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(791) := '6361353839643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(792) := '6F723A20233835346539623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(793) := '6572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C';
wwv_flow_api.g_varchar2_table(794) := '696E6B207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431322E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(795) := '7469746C65207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D68656164657220';
wwv_flow_api.g_varchar2_table(796) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E';
wwv_flow_api.g_varchar2_table(797) := '7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(798) := '686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F';
wwv_flow_api.g_varchar2_table(799) := '6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233561363861643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E742920';
wwv_flow_api.g_varchar2_table(800) := '3E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431343A6E6F74282E74';
wwv_flow_api.g_varchar2_table(801) := '2D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431343A6E6F74282E742D526567696F6E2D2D74657874436F';
wwv_flow_api.g_varchar2_table(802) := '6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431342E742D526567696F6E2D2D746578';
wwv_flow_api.g_varchar2_table(803) := '74436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431353A6E6F74282E742D5265';
wwv_flow_api.g_varchar2_table(804) := '67696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(805) := '6F6E2D2D616363656E7431353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431353A6E6F';
wwv_flow_api.g_varchar2_table(806) := '74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363';
wwv_flow_api.g_varchar2_table(807) := '656E7431352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233665383539383B0D0A7D0D0A2E742D526567696F6E2D626F';
wwv_flow_api.g_varchar2_table(808) := '6479207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0D';
wwv_flow_api.g_varchar2_table(809) := '0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(810) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D73696465202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(811) := '3B0D0A7D0D0A2E742D526567696F6E207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E2D2D6E6F4247207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(812) := '0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F';
wwv_flow_api.g_varchar2_table(813) := '6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235';
wwv_flow_api.g_varchar2_table(814) := '293B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(815) := '20302E35293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976652C0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976653A666F63';
wwv_flow_api.g_varchar2_table(816) := '7573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D6E6578742D726567696F6E207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(817) := '65722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D70726576696F75732D726567696F6E207B0D0A2020626F726465722D7261646975733A203020327078203270';
wwv_flow_api.g_varchar2_table(818) := '7820303B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A202062';
wwv_flow_api.g_varchar2_table(819) := '61636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D546162732D73656C6563';
wwv_flow_api.g_varchar2_table(820) := '746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D63';
wwv_flow_api.g_varchar2_table(821) := '61726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A0D0A2E742D5265706F72742D63656C6C';
wwv_flow_api.g_varchar2_table(822) := '2C0D0A2E742D5265706F72742D636F6C48656164207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A7D0D0A2E742D5265706F72742D7265706F727420';
wwv_flow_api.g_varchar2_table(823) := '7472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0D0A2020626F726465722D72696768743A2031';
wwv_flow_api.g_varchar2_table(824) := '707820736F6C696420236536653665363B0D0A7D0D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964202365';
wwv_flow_api.g_varchar2_table(825) := '36653665363B0D0A7D0D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0D0A';
wwv_flow_api.g_varchar2_table(826) := '20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72';
wwv_flow_api.g_varchar2_table(827) := '742D63656C6C2C0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(828) := '6F756E642D636F6C6F723A20236661666166612021696D706F7274616E743B0D0A7D0D0A2E742D5265706F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E74';
wwv_flow_api.g_varchar2_table(829) := '2D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E742D5265706F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F7274207472';
wwv_flow_api.g_varchar2_table(830) := '3A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0D0A7D0D0A0D0A2E742D5265706F72742D706167696E6174696F6E5465787420622C0D0A2E74';
wwv_flow_api.g_varchar2_table(831) := '2D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D536F6369616C466F6F7465';
wwv_flow_api.g_varchar2_table(832) := '72207B0D0A202070616464696E672D746F703A20343870783B0D0A202070616464696E672D626F74746F6D3A20323470783B0D0A7D0D0A2E742D536F6369616C466F6F746572202E726F77207B0D0A202070616464696E672D746F703A203870783B0D0A';
wwv_flow_api.g_varchar2_table(833) := '7D0D0A2E742D536F6369616C466F6F746572202E636F6C207B0D0A202070616464696E672D626F74746F6D3A203870783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A20207472616E736974696F6E3A20616C6C202E32733B0D0A7D0D';
wwv_flow_api.g_varchar2_table(834) := '0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6D6F7A2D7472616E73666F726D3A207472616E736C6174655928';
wwv_flow_api.g_varchar2_table(835) := '2D387078293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6F2D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20207472616E73666F726D3A207472616E736C6174';
wwv_flow_api.g_varchar2_table(836) := '6559282D387078293B0D0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061207B0D0A20207472616E736974696F6E';
wwv_flow_api.g_varchar2_table(837) := '3A20616C6C202E32733B0D0A2020646973706C61793A20626C6F636B3B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A2020636F6C6F723A20726762612835352C203535';
wwv_flow_api.g_varchar2_table(838) := '2C2035352C20302E38293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0D0A2020646973706C61793A20626C6F636B3B0D0A20206D617267696E3A2030206175746F3B0D0A2020636F6C6F723A20726762612835352C';
wwv_flow_api.g_varchar2_table(839) := '2035352C2035352C20302E34293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E6661207B0D0A2020666F6E742D73697A653A20323870783B0D0A202077696474683A20333270783B0D0A20206865696768743A20333270783B0D0A20206C';
wwv_flow_api.g_varchar2_table(840) := '696E652D6865696768743A20333270783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E207B0D0A202077696474683A20333270783B0D0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(841) := '333270783B0D0A20206C696E652D6865696768743A20333270783B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0D0A2020666F6E742D73697A653A20333270783B0D0A7D0D0A2E742D536F6369616C';
wwv_flow_api.g_varchar2_table(842) := '466F6F74657220613A686F7665722C0D0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A2E742D536561726368526573756C74732D64657363207B0D0A20';
wwv_flow_api.g_varchar2_table(843) := '20636F6C6F723A20233337333733373B0D0A7D0D0A2E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233661366136613B0D0A7D0D0A2E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(844) := '3A20233661366136613B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64';
wwv_flow_api.g_varchar2_table(845) := '617465207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D5374617475734C6973742D';
wwv_flow_api.g_varchar2_table(846) := '626C6F636B486561646572207B0D0A2020636F6C6F723A20233430343034303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D5374617475734C6973742D68656164657254657874416C742C0D0A2E742D';
wwv_flow_api.g_varchar2_table(847) := '5374617475734C6973742D617474722C0D0A2E742D5374617475734C6973742D7465787444657363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D5374617475734C6973742D6974656D5469746C65207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(848) := '3A20233430343034303B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A20233730373037303B0D0A2020626F726465722D7261646975733A203270783B';
wwv_flow_api.g_varchar2_table(849) := '0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(850) := '723A20234130413041303B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(851) := '65722D7261646975733A20323470783B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C';
wwv_flow_api.g_varchar2_table(852) := '6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473';
wwv_flow_api.g_varchar2_table(853) := '202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572';
wwv_flow_api.g_varchar2_table(854) := '726F72202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974';
wwv_flow_api.g_varchar2_table(855) := '656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D537461747573';
wwv_flow_api.g_varchar2_table(856) := '4C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473';
wwv_flow_api.g_varchar2_table(857) := '202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0D0A7D0D0A2E742D5374617475734C6973742D2D';
wwv_flow_api.g_varchar2_table(858) := '62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A20234130413041303B0D0A7D0D0A0D0A2E742D546162732D2D73696D706C65202E';
wwv_flow_api.g_varchar2_table(859) := '742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A2020626F782D736861646F773A2030202D3270782030202363653765303520696E7365743B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D54';
wwv_flow_api.g_varchar2_table(860) := '6162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202363653765303520696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(861) := '39663966393B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D5461';
wwv_flow_api.g_varchar2_table(862) := '62732D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(863) := '0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202363653765303520696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D5461';
wwv_flow_api.g_varchar2_table(864) := '62732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A66697273742D6368696C64202E742D546162732D6C69';
wwv_flow_api.g_varchar2_table(865) := '6E6B207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(866) := '726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C';
wwv_flow_api.g_varchar2_table(867) := '696E6B207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(868) := '20302E303235293B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(869) := '426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E';
wwv_flow_api.g_varchar2_table(870) := '6B207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D526567696F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A2E617065782D72';
wwv_flow_api.g_varchar2_table(871) := '6473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2030202D3270782030202363653765303520696E7365743B0D0A7D0D0A2E617065782D72647320613A666F637573207B0D0A2020626F782D73';
wwv_flow_api.g_varchar2_table(872) := '6861646F773A20302030203020317078202363653765303520696E7365743B0D0A7D0D0A2E617065782D7264732061207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D426F64792D7469746C65202E617065782D7264732061207B';
wwv_flow_api.g_varchar2_table(873) := '0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D526567696F6E202E617065782D7264732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E617065782D72647320613A686F766572207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(874) := '20236266306230353B0D0A7D0D0A2E617065782D726473202E617065782D7264732D73656C65637465642061207B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A2E617065782D7264732D686F7665722E6C6566742061207B0D0A20206261';
wwv_flow_api.g_varchar2_table(875) := '636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023666566656664203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A20200D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(876) := '3A206C696E6561722D6772616469656E7428746F2072696768742C2023666566656664203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A20200D0A7D0D0A2E617065782D7264732D686F7665722E7269676874';
wwv_flow_api.g_varchar2_table(877) := '2061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236665666566642030252C2072676261283235352C203235352C203235352C2030292031252C202366656665666420353025';
wwv_flow_api.g_varchar2_table(878) := '293B0D0A20200D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236665666566642030252C2072676261283235352C203235352C203235352C2030292031252C202366656665666420353025293B';
wwv_flow_api.g_varchar2_table(879) := '0D0A20200D0A7D0D0A0D0A2E766572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C656374';
wwv_flow_api.g_varchar2_table(880) := '6564207370616E207B0D0A2020626F782D736861646F773A2034707820302030202363653765303520696E7365743B0D0A7D0D0A2E752D52544C202E766572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C65637465';
wwv_flow_api.g_varchar2_table(881) := '64207370616E2C0D0A2E752D52544C202E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A202D34707820302030202363653765303520696E73';
wwv_flow_api.g_varchar2_table(882) := '65743B0D0A7D0D0A0D0A2E612D546167436C6F75642D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E643A2023666166616661';
wwv_flow_api.g_varchar2_table(883) := '3B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0D0A2020636F6C6F723A202362';
wwv_flow_api.g_varchar2_table(884) := '61306230353B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B207370616E207B0D0A20207472616E736974696F6E3A20636F6C6F72202E32733B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0D0A2020746578742D6465';
wwv_flow_api.g_varchar2_table(885) := '636F726174696F6E3A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020626F726465722D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(886) := '61646F773A20302030203020327078202363653765303520696E7365743B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D546167436C6F75642D';
wwv_flow_api.g_varchar2_table(887) := '636F756E74207B0D0A2020636F6C6F723A20233636363636363B0D0A2020666F6E742D7765696768743A203230303B0D0A7D0D0A2E742D54696D656C696E65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D54696D656C696E65';
wwv_flow_api.g_varchar2_table(888) := '2D757365726E616D652C0D0A2E742D54696D656C696E652D646174652C0D0A2E742D54696D656C696E652D64657363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D54696D656C696E652D77726170207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(889) := '3A20233430343034303B0D0A7D0D0A2E742D54696D656C696E652D74797065207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D54696D656C696E652D74';
wwv_flow_api.g_varchar2_table(890) := '7970652E69732D6E6577207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D75706461746564207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(891) := '67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D72656D6F766564207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933';
wwv_flow_api.g_varchar2_table(892) := '353B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D777261703A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A2030203020302031707820236365376530352069';
wwv_flow_api.g_varchar2_table(893) := '6E7365743B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20233661343130333B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E617620';
wwv_flow_api.g_varchar2_table(894) := '2E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20233932353930343B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020';
wwv_flow_api.g_varchar2_table(895) := '233661343130333B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(896) := '236365376530353B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E643A20233661343130333B0D0A7D0D';
wwv_flow_api.g_varchar2_table(897) := '0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236235366630343B0D0A7D0D';
wwv_flow_api.g_varchar2_table(898) := '0A2E742D526567696F6E207B0D0A20200D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(899) := '3A20302030203020317078202363653765303520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_api.g_varchar2_table(900) := '6C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E74';
wwv_flow_api.g_varchar2_table(901) := '2D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(902) := '3A20236637663766373B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D526567696F6E202E612D54';
wwv_flow_api.g_varchar2_table(903) := '726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D';
wwv_flow_api.g_varchar2_table(904) := '0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20';
wwv_flow_api.g_varchar2_table(905) := '206261636B67726F756E642D636F6C6F723A20236630663066302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D68';
wwv_flow_api.g_varchar2_table(906) := '6F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B';
wwv_flow_api.g_varchar2_table(907) := '0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572';
wwv_flow_api.g_varchar2_table(908) := '202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65';
wwv_flow_api.g_varchar2_table(909) := '3A686F766572207B0D0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E';
wwv_flow_api.g_varchar2_table(910) := '69732D686F766572207B0D0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E';
wwv_flow_api.g_varchar2_table(911) := '74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(912) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3935293B0D0A7D0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(913) := '67696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_api.g_varchar2_table(914) := '6C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E';
wwv_flow_api.g_varchar2_table(915) := '612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E';
wwv_flow_api.g_varchar2_table(916) := '742D2D746F70202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(917) := '612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(918) := '67696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64';
wwv_flow_api.g_varchar2_table(919) := '652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E';
wwv_flow_api.g_varchar2_table(920) := '742E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(921) := '20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C2030';
wwv_flow_api.g_varchar2_table(922) := '2E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233430343034302021696D706F727461';
wwv_flow_api.g_varchar2_table(923) := '6E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B';
wwv_flow_api.g_varchar2_table(924) := '0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(925) := '612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A2023663766376637';
wwv_flow_api.g_varchar2_table(926) := '3B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202363';
wwv_flow_api.g_varchar2_table(927) := '653765303520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(928) := '2D726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D';
wwv_flow_api.g_varchar2_table(929) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233932353930343B0D';
wwv_flow_api.g_varchar2_table(930) := '0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E';
wwv_flow_api.g_varchar2_table(931) := '6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(932) := '726F756E642D636F6C6F723A20233833353030333B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(933) := '6F756E642D636F6C6F723A20236131363330342021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B';
wwv_flow_api.g_varchar2_table(934) := '202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0D0A202063';
wwv_flow_api.g_varchar2_table(935) := '6F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F76657220';
wwv_flow_api.g_varchar2_table(936) := '2B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65';
wwv_flow_api.g_varchar2_table(937) := '3A686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74';
wwv_flow_api.g_varchar2_table(938) := '2E69732D686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74';
wwv_flow_api.g_varchar2_table(939) := '656E74207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D54726565';
wwv_flow_api.g_varchar2_table(940) := '4E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D5472';
wwv_flow_api.g_varchar2_table(941) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(942) := '566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265655669';
wwv_flow_api.g_varchar2_table(943) := '65772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F7020';
wwv_flow_api.g_varchar2_table(944) := '2E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D547265654E6176202E612D547265';
wwv_flow_api.g_varchar2_table(945) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176';
wwv_flow_api.g_varchar2_table(946) := '202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(947) := '746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E';
wwv_flow_api.g_varchar2_table(948) := '69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(949) := '236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A2072676261283235352C203235352C20323535';
wwv_flow_api.g_varchar2_table(950) := '2C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20236666666666662021696D70';
wwv_flow_api.g_varchar2_table(951) := '6F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220';
wwv_flow_api.g_varchar2_table(952) := '302E31733B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E617620';
wwv_flow_api.g_varchar2_table(953) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D5472';
wwv_flow_api.g_varchar2_table(954) := '65654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E6A732D6E6176';
wwv_flow_api.g_varchar2_table(955) := '436F6C6C6170736564202E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E74202E612D54726565566965772D6C6162656C202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(956) := '6261646765207B0D0A20206261636B67726F756E643A20233230313330313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6261646765207B0D0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(957) := '203020302030203170782072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A0D0A2E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D56616C69646174696F6E';
wwv_flow_api.g_varchar2_table(958) := '2D75736572207B0D0A2020636F6C6F723A20233539353935393B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D426F64792D61';
wwv_flow_api.g_varchar2_table(959) := '6374696F6E73202E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233463346334633B0D0A7D0D0A0D0A2E742D4469616C6F672D706167652D2D77697A617264207B0D0A2020626F726465723A20236536653665363B0D0A7D';
wwv_flow_api.g_varchar2_table(960) := '0D0A2E742D57697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(961) := '57697A617264202E742D57697A6172642D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(962) := '61666166613B0D0A2020626F726465722D636F6C6F723A20236564656465643B0D0A7D0D0A2E742D57697A61726453746570732D777261703A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(963) := '742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236363636363633B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D';
wwv_flow_api.g_varchar2_table(964) := '636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D57697A61726453746570732D7374';
wwv_flow_api.g_varchar2_table(965) := '65702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A7D0D0A2E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(966) := '6F723A20233636363636363B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A626F647920';
wwv_flow_api.g_varchar2_table(967) := '2E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(968) := '626F6479202E75692D7769646765742D636F6E74656E742061207B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A626F6479202E75692D7769646765742D686561646572207B0D0A2020626F726465722D636F6C6F723A2023656265626562';
wwv_flow_api.g_varchar2_table(969) := '3B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D7769646765742D6865616465722061207B0D0A2020636F6C6F723A20233236323632363B';
wwv_flow_api.g_varchar2_table(970) := '0D0A7D0D0A0D0A626F6479202E75692D73746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D686561646572202E';
wwv_flow_api.g_varchar2_table(971) := '75692D73746174652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D73746174652D64656661756C7420612C0D0A62';
wwv_flow_api.g_varchar2_table(972) := '6F6479202E75692D73746174652D64656661756C7420613A6C696E6B2C0D0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0D0A626F6479202E75692D73746174652D61637469766520612C0D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(973) := '2D73746174652D61637469766520613A6C696E6B2C0D0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0D0A2020636F6C6F723A20236266306230353B0D0A7D0D0A626F6479202E75692D73746174652D686F766572';
wwv_flow_api.g_varchar2_table(974) := '2C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(975) := '636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375';
wwv_flow_api.g_varchar2_table(976) := '732C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202363653765303520696E7365742C20302030203170782032707820726762';
wwv_flow_api.g_varchar2_table(977) := '61283230362C203132362C20352C20302E3235292021696D706F7274616E743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D6461746570';
wwv_flow_api.g_varchar2_table(978) := '69636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202363653765303520696E';
wwv_flow_api.g_varchar2_table(979) := '7365742C2030203020317078203270782072676261283230362C203132362C20352C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D73746174652D686F76657220612C0D0A626F6479202E75692D73746174652D686F76';
wwv_flow_api.g_varchar2_table(980) := '657220613A686F7665722C0D0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0D0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0D0A626F6479202E75692D73746174652D666F63757320612C0D';
wwv_flow_api.g_varchar2_table(981) := '0A626F6479202E75692D73746174652D666F63757320613A686F7665722C0D0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0D0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(982) := '6C6F723A20236266306230353B0D0A7D0D0A626F6479202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0D0A626F6479202E75692D776964676574';
wwv_flow_api.g_varchar2_table(983) := '2D686561646572202E75692D73746174652D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A0D0A626F6479202E75692D73746174652D686967';
wwv_flow_api.g_varchar2_table(984) := '686C696768742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0D';
wwv_flow_api.g_varchar2_table(985) := '0A20206261636B67726F756E642D636F6C6F723A20236665656464343B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D636F';
wwv_flow_api.g_varchar2_table(986) := '6E74656E74202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768742061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(987) := '626F6479202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572';
wwv_flow_api.g_varchar2_table(988) := '726F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D';
wwv_flow_api.g_varchar2_table(989) := '636F6E74656E74202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(990) := '75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174';
wwv_flow_api.g_varchar2_table(991) := '652D6572726F722D74657874207B0D0A2020636F6C6F723A20236535333933353B0D0A7D0D0A0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742C0D0A626F6479202E75692D64617465';
wwv_flow_api.g_varchar2_table(992) := '7069636B657220746420612E75692D73746174652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D646174';
wwv_flow_api.g_varchar2_table(993) := '657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174';
wwv_flow_api.g_varchar2_table(994) := '652D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A626F6479202E75692D6461746570';
wwv_flow_api.g_varchar2_table(995) := '69636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D6465';
wwv_flow_api.g_varchar2_table(996) := '6661756C742E75692D73746174652D6163746976652E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530352021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D64617465706963';
wwv_flow_api.g_varchar2_table(997) := '6B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686F76';
wwv_flow_api.g_varchar2_table(998) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C743A666F637573';
wwv_flow_api.g_varchar2_table(999) := '2C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A203020302030203170782023636537';
wwv_flow_api.g_varchar2_table(1000) := '65303520696E7365742C2030203020317078203270782072676261283230362C203132362C20352C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D';
wwv_flow_api.g_varchar2_table(1001) := '64656661756C742E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686967686C69676874207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1002) := '726F756E642D636F6C6F723A20236562656265623B0D0A7D0D0A626F6479202E75692D646174657069636B6572207468207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D6461';
wwv_flow_api.g_varchar2_table(1003) := '74657069636B65722D6865616465722C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0D0A626F6479202E75692D646174657069636B6572202E75692D646174';
wwv_flow_api.g_varchar2_table(1004) := '657069636B65722D6E6578742C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F';
wwv_flow_api.g_varchar2_table(1005) := '67202E75692D6469616C6F672D7469746C65626172207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C20302C20302C20302E3035';
wwv_flow_api.g_varchar2_table(1006) := '293B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C';
wwv_flow_api.g_varchar2_table(1007) := '0D0A2E742D4469616C6F672D70616765207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F';
wwv_flow_api.g_varchar2_table(1008) := '672C0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0D0A2E742D4469616C6F672D2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D63';
wwv_flow_api.g_varchar2_table(1009) := '6F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F67';
wwv_flow_api.g_varchar2_table(1010) := '2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A626F6479202E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D74';
wwv_flow_api.g_varchar2_table(1011) := '6F702C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E6572';
wwv_flow_api.g_varchar2_table(1012) := '2D746F702C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F';
wwv_flow_api.g_varchar2_table(1013) := '726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F64';
wwv_flow_api.g_varchar2_table(1014) := '79202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D6272207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270';
wwv_flow_api.g_varchar2_table(1015) := '783B0D0A7D0D0A0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A';
wwv_flow_api.g_varchar2_table(1016) := '626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1017) := '626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0D0A2020';
wwv_flow_api.g_varchar2_table(1018) := '626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C';
wwv_flow_api.g_varchar2_table(1019) := '0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F';
wwv_flow_api.g_varchar2_table(1020) := '74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975';
wwv_flow_api.g_varchar2_table(1021) := '733A203270783B0D0A7D0D0A0D0A2E752D7761726E696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D7761726E696E';
wwv_flow_api.g_varchar2_table(1022) := '672D74657874207B0D0A2020636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1023) := '0A7D0D0A2E752D7761726E696E672D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A0D0A2E752D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1024) := '20233030613032642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D737563636573732D74657874207B0D0A2020636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A2E752D73';
wwv_flow_api.g_varchar2_table(1025) := '7563636573732D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233030613032';
wwv_flow_api.g_varchar2_table(1026) := '642021696D706F7274616E743B0D0A7D0D0A0D0A2E752D64616E676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933352021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D64';
wwv_flow_api.g_varchar2_table(1027) := '616E6765722D74657874207B0D0A2020636F6C6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933352021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1028) := '743B0D0A7D0D0A2E752D64616E6765722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A0D0A2E752D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1029) := '233035373263652021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D696E666F2D74657874207B0D0A2020636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D';
wwv_flow_api.g_varchar2_table(1030) := '6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233035373263652021696D706F727461';
wwv_flow_api.g_varchar2_table(1031) := '6E743B0D0A7D0D0A0D0A2E752D686F74207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530352021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D686F742D74657874207B0D0A2020';
wwv_flow_api.g_varchar2_table(1032) := '636F6C6F723A20236365376530352021696D706F7274616E743B0D0A7D0D0A2E752D686F742D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530352021696D706F7274616E743B0D0A7D0D0A2E752D686F742D626F726465';
wwv_flow_api.g_varchar2_table(1033) := '72207B0D0A2020626F726465722D636F6C6F723A20236365376530352021696D706F7274616E743B0D0A7D0D0A0D0A2E752D6E6F726D616C207B0D0A20206261636B67726F756E642D636F6C6F723A20236661663766312021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1034) := '0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E752D6E6F726D616C2D74657874207B0D0A2020636F6C6F723A20233337333733372021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D6267207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1035) := '6E642D636F6C6F723A20233337333733372021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233337333733372021696D706F7274616E743B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1036) := '75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70';
wwv_flow_api.g_varchar2_table(1037) := '616E65207B0D0A2020626F726465722D746F702D636F6C6F723A20236562656265623B0D0A7D0D0A0D0A2E61635F726573756C7473207B0D0A2020626F726465723A2031707820736F6C696420236439643964393B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1038) := '636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E61635F6F6464207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A626F6479202E61635F6F766572207B0D0A';
wwv_flow_api.g_varchar2_table(1039) := '20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D617869732D7469746C652C0D0A';
wwv_flow_api.g_varchar2_table(1040) := '626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732D7469746C65207B0D0A202066696C6C3A20233430343034303B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E654368';
wwv_flow_api.g_varchar2_table(1041) := '6172742D61786973202E7469636B20746578742C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973202E7469636B2074657874207B0D0A202066696C6C3A20233830383038303B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(1042) := '202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973206C696E652C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973206C696E652C0D0A626F6479202E612D44334C';
wwv_flow_api.g_varchar2_table(1043) := '696E654368617274202E612D44334C696E6543686172742D6178697320706174682C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732070617468207B0D0A20207374726F6B653A2023653665366536';
wwv_flow_api.g_varchar2_table(1044) := '3B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732D7469746C65207B0D0A202066696C6C3A20233430343034303B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D44334261';
wwv_flow_api.g_varchar2_table(1045) := '7243686172742D67726964206C696E652C0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964207B0D0A20207374726F6B653A20236536653665363B0D0A7D0D0A626F6479202E612D443342617243686172';
wwv_flow_api.g_varchar2_table(1046) := '74202E612D443342617243686172742D61786973206C696E652C0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732070617468207B0D0A20207374726F6B653A20236363636363633B0D0A7D0D0A626F64';
wwv_flow_api.g_varchar2_table(1047) := '79202E612D44334261724368617274202E612D443342617243686172742D61786973202E7469636B2074657874207B0D0A202066696C6C3A20233830383038303B0D0A7D0D0A626F6479202E612D4433546F6F6C746970207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1048) := '756E642D636F6C6F723A20233830383038303B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A626F6479202E612D4433546F6F6C7469702D636F6E74656E74207B0D0A2020626F726465722D746F703A20233939';
wwv_flow_api.g_varchar2_table(1049) := '393939393B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D65787465726E616C2D626F7264657273207B0D0A2020626F726465722D77696474683A20303B0D0A7D0D0A626F6479202E612D';
wwv_flow_api.g_varchar2_table(1050) := '443343686172744C6567656E642D6974656D2C0D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D6261636B67726F756E64202E612D443343686172744C6567656E642D6C61796F7574207B0D0A2020';
wwv_flow_api.g_varchar2_table(1051) := '6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D77696474683A20302021696D706F7274616E743B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642D6974656D2D76616C7565207B';
wwv_flow_api.g_varchar2_table(1052) := '0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D7371756172652D636F6C6F72202E612D443343686172744C6567656E642D6974656D2D636F';
wwv_flow_api.g_varchar2_table(1053) := '6C6F72207B0D0A2020626F726465722D7261646975733A20313030253B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F6479202E612D4D696E';
wwv_flow_api.g_varchar2_table(1054) := '6943616C207B0D0A2020626F726465723A2031707820736F6C696420236563653063633B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236661663766313B0D0A7D0D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(1055) := '79202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233736373637363B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(1056) := '2D426F6479202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236637663165383B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F';
wwv_flow_api.g_varchar2_table(1057) := '646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E6973';
wwv_flow_api.g_varchar2_table(1058) := '2D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461';
wwv_flow_api.g_varchar2_table(1059) := '792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663265613B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1060) := '723A20236635656465333B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A2020';
wwv_flow_api.g_varchar2_table(1061) := '626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A2023343034303430';
wwv_flow_api.g_varchar2_table(1062) := '3B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1063) := '6F6C6F723A20236639663966393B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1064) := '756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A202062';
wwv_flow_api.g_varchar2_table(1065) := '61636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1066) := '2D636F6C6F723A20236661666166613B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D426F64792D6163';
wwv_flow_api.g_varchar2_table(1067) := '74696F6E73207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236561646363373B0D0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(1068) := '203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236638663365633B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(1069) := '2D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233732373237323B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1070) := '65722D636F6C6F723A20236635656465333B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D';
wwv_flow_api.g_varchar2_table(1071) := '0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E';
wwv_flow_api.g_varchar2_table(1072) := '6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D77';
wwv_flow_api.g_varchar2_table(1073) := '65656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236635656665343B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1074) := '6C6F723A20236632656164643B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C69642023663065';
wwv_flow_api.g_varchar2_table(1075) := '3664373B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236665666566643B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1076) := '6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D';
wwv_flow_api.g_varchar2_table(1077) := '646179207B0D0A2020626F726465722D636F6C6F723A20236662663866333B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943';
wwv_flow_api.g_varchar2_table(1078) := '616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236365376530353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665';
wwv_flow_api.g_varchar2_table(1079) := '202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E';
wwv_flow_api.g_varchar2_table(1080) := '69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236662663966353B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1081) := '6F6C6F723A20236639663465653B0D0A7D0D0A0D0A2E742D426F6479202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D426F64792D696E666F202E612D44';
wwv_flow_api.g_varchar2_table(1082) := '657461696C6564436F6E74656E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C652C0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(1083) := '526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D3A666F63757320';
wwv_flow_api.g_varchar2_table(1084) := '2E612D44657461696C6564436F6E74656E744C6973742D686561646572207B0D0A2020626F782D736861646F773A20302030203020317078202339633630303420696E7365743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C';
wwv_flow_api.g_varchar2_table(1085) := '6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(1086) := '2030203020317078202363653765303520696E7365743B0D0A2020636F6C6F723A20236365376530353B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D4465746169';
wwv_flow_api.g_varchar2_table(1087) := '6C6564436F6E74656E744C6973742D747269676765723A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233963363030343B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(1088) := '20317078202339633630303420696E7365743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1089) := '0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D69636F6E207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E35293B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C697374';
wwv_flow_api.g_varchar2_table(1090) := '2D6261646765207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0D0A20206261636B67726F756E643A20236666666666663B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1091) := '6F723A20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A686F766572207B0D0A2020636F6C6F723A20233963363030343B0D0A7D0D0A62';
wwv_flow_api.g_varchar2_table(1092) := '6F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0D0A2020636F6C6F723A20233963363030343B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B';
wwv_flow_api.g_varchar2_table(1093) := '0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1094) := '2D636F6C6F723A20233661343130333B0D0A7D0D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1095) := '3B0D0A7D0D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0D0A2020636F6C6F723A20236661623033663B0D0A7D0D0A626F6479202E61';
wwv_flow_api.g_varchar2_table(1096) := '2D44657461696C6564436F6E74656E744C6973742D626F64792D686561646572207B0D0A20206261636B67726F756E643A20236666666666663B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D';
wwv_flow_api.g_varchar2_table(1097) := '6C6162656C207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0D0A2020636F6C6F723A20233661343130333B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1098) := '0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6166746572207B0D0A202062';
wwv_flow_api.g_varchar2_table(1099) := '6F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D';
wwv_flow_api.g_varchar2_table(1100) := '44657461696C6564436F6E74656E744C6973742D626F64793A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E74';
wwv_flow_api.g_varchar2_table(1101) := '2D746F6F6C746970207B0D0A20202D7765626B69742D626F726465722D7261646975733A203270783B0D0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F64';
wwv_flow_api.g_varchar2_table(1102) := '79202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20202D7765626B69742D626F726465722D7261646975733A203270783B0D0A20202D6D6F7A2D62';
wwv_flow_api.g_varchar2_table(1103) := '6F726465722D7261646975733A203270783B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6265666F726520';
wwv_flow_api.g_varchar2_table(1104) := '7B0D0A2020626F726465722D636F6C6F723A2023366134313033207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6166746572207B0D0A';
wwv_flow_api.g_varchar2_table(1105) := '2020626F726465722D636F6C6F723A2023366134313033207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D2E6C696768743A616674657220';
wwv_flow_api.g_varchar2_table(1106) := '7B0D0A2020626F726465722D636F6C6F723A2023656165616561207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6265666F7265207B0D0A2020';
wwv_flow_api.g_varchar2_table(1107) := '626F726465722D636F6C6F723A2023366134313033207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6166746572207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1108) := '2D636F6C6F723A2023366134313033207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6265666F7265207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1109) := '6F723A207472616E73706172656E742023666666666666207472616E73706172656E74207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6166';
wwv_flow_api.g_varchar2_table(1110) := '746572207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E742023366134313033207472616E73706172656E74207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F';
wwv_flow_api.g_varchar2_table(1111) := '6C746970202E6172726F772E72696768743A6265666F7265207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420726762612836342C2036342C2036342C20302E35';
wwv_flow_api.g_varchar2_table(1112) := '293B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6166746572207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E';
wwv_flow_api.g_varchar2_table(1113) := '74207472616E73706172656E7420233661343130333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1114) := '6428203129207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1115) := '742D6974656D3A6E74682D6368696C64282031292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1116) := '6467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335626233653320696E7365743B0D0A7D0D0A62';
wwv_flow_api.g_varchar2_table(1117) := '6F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1118) := '20233133623663663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0D0A2020';
wwv_flow_api.g_varchar2_table(1119) := '636F6C6F723A20236534663966643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061';
wwv_flow_api.g_varchar2_table(1120) := '2E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332616432656220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(1121) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1122) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1123) := '42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0D0A20';
wwv_flow_api.g_varchar2_table(1124) := '20626F782D736861646F773A2030202D38707820302030202334636434643120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1125) := '73742D6974656D3A6E74682D6368696C6428203429207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1126) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1127) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D387078203020302023353863';
wwv_flow_api.g_varchar2_table(1128) := '36396520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0D0A202062';
wwv_flow_api.g_varchar2_table(1129) := '61636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1130) := '68696C64282035292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1131) := '3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339646361383320696E7365743B0D0A7D0D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(1132) := '4C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D';
wwv_flow_api.g_varchar2_table(1133) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0D0A2020636F6C6F723A202332613261';
wwv_flow_api.g_varchar2_table(1134) := '30383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1135) := '2D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364346435323920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1136) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D';
wwv_flow_api.g_varchar2_table(1137) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(1138) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(1139) := '2030202D38707820302030202366616330313820696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1140) := '6368696C6428203829207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1141) := '654C6973742D6974656D3A6E74682D6368696C64282038292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1142) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366313966366420696E7365743B0D0A';
wwv_flow_api.g_varchar2_table(1143) := '7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1144) := '6C6F723A20236539356235343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B';
wwv_flow_api.g_varchar2_table(1145) := '0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1146) := '392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365663836383120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(1147) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1148) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1149) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1150) := '6572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365653861613920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1151) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1152) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(1153) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1154) := '7820302030202364363766623420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1155) := '20313229207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1156) := '2D6974656D3A6E74682D6368696C6428203132292061207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1157) := '6467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339653639623320696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1158) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1159) := '723A20233561363861643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0D';
wwv_flow_api.g_varchar2_table(1160) := '0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_api.g_varchar2_table(1161) := '332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337633837626520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(1162) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1163) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1164) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1165) := '6572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339316131623020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1166) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1167) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(1168) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1169) := '7820302030202338633965616420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1170) := '20313629207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1171) := '2D6974656D3A6E74682D6368696C6428203136292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1172) := '6467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338356336656120696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1173) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1174) := '723A20233432633564393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0D';
wwv_flow_api.g_varchar2_table(1175) := '0A2020636F6C6F723A20236561666166643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_api.g_varchar2_table(1176) := '372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332376163633120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(1177) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1178) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1179) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1180) := '6572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333386238623620696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1181) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1182) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0D0A2020636F6C6F723A20236633666266383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(1183) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1184) := '7820302030202338376365623420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1185) := '20323029207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1186) := '2D6974656D3A6E74682D6368696C6428203230292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1187) := '6467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337656239356220696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1188) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1189) := '723A20236534653537353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0D';
wwv_flow_api.g_varchar2_table(1190) := '0A2020636F6C6F723A20233534353533393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(1191) := '312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364626463346220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(1192) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1193) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0D0A2020636F6C6F723A20233661356333343B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1194) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1195) := '6572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366626361336320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1196) := '42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1197) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(1198) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1199) := '7820302030202366356239393320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1200) := '20323429207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1201) := '2D6974656D3A6E74682D6368696C6428203234292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1202) := '6467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336137613320696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1203) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1204) := '723A20236564376461303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0D';
wwv_flow_api.g_varchar2_table(1205) := '0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(1206) := '352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336161633120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(1207) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1208) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1209) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1210) := '6572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365316130633720696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1211) := '42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1212) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0D0A2020636F6C6F723A20236637663366393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(1213) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1214) := '7820302030202362343932633120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1215) := '20323829207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1216) := '2D6974656D3A6E74682D6368696C6428203238292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1217) := '6467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339646135636520696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1218) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1219) := '723A20236266633864313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0D';
wwv_flow_api.g_varchar2_table(1220) := '0A2020636F6C6F723A20233561363236393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(1221) := '392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361316165626220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(1222) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1223) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1224) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1225) := '6572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361396236633220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1226) := '42616467654C6973742D6974656D3A6E74682D6368696C642820333129207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1227) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203331292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(1228) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1229) := '7820302030202334636137643820696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1230) := '20333229207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1231) := '2D6974656D3A6E74682D6368696C6428203332292061207B0D0A2020636F6C6F723A20236365653065333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1232) := '6467654C6973742D6974656D3A6E74682D6368696C64282033322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202331356364653920696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1233) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1234) := '723A20233239616361393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203333292061207B0D';
wwv_flow_api.g_varchar2_table(1235) := '0A2020636F6C6F723A20236438653265323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033';
wwv_flow_api.g_varchar2_table(1236) := '332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333396366636320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(1237) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1238) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203334292061207B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1239) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033342920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1240) := '6572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334376330393420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1241) := '42616467654C6973742D6974656D3A6E74682D6368696C642820333529207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1242) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203335292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(1243) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1244) := '7820302030202339306261373720696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1245) := '20333629207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1246) := '2D6974656D3A6E74682D6368696C6428203336292061207B0D0A2020636F6C6F723A20233236323630373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1247) := '6467654C6973742D6974656D3A6E74682D6368696C64282033362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361616162333420696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1248) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333729207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1249) := '723A20236532623934333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203337292061207B0D';
wwv_flow_api.g_varchar2_table(1250) := '0A2020636F6C6F723A20233365326530313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033';
wwv_flow_api.g_varchar2_table(1251) := '372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364316134323020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(1252) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1253) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203338292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1254) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033382920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1255) := '6572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364653932363220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1256) := '42616467654C6973742D6974656D3A6E74682D6368696C642820333929207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1257) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203339292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(1258) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1259) := '7820302030202364633739373420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1260) := '20343029207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1261) := '2D6974656D3A6E74682D6368696C6428203430292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1262) := '6467654C6973742D6974656D3A6E74682D6368696C64282034302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364633763393920696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1263) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1264) := '723A20236236346638643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203431292061207B0D';
wwv_flow_api.g_varchar2_table(1265) := '0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034';
wwv_flow_api.g_varchar2_table(1266) := '312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202363353733613520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(1267) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1268) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203432292061207B0D0A2020636F6C6F723A20236464643864663B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1269) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034322920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1270) := '6572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339343539616320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1271) := '42616467654C6973742D6974656D3A6E74682D6368696C642820343329207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1272) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203433292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(1273) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1274) := '7820302030202336643739623320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1275) := '20343429207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1276) := '2D6974656D3A6E74682D6368696C6428203434292061207B0D0A2020636F6C6F723A20233263333533643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1277) := '6467654C6973742D6974656D3A6E74682D6368696C64282034342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202362616331633820696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1278) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1279) := '723A20233633373838393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203435292061207B0D';
wwv_flow_api.g_varchar2_table(1280) := '0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034';
wwv_flow_api.g_varchar2_table(1281) := '352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337653931613120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C';
wwv_flow_api.g_varchar2_table(1282) := '61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A2023323439';
wwv_flow_api.g_varchar2_table(1283) := '3263653B0D0A2020636F6C6F723A20233234393263653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1284) := '2D6368696C6428203129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1285) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A2023333039';
wwv_flow_api.g_varchar2_table(1286) := '6664623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D4261646765';
wwv_flow_api.g_varchar2_table(1287) := '4C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233131613162383B0D0A2020636F6C6F723A20233131613162383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1288) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1289) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1290) := '236534663966643B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(1291) := '67654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233239616161383B0D0A2020636F6C6F723A20233239616161383B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(1292) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D77726170202E742D';
wwv_flow_api.g_varchar2_table(1293) := '42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329';
wwv_flow_api.g_varchar2_table(1294) := '202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236630666366623B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263';
wwv_flow_api.g_varchar2_table(1295) := '756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1296) := '35396337373B0D0A2020636F6C6F723A20233335396337373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1297) := '74682D6368696C6428203429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(1298) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236630666166363B0D0A20206261636B67726F756E642D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1299) := '63616638353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D426164';
wwv_flow_api.g_varchar2_table(1300) := '67654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233733623334643B0D0A2020636F6C6F723A20233733623334643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1301) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1302) := '6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1303) := '3A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1304) := '616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236439646133653B0D0A2020636F6C6F723A20236439646133653B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1305) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D77726170202E';
wwv_flow_api.g_varchar2_table(1306) := '742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1307) := '3629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233261326130383B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1308) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1309) := '236661633733313B0D0A2020636F6C6F723A20236661633733313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1310) := '3A6E74682D6368696C6428203729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1311) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233434333330323B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1312) := '236662636534613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42';
wwv_flow_api.g_varchar2_table(1313) := '616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236562373232373B0D0A2020636F6C6F723A20236562373232373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_api.g_varchar2_table(1314) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(1315) := '654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1316) := '6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(1317) := '2D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236536343533643B0D0A2020636F6C6F723A20236536343533643B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1318) := '626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D77726170';
wwv_flow_api.g_varchar2_table(1319) := '202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1320) := '28203929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1321) := '63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1322) := '723A20236535343737383B0D0A2020636F6C6F723A20236535343737383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1323) := '74656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1324) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1325) := '6C6F723A20236538356438383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131';
wwv_flow_api.g_varchar2_table(1326) := '29202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236334343539323B0D0A2020636F6C6F723A20236334343539323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(1327) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F647920';
wwv_flow_api.g_varchar2_table(1328) := '2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C7565206120';
wwv_flow_api.g_varchar2_table(1329) := '7B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1330) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233736343538613B0D0A2020636F6C6F723A2023373634';
wwv_flow_api.g_varchar2_table(1331) := '3538613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467';
wwv_flow_api.g_varchar2_table(1332) := '654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1333) := '3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236636663066383B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1334) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C7565207B0D0A2020';
wwv_flow_api.g_varchar2_table(1335) := '626F726465722D636F6C6F723A20233466356339663B0D0A2020636F6C6F723A20233466356339663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1336) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42';
wwv_flow_api.g_varchar2_table(1337) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261';
wwv_flow_api.g_varchar2_table(1338) := '636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1339) := '682D6368696C642820313429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236130616462613B0D0A2020636F6C6F723A20236130616462613B0D0A7D0D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1340) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1341) := '6C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1342) := '73742D76616C75652061207B0D0A2020636F6C6F723A20233331336134343B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_api.g_varchar2_table(1343) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233632373838613B0D0A2020';
wwv_flow_api.g_varchar2_table(1344) := '636F6C6F723A20233632373838613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1345) := '313529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(1346) := '67654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A';
wwv_flow_api.g_varchar2_table(1347) := '7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1348) := '76616C7565207B0D0A2020626F726465722D636F6C6F723A20233434613864653B0D0A2020636F6C6F723A20233434613864653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1349) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1350) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1351) := '666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1352) := '6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233264626564343B0D0A2020636F6C6F723A20233264626564343B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1353) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D77726170202E742D42';
wwv_flow_api.g_varchar2_table(1354) := '616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729';
wwv_flow_api.g_varchar2_table(1355) := '202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236561666166643B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263';
wwv_flow_api.g_varchar2_table(1356) := '756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1357) := '3434633663333B0D0A2020636F6C6F723A20233434633663333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1358) := '6E74682D6368696C642820313829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1359) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236633666366633B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1360) := '20233538636363393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E74';
wwv_flow_api.g_varchar2_table(1361) := '2D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233531623839323B0D0A2020636F6C6F723A20233531623839323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1362) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1363) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C75652061207B0D0A20';
wwv_flow_api.g_varchar2_table(1364) := '20636F6C6F723A20236633666266383B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(1365) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233863633136643B0D0A2020636F6C6F723A20233863633136643B';
wwv_flow_api.g_varchar2_table(1366) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1367) := '742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1368) := '2D6368696C642820323029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(1369) := '654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C7565207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1370) := '65722D636F6C6F723A20236530653036303B0D0A2020636F6C6F723A20236530653036303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1371) := '654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1372) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233534353533393B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1373) := '6F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1374) := '696C642820323229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236662643135353B0D0A2020636F6C6F723A20236662643135353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1375) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C';
wwv_flow_api.g_varchar2_table(1376) := '0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(1377) := '616C75652061207B0D0A2020636F6C6F723A20233661356333343B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1378) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236565386234643B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1379) := '723A20236565386234643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920';
wwv_flow_api.g_varchar2_table(1380) := '2E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1381) := '73742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A62';
wwv_flow_api.g_varchar2_table(1382) := '6F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C75';
wwv_flow_api.g_varchar2_table(1383) := '65207B0D0A2020626F726465722D636F6C6F723A20236561363636303B0D0A2020636F6C6F723A20236561363636303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(1384) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(1385) := '6C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1386) := '3B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1387) := '6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236539363738663B0D0A2020636F6C6F723A20236539363738663B0D0A7D0D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(1388) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D77726170202E742D4261646765';
wwv_flow_api.g_varchar2_table(1389) := '4C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D';
wwv_flow_api.g_varchar2_table(1390) := '42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_api.g_varchar2_table(1391) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A202363653636';
wwv_flow_api.g_varchar2_table(1392) := '61353B0D0A2020636F6C6F723A20236365363661353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1393) := '6368696C642820323629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1394) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236435';
wwv_flow_api.g_varchar2_table(1395) := '373962313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D426164';
wwv_flow_api.g_varchar2_table(1396) := '67654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233932363161363B0D0A2020636F6C6F723A20233932363161363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1397) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(1398) := '4C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1399) := '6F723A20236637663366393B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(1400) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233661373762353B0D0A2020636F6C6F723A20233661373762353B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1401) := '0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D7772';
wwv_flow_api.g_varchar2_table(1402) := '6170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1403) := '6C642820323829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1404) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1405) := '6F6C6F723A20236230626263363B0D0A2020636F6C6F723A20236230626263363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1406) := '742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1407) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233561363236393B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1408) := '2D636F6C6F723A20236266633864313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1409) := '20333029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233763393161323B0D0A2020636F6C6F723A20233763393161323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C';
wwv_flow_api.g_varchar2_table(1410) := '61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F';
wwv_flow_api.g_varchar2_table(1411) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C7565';
wwv_flow_api.g_varchar2_table(1412) := '2061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1413) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233237383062303B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1414) := '3237383062303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129202E742D42';
wwv_flow_api.g_varchar2_table(1415) := '616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1416) := '74656D3A6E74682D6368696C642820333129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A626F647920';
wwv_flow_api.g_varchar2_table(1417) := '2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229202E742D42616467654C6973742D76616C7565207B0D';
wwv_flow_api.g_varchar2_table(1418) := '0A2020626F726465722D636F6C6F723A20233066386661333B0D0A2020636F6C6F723A20233066386661333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(1419) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(1420) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236365653065333B0D0A20';
wwv_flow_api.g_varchar2_table(1421) := '206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1422) := '3A6E74682D6368696C642820333329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233234393739353B0D0A2020636F6C6F723A20233234393739353B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1423) := '6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329202E742D42616467654C6973742D77726170202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1424) := '2D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329202E742D42616467';
wwv_flow_api.g_varchar2_table(1425) := '654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236438653265323B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42';
wwv_flow_api.g_varchar2_table(1426) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233266386236393B0D';
wwv_flow_api.g_varchar2_table(1427) := '0A2020636F6C6F723A20233266386236393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1428) := '642820333429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1429) := '42616467654C6973742D6974656D3A6E74682D6368696C642820333429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236438653164653B0D0A20206261636B67726F756E642D636F6C6F723A2023333639653738';
wwv_flow_api.g_varchar2_table(1430) := '3B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333529202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1431) := '73742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233638393734643B0D0A2020636F6C6F723A20233638393734643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1432) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1433) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1434) := '236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(1435) := '67654C6973742D6974656D3A6E74682D6368696C642820333629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236265626633613B0D0A2020636F6C6F723A20236265626633613B0D0A7D0D0A626F64';
wwv_flow_api.g_varchar2_table(1436) := '79202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333629202E742D42616467654C6973742D77726170202E';
wwv_flow_api.g_varchar2_table(1437) := '742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1438) := '333629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233236323630373B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1439) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1440) := '3A20236465623132643B0D0A2020636F6C6F723A20236465623132643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1441) := '656D3A6E74682D6368696C642820333729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1442) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233365326530313B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1443) := '6F723A20236532623934333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829';
wwv_flow_api.g_varchar2_table(1444) := '202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236339363732613B0D0A2020636F6C6F723A20236339363732613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E74';
wwv_flow_api.g_varchar2_table(1445) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1446) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829202E742D42616467654C6973742D76616C75652061207B';
wwv_flow_api.g_varchar2_table(1447) := '0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1448) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236364336533373B0D0A2020636F6C6F723A202363643365';
wwv_flow_api.g_varchar2_table(1449) := '33373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929202E742D4261646765';
wwv_flow_api.g_varchar2_table(1450) := '4C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1451) := '6E74682D6368696C642820333929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1452) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029202E742D42616467654C6973742D76616C7565207B0D0A202062';
wwv_flow_api.g_varchar2_table(1453) := '6F726465722D636F6C6F723A20236362343036623B0D0A2020636F6C6F723A20236362343036623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1454) := '616467654C6973742D6974656D3A6E74682D6368696C642820343029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1455) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1456) := '6B67726F756E642D636F6C6F723A20236431353437613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1457) := '2D6368696C642820343129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236136343538303B0D0A2020636F6C6F723A20236136343538303B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1458) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(1459) := '75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1460) := '742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1461) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233639336537623B0D0A202063';
wwv_flow_api.g_varchar2_table(1462) := '6F6C6F723A20233639336537623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034';
wwv_flow_api.g_varchar2_table(1463) := '3229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1464) := '654C6973742D6974656D3A6E74682D6368696C642820343229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236464643864663B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D';
wwv_flow_api.g_varchar2_table(1465) := '0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(1466) := '616C7565207B0D0A2020626F726465722D636F6C6F723A20233438353438623B0D0A2020636F6C6F723A20233438353438623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(1467) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1468) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(1469) := '3665363B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1470) := '73742D6974656D3A6E74682D6368696C642820343429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233866396261363B0D0A2020636F6C6F723A20233866396261363B0D0A7D0D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(1471) := '2D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429202E742D42616467654C6973742D77726170202E742D4261';
wwv_flow_api.g_varchar2_table(1472) := '6467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034342920';
wwv_flow_api.g_varchar2_table(1473) := '2E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233263333533643B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(1474) := '6C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A202335';
wwv_flow_api.g_varchar2_table(1475) := '38366237613B0D0A2020636F6C6F723A20233538366237613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1476) := '74682D6368696C642820343529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(1477) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1478) := '233633373838393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1479) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1480) := '42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335626233653320696E7365743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1481) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1482) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1483) := '656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332616432656220696E7365743B0D0A7D0D0A2E742D43617264732D2D63';
wwv_flow_api.g_varchar2_table(1484) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1485) := '6467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1486) := '2820332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334636434643120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1487) := '616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1488) := '3A6E74682D6368696C64282034292061207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D426164';
wwv_flow_api.g_varchar2_table(1489) := '67654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335386336396520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1490) := '6D3A6E74682D6368696C6428203529207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1491) := '35292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A';
wwv_flow_api.g_varchar2_table(1492) := '686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339646361383320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1493) := '203629207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1494) := '6C6F723A20233261326130383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0D0A202062';
wwv_flow_api.g_varchar2_table(1495) := '6F782D736861646F773A2030202D38707820302030202364346435323920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1496) := '6B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0D0A2020636F6C6F723A2023343433333032';
wwv_flow_api.g_varchar2_table(1497) := '3B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(1498) := '202D38707820302030202366616330313820696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1499) := '723A20236564383133653B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1500) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366';
null;
end;
/
begin
wwv_flow_api.g_varchar2_table(1501) := '313966366420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D';
wwv_flow_api.g_varchar2_table(1502) := '0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65';
wwv_flow_api.g_varchar2_table(1503) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365663836383120696E7365743B';
wwv_flow_api.g_varchar2_table(1504) := '0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1505) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1506) := '6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365653861613920696E7365743B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(1507) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1508) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1509) := '6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364363766623420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C';
wwv_flow_api.g_varchar2_table(1510) := '6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1511) := '67654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1512) := '282031322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339653639623320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1513) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1514) := '656D3A6E74682D6368696C6428203133292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E74';
wwv_flow_api.g_varchar2_table(1515) := '2D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337633837626520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1516) := '2D6974656D3A6E74682D6368696C642820313429207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1517) := '696C6428203134292061207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1518) := '742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339316131623020696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1519) := '2D6368696C642820313529207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920';
wwv_flow_api.g_varchar2_table(1520) := '61207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F';
wwv_flow_api.g_varchar2_table(1521) := '766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338633965616420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_api.g_varchar2_table(1522) := '3629207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1523) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020';
wwv_flow_api.g_varchar2_table(1524) := '626F782D736861646F773A2030202D38707820302030202338356336656120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0D0A202062';
wwv_flow_api.g_varchar2_table(1525) := '61636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0D0A2020636F6C6F723A2023656166';
wwv_flow_api.g_varchar2_table(1526) := '6166643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(1527) := '773A2030202D38707820302030202332376163633120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1528) := '2D636F6C6F723A20233538636363393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1529) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D387078';
wwv_flow_api.g_varchar2_table(1530) := '20302030202333386238623620696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1531) := '3633626639643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0D0A2020636F6C6F723A20236633666266383B0D0A7D0D0A2E742D43617264732D';
wwv_flow_api.g_varchar2_table(1532) := '2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D387078203020302023383763';
wwv_flow_api.g_varchar2_table(1533) := '65623420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A';
wwv_flow_api.g_varchar2_table(1534) := '7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65';
wwv_flow_api.g_varchar2_table(1535) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337656239356220696E736574';
wwv_flow_api.g_varchar2_table(1536) := '3B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1537) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0D0A2020636F6C6F723A20233534353533393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_api.g_varchar2_table(1538) := '4C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364626463346220696E7365743B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(1539) := '43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A2E742D43617264732D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1540) := '697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0D0A2020636F6C6F723A20233661356333343B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1541) := '3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366626361336320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1542) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1543) := '6467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1544) := '64282032332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366356239393320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E74';
wwv_flow_api.g_varchar2_table(1545) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1546) := '74656D3A6E74682D6368696C6428203234292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E';
wwv_flow_api.g_varchar2_table(1547) := '742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336137613320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1548) := '742D6974656D3A6E74682D6368696C642820323529207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1549) := '68696C6428203235292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1550) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336161633120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1551) := '682D6368696C642820323629207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629';
wwv_flow_api.g_varchar2_table(1552) := '2061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A68';
wwv_flow_api.g_varchar2_table(1553) := '6F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365316130633720696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1554) := '323729207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0D0A202063';
wwv_flow_api.g_varchar2_table(1555) := '6F6C6F723A20236637663366393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0D0A20';
wwv_flow_api.g_varchar2_table(1556) := '20626F782D736861646F773A2030202D38707820302030202362343932633120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0D0A2020';
wwv_flow_api.g_varchar2_table(1557) := '6261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1558) := '666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(1559) := '6F773A2030202D38707820302030202339646135636520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1560) := '642D636F6C6F723A20236266633864313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0D0A2020636F6C6F723A20233561363236393B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1561) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1562) := '7820302030202361316165626220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1563) := '233862396461643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4361726473';
wwv_flow_api.g_varchar2_table(1564) := '2D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870782030203020236139';
wwv_flow_api.g_varchar2_table(1565) := '6236633220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D';
wwv_flow_api.g_varchar2_table(1566) := '0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203331292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_api.g_varchar2_table(1567) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334636137643820696E7365';
wwv_flow_api.g_varchar2_table(1568) := '743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A2E742D4361';
wwv_flow_api.g_varchar2_table(1569) := '7264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203332292061207B0D0A2020636F6C6F723A20236365653065333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467';
wwv_flow_api.g_varchar2_table(1570) := '654C6973742D6974656D3A6E74682D6368696C64282033322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202331356364653920696E7365743B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(1571) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A7D0D0A2E742D43617264732D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1572) := '72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203333292061207B0D0A2020636F6C6F723A20236438653265323B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1573) := '6D3A6E74682D6368696C64282033332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333396366636320696E7365743B0D0A7D0D0A2E742D43617264732D2D63';
wwv_flow_api.g_varchar2_table(1574) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1575) := '616467654C6973742D6974656D3A6E74682D6368696C6428203334292061207B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1576) := '6C64282033342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334376330393420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_api.g_varchar2_table(1577) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820333529207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1578) := '6974656D3A6E74682D6368696C6428203335292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203335292061';
wwv_flow_api.g_varchar2_table(1579) := '2E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339306261373720696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1580) := '73742D6974656D3A6E74682D6368696C642820333629207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1581) := '6368696C6428203336292061207B0D0A2020636F6C6F723A20233236323630373B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033362920612E742D42616467654C';
wwv_flow_api.g_varchar2_table(1582) := '6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361616162333420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1583) := '74682D6368696C642820333729207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203337';
wwv_flow_api.g_varchar2_table(1584) := '292061207B0D0A2020636F6C6F723A20233365326530313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033372920612E742D42616467654C6973742D777261703A';
wwv_flow_api.g_varchar2_table(1585) := '686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364316134323020696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1586) := '20333829207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203338292061207B0D0A2020';
wwv_flow_api.g_varchar2_table(1587) := '636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033382920612E742D42616467654C6973742D777261703A686F766572207B0D0A';
wwv_flow_api.g_varchar2_table(1588) := '2020626F782D736861646F773A2030202D38707820302030202364653932363220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929207B0D0A20';
wwv_flow_api.g_varchar2_table(1589) := '206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203339292061207B0D0A2020636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(1590) := '36653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(1591) := '646F773A2030202D38707820302030202364633739373420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1592) := '6E642D636F6C6F723A20236431353437613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203430292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D';
wwv_flow_api.g_varchar2_table(1593) := '0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38';
wwv_flow_api.g_varchar2_table(1594) := '707820302030202364633763393920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1595) := '20236236346638643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203431292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1596) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202363';
wwv_flow_api.g_varchar2_table(1597) := '353733613520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B';
wwv_flow_api.g_varchar2_table(1598) := '0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203432292061207B0D0A2020636F6C6F723A20236464643864663B0D0A7D0D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1599) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339343539616320696E73';
wwv_flow_api.g_varchar2_table(1600) := '65743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(1601) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203433292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1602) := '67654C6973742D6974656D3A6E74682D6368696C64282034332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202336643739623320696E7365743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1603) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A7D0D0A2E742D43617264732D2D636F6C';
wwv_flow_api.g_varchar2_table(1604) := '6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203434292061207B0D0A2020636F6C6F723A20233263333533643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1605) := '656D3A6E74682D6368696C64282034342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202362616331633820696E7365743B0D0A7D0D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1606) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1607) := '42616467654C6973742D6974656D3A6E74682D6368696C6428203435292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1608) := '696C64282034352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337653931613120696E7365743B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D74787420';
wwv_flow_api.g_varchar2_table(1609) := '7B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D66696C6C207B';
wwv_flow_api.g_varchar2_table(1610) := '0D0A202066696C6C3A20233330396664623B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D6272207B0D0A20207374726F6B653A20233330396664623B0D0A2020626F726465722D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1611) := '722D312D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1612) := '312D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1613) := '0D0A7D0D0A2E752D436F6C6F722D322D42472D2D747874207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A';
wwv_flow_api.g_varchar2_table(1614) := '7D0D0A2E752D436F6C6F722D322D42472D2D66696C6C207B0D0A202066696C6C3A20233133623663663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D6272207B0D0A20207374726F6B653A20233133623663663B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1615) := '6F723A20233133623663663B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D747874207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1616) := '3A20236534663966643B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D66696C6C207B0D0A202066696C6C3A20236534663966643B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D6272207B0D0A20207374726F6B653A20236534663966643B0D0A';
wwv_flow_api.g_varchar2_table(1617) := '2020626F726465722D636F6C6F723A20236534663966643B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D747874207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D6267207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1618) := '67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D66696C6C207B0D0A202066696C6C3A20233265626662633B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1619) := '3A20233265626662633B0D0A2020626F726465722D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D747874207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D';
wwv_flow_api.g_varchar2_table(1620) := '6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236630666366623B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D66696C6C207B0D0A202066696C6C3A20236630666366623B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D6272';
wwv_flow_api.g_varchar2_table(1621) := '207B0D0A20207374726F6B653A20236630666366623B0D0A2020626F726465722D636F6C6F723A20236630666366623B0D0A7D0D0A2E752D436F6C6F722D342D42472D2D747874207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1622) := '436F6C6F722D342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D436F6C6F722D342D42472D2D66696C6C207B0D0A202066696C6C3A20233363616638353B0D0A7D0D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1623) := '6C6F722D342D42472D2D6272207B0D0A20207374726F6B653A20233363616638353B0D0A2020626F726465722D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D436F6C6F722D342D46472D2D747874207B0D0A2020636F6C6F723A2023663066';
wwv_flow_api.g_varchar2_table(1624) := '6166363B0D0A7D0D0A2E752D436F6C6F722D342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236630666166363B0D0A7D0D0A2E752D436F6C6F722D342D46472D2D66696C6C207B0D0A202066696C6C3A20236630666166';
wwv_flow_api.g_varchar2_table(1625) := '363B0D0A7D0D0A2E752D436F6C6F722D342D46472D2D6272207B0D0A20207374726F6B653A20236630666166363B0D0A2020626F726465722D636F6C6F723A20236630666166363B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D747874207B0D0A20';
wwv_flow_api.g_varchar2_table(1626) := '20636F6C6F723A20233831626235663B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D66696C6C207B0D0A2020';
wwv_flow_api.g_varchar2_table(1627) := '66696C6C3A20233831626235663B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D6272207B0D0A20207374726F6B653A20233831626235663B0D0A2020626F726465722D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D436F6C6F722D352D';
wwv_flow_api.g_varchar2_table(1628) := '46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D352D4647';
wwv_flow_api.g_varchar2_table(1629) := '2D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1630) := '0A2E752D436F6C6F722D362D42472D2D747874207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1631) := '752D436F6C6F722D362D42472D2D66696C6C207B0D0A202066696C6C3A20236464646535333B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D6272207B0D0A20207374726F6B653A20236464646535333B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1632) := '236464646535333B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D747874207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A202332';
wwv_flow_api.g_varchar2_table(1633) := '61326130383B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D66696C6C207B0D0A202066696C6C3A20233261326130383B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D6272207B0D0A20207374726F6B653A20233261326130383B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1634) := '726465722D636F6C6F723A20233261326130383B0D0A7D0D0A2E752D436F6C6F722D372D42472D2D747874207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A2E752D436F6C6F722D372D42472D2D6267207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1635) := '6E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D436F6C6F722D372D42472D2D66696C6C207B0D0A202066696C6C3A20236662636534613B0D0A7D0D0A2E752D436F6C6F722D372D42472D2D6272207B0D0A20207374726F6B653A202366';
wwv_flow_api.g_varchar2_table(1636) := '62636534613B0D0A2020626F726465722D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D747874207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D6267207B';
wwv_flow_api.g_varchar2_table(1637) := '0D0A20206261636B67726F756E642D636F6C6F723A20233434333330323B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D66696C6C207B0D0A202066696C6C3A20233434333330323B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1638) := '20207374726F6B653A20233434333330323B0D0A2020626F726465722D636F6C6F723A20233434333330323B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D747874207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1639) := '722D382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D66696C6C207B0D0A202066696C6C3A20236564383133653B0D0A7D0D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1640) := '382D42472D2D6272207B0D0A20207374726F6B653A20236564383133653B0D0A2020626F726465722D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D436F6C6F722D382D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1641) := '0D0A7D0D0A2E752D436F6C6F722D382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D382D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(1642) := '7D0D0A2E752D436F6C6F722D382D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D747874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1643) := '6F723A20236539356235343B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D66696C6C207B0D0A202066696C6C';
wwv_flow_api.g_varchar2_table(1644) := '3A20236539356235343B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D6272207B0D0A20207374726F6B653A20236539356235343B0D0A2020626F726465722D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D';
wwv_flow_api.g_varchar2_table(1645) := '747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D6669';
wwv_flow_api.g_varchar2_table(1646) := '6C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1647) := '436F6C6F722D31302D42472D2D747874207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1648) := '436F6C6F722D31302D42472D2D66696C6C207B0D0A202066696C6C3A20236538356438383B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D6272207B0D0A20207374726F6B653A20236538356438383B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1649) := '236538356438383B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1650) := '236666666666663B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(1651) := '2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D747874207B0D0A2020636F6C6F723A20233230383362383B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D6267207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1652) := '636B67726F756E642D636F6C6F723A20233230383362383B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D66696C6C207B0D0A202066696C6C3A20233230383362383B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D6272207B0D0A20207374';
wwv_flow_api.g_varchar2_table(1653) := '726F6B653A20233230383362383B0D0A2020626F726465722D636F6C6F723A20233230383362383B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1654) := '312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1655) := '312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D42472D2D747874207B0D0A2020636F6C6F723A2023306638646130';
wwv_flow_api.g_varchar2_table(1656) := '3B0D0A7D0D0A2E752D436F6C6F722D31322D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233066386461303B0D0A7D0D0A2E752D436F6C6F722D31322D42472D2D66696C6C207B0D0A202066696C6C3A2023306638646130';
wwv_flow_api.g_varchar2_table(1657) := '3B0D0A7D0D0A2E752D436F6C6F722D31322D42472D2D6272207B0D0A20207374726F6B653A20233066386461303B0D0A2020626F726465722D636F6C6F723A20233066386461303B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D747874207B0D0A';
wwv_flow_api.g_varchar2_table(1658) := '2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D66696C6C207B0D';
wwv_flow_api.g_varchar2_table(1659) := '0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1660) := '722D31332D42472D2D747874207B0D0A2020636F6C6F723A20233234393639343B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233234393639343B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1661) := '722D31332D42472D2D66696C6C207B0D0A202066696C6C3A20233234393639343B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D6272207B0D0A20207374726F6B653A20233234393639343B0D0A2020626F726465722D636F6C6F723A2023323439';
wwv_flow_api.g_varchar2_table(1662) := '3639343B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1663) := '6666663B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1664) := '726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D747874207B0D0A2020636F6C6F723A20233266383936383B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D6267207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1665) := '6F756E642D636F6C6F723A20233266383936383B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D66696C6C207B0D0A202066696C6C3A20233266383936383B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1666) := '3A20233266383936383B0D0A2020626F726465722D636F6C6F723A20233266383936383B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31342D4647';
wwv_flow_api.g_varchar2_table(1667) := '2D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31342D4647';
wwv_flow_api.g_varchar2_table(1668) := '2D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31352D42472D2D747874207B0D0A2020636F6C6F723A20233637613234353B0D0A7D';
wwv_flow_api.g_varchar2_table(1669) := '0D0A2E752D436F6C6F722D31352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233637613234353B0D0A7D0D0A2E752D436F6C6F722D31352D42472D2D66696C6C207B0D0A202066696C6C3A20233637613234353B0D0A7D';
wwv_flow_api.g_varchar2_table(1670) := '0D0A2E752D436F6C6F722D31352D42472D2D6272207B0D0A20207374726F6B653A20233637613234353B0D0A2020626F726465722D636F6C6F723A20233637613234353B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D747874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1671) := '6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D66696C6C207B0D0A202066';
wwv_flow_api.g_varchar2_table(1672) := '696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D3136';
wwv_flow_api.g_varchar2_table(1673) := '2D42472D2D747874207B0D0A2020636F6C6F723A20236434643532393B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236434643532393B0D0A7D0D0A2E752D436F6C6F722D3136';
wwv_flow_api.g_varchar2_table(1674) := '2D42472D2D66696C6C207B0D0A202066696C6C3A20236434643532393B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D6272207B0D0A20207374726F6B653A20236434643532393B0D0A2020626F726465722D636F6C6F723A20236434643532393B';
wwv_flow_api.g_varchar2_table(1675) := '0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D747874207B0D0A2020636F6C6F723A20233534353531303B0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233534353531303B';
wwv_flow_api.g_varchar2_table(1676) := '0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D66696C6C207B0D0A202066696C6C3A20233534353531303B0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D6272207B0D0A20207374726F6B653A20233534353531303B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1677) := '2D636F6C6F723A20233534353531303B0D0A7D0D0A2E752D436F6C6F722D31372D42472D2D747874207B0D0A2020636F6C6F723A20236661633031383B0D0A7D0D0A2E752D436F6C6F722D31372D42472D2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1678) := '2D636F6C6F723A20236661633031383B0D0A7D0D0A2E752D436F6C6F722D31372D42472D2D66696C6C207B0D0A202066696C6C3A20236661633031383B0D0A7D0D0A2E752D436F6C6F722D31372D42472D2D6272207B0D0A20207374726F6B653A202366';
wwv_flow_api.g_varchar2_table(1679) := '61633031383B0D0A2020626F726465722D636F6C6F723A20236661633031383B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D747874207B0D0A2020636F6C6F723A20233736353930333B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D6267';
wwv_flow_api.g_varchar2_table(1680) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233736353930333B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D66696C6C207B0D0A202066696C6C3A20233736353930333B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D6272';
wwv_flow_api.g_varchar2_table(1681) := '207B0D0A20207374726F6B653A20233736353930333B0D0A2020626F726465722D636F6C6F723A20233736353930333B0D0A7D0D0A2E752D436F6C6F722D31382D42472D2D747874207B0D0A2020636F6C6F723A20236533363431353B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1682) := '2D436F6C6F722D31382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236533363431353B0D0A7D0D0A2E752D436F6C6F722D31382D42472D2D66696C6C207B0D0A202066696C6C3A20236533363431353B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1683) := '2D436F6C6F722D31382D42472D2D6272207B0D0A20207374726F6B653A20236533363431353B0D0A2020626F726465722D636F6C6F723A20236533363431353B0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D747874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1684) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D66696C6C207B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1685) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D42472D';
wwv_flow_api.g_varchar2_table(1686) := '2D747874207B0D0A2020636F6C6F723A20236533333032373B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236533333032373B0D0A7D0D0A2E752D436F6C6F722D31392D42472D';
wwv_flow_api.g_varchar2_table(1687) := '2D66696C6C207B0D0A202066696C6C3A20236533333032373B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D6272207B0D0A20207374726F6B653A20236533333032373B0D0A2020626F726465722D636F6C6F723A20236533333032373B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1688) := '0A2E752D436F6C6F722D31392D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1689) := '0A2E752D436F6C6F722D31392D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1690) := '6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D42472D2D747874207B0D0A2020636F6C6F723A20236532333036373B0D0A7D0D0A2E752D436F6C6F722D32302D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1691) := '6F723A20236532333036373B0D0A7D0D0A2E752D436F6C6F722D32302D42472D2D66696C6C207B0D0A202066696C6C3A20236532333036373B0D0A7D0D0A2E752D436F6C6F722D32302D42472D2D6272207B0D0A20207374726F6B653A20236532333036';
wwv_flow_api.g_varchar2_table(1692) := '373B0D0A2020626F726465722D636F6C6F723A20236532333036373B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D6267207B0D0A';
wwv_flow_api.g_varchar2_table(1693) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1694) := '20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32312D42472D2D747874207B0D0A2020636F6C6F723A20233837633765613B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1695) := '6F722D32312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233837633765613B0D0A7D0D0A2E752D436F6C6F722D32312D42472D2D66696C6C207B0D0A202066696C6C3A20233837633765613B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1696) := '6F722D32312D42472D2D6272207B0D0A20207374726F6B653A20233837633765613B0D0A2020626F726465722D636F6C6F723A20233837633765613B0D0A7D0D0A2E752D436F6C6F722D32312D46472D2D747874207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1697) := '666666663B0D0A7D0D0A2E752D436F6C6F722D32312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32312D46472D2D66696C6C207B0D0A202066696C6C3A20236666';
wwv_flow_api.g_varchar2_table(1698) := '666666663B0D0A7D0D0A2E752D436F6C6F722D32312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D747874';
wwv_flow_api.g_varchar2_table(1699) := '207B0D0A2020636F6C6F723A20233538646366303B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233538646366303B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D66696C';
wwv_flow_api.g_varchar2_table(1700) := '6C207B0D0A202066696C6C3A20233538646366303B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D6272207B0D0A20207374726F6B653A20233538646366303B0D0A2020626F726465722D636F6C6F723A20233538646366303B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1701) := '436F6C6F722D32322D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1702) := '436F6C6F722D32322D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1703) := '236666666666663B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D747874207B0D0A2020636F6C6F723A20233735646564633B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1704) := '233735646564633B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D66696C6C207B0D0A202066696C6C3A20233735646564633B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D6272207B0D0A20207374726F6B653A20233735646564633B0D0A';
wwv_flow_api.g_varchar2_table(1705) := '2020626F726465722D636F6C6F723A20233735646564633B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D6267207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1706) := '636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D6272207B0D0A20207374';
wwv_flow_api.g_varchar2_table(1707) := '726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D747874207B0D0A2020636F6C6F723A20233765643362343B0D0A7D0D0A2E752D436F6C6F722D32';
wwv_flow_api.g_varchar2_table(1708) := '342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233765643362343B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D66696C6C207B0D0A202066696C6C3A20233765643362343B0D0A7D0D0A2E752D436F6C6F722D32';
wwv_flow_api.g_varchar2_table(1709) := '342D42472D2D6272207B0D0A20207374726F6B653A20233765643362343B0D0A2020626F726465722D636F6C6F723A20233765643362343B0D0A7D0D0A2E752D436F6C6F722D32342D46472D2D747874207B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1710) := '3B0D0A7D0D0A2E752D436F6C6F722D32342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32342D46472D2D66696C6C207B0D0A202066696C6C3A2023666666666666';
wwv_flow_api.g_varchar2_table(1711) := '3B0D0A7D0D0A2E752D436F6C6F722D32342D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D747874207B0D0A';
wwv_flow_api.g_varchar2_table(1712) := '2020636F6C6F723A20236239643961373B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236239643961373B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D66696C6C207B0D';
wwv_flow_api.g_varchar2_table(1713) := '0A202066696C6C3A20236239643961373B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D6272207B0D0A20207374726F6B653A20236239643961373B0D0A2020626F726465722D636F6C6F723A20236239643961373B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1714) := '722D32352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1715) := '722D32352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1716) := '6666663B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D747874207B0D0A2020636F6C6F723A20236565656561393B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A2023656565';
wwv_flow_api.g_varchar2_table(1717) := '6561393B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D66696C6C207B0D0A202066696C6C3A20236565656561393B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D6272207B0D0A20207374726F6B653A20236565656561393B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1718) := '726465722D636F6C6F723A20236565656561393B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D747874207B0D0A2020636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D6267207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1719) := '6F756E642D636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D66696C6C207B0D0A202066696C6C3A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1720) := '3A20233766383031383B0D0A2020626F726465722D636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D747874207B0D0A2020636F6C6F723A20236664653961653B0D0A7D0D0A2E752D436F6C6F722D32372D4247';
wwv_flow_api.g_varchar2_table(1721) := '2D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236664653961653B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D66696C6C207B0D0A202066696C6C3A20236664653961653B0D0A7D0D0A2E752D436F6C6F722D32372D4247';
wwv_flow_api.g_varchar2_table(1722) := '2D2D6272207B0D0A20207374726F6B653A20236664653961653B0D0A2020626F726465722D636F6C6F723A20236664653961653B0D0A7D0D0A2E752D436F6C6F722D32372D46472D2D747874207B0D0A2020636F6C6F723A20236138376530343B0D0A7D';
wwv_flow_api.g_varchar2_table(1723) := '0D0A2E752D436F6C6F722D32372D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D32372D46472D2D66696C6C207B0D0A202066696C6C3A20236138376530343B0D0A7D';
wwv_flow_api.g_varchar2_table(1724) := '0D0A2E752D436F6C6F722D32372D46472D2D6272207B0D0A20207374726F6B653A20236138376530343B0D0A2020626F726465722D636F6C6F723A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D747874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1725) := '6C6F723A20236636626539623B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236636626539623B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D66696C6C207B0D0A202066';
wwv_flow_api.g_varchar2_table(1726) := '696C6C3A20236636626539623B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D6272207B0D0A20207374726F6B653A20236636626539623B0D0A2020626F726465722D636F6C6F723A20236636626539623B0D0A7D0D0A2E752D436F6C6F722D3238';
wwv_flow_api.g_varchar2_table(1727) := '2D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D3238';
wwv_flow_api.g_varchar2_table(1728) := '2D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1729) := '0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D747874207B0D0A2020636F6C6F723A20236635623261653B0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236635623261653B';
wwv_flow_api.g_varchar2_table(1730) := '0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D66696C6C207B0D0A202066696C6C3A20236635623261653B0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D6272207B0D0A20207374726F6B653A20236635623261653B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1731) := '2D636F6C6F723A20236635623261653B0D0A7D0D0A2E752D436F6C6F722D32392D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32392D46472D2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1732) := '2D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32392D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32392D46472D2D6272207B0D0A20207374726F6B653A202366';
wwv_flow_api.g_varchar2_table(1733) := '66666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D747874207B0D0A2020636F6C6F723A20236635623663613B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D6267';
wwv_flow_api.g_varchar2_table(1734) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236635623663613B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D66696C6C207B0D0A202066696C6C3A20236635623663613B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D6272';
wwv_flow_api.g_varchar2_table(1735) := '207B0D0A20207374726F6B653A20236635623663613B0D0A2020626F726465722D636F6C6F723A20236635623663613B0D0A7D0D0A2E752D436F6C6F722D33302D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1736) := '2D436F6C6F722D33302D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33302D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1737) := '2D436F6C6F722D33302D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D42472D2D747874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1738) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D42472D2D66696C6C207B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1739) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D46472D';
wwv_flow_api.g_varchar2_table(1740) := '2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D46472D';
wwv_flow_api.g_varchar2_table(1741) := '2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1742) := '0A2E752D436F6C6F722D33322D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1743) := '0A2E752D436F6C6F722D33322D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1744) := '6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1745) := '6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D46472D2D6272207B0D0A20207374726F6B653A20236666666666';
wwv_flow_api.g_varchar2_table(1746) := '663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D42472D2D6267207B0D0A';
wwv_flow_api.g_varchar2_table(1747) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D42472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1748) := '20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1749) := '6F722D33332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1750) := '6F722D33332D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D42472D2D747874207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1751) := '666666663B0D0A7D0D0A2E752D436F6C6F722D33342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D42472D2D66696C6C207B0D0A202066696C6C3A20236666';
wwv_flow_api.g_varchar2_table(1752) := '666666663B0D0A7D0D0A2E752D436F6C6F722D33342D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D46472D2D747874';
wwv_flow_api.g_varchar2_table(1753) := '207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D46472D2D66696C';
wwv_flow_api.g_varchar2_table(1754) := '6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1755) := '436F6C6F722D33352D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1756) := '436F6C6F722D33352D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1757) := '236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1758) := '236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(1759) := '2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33362D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33362D42472D2D6267207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1760) := '636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33362D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33362D42472D2D6272207B0D0A20207374';
wwv_flow_api.g_varchar2_table(1761) := '726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33362D46472D2D747874207B0D0A2020636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D33';
wwv_flow_api.g_varchar2_table(1762) := '362D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D33362D46472D2D66696C6C207B0D0A202066696C6C3A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D33';
wwv_flow_api.g_varchar2_table(1763) := '362D46472D2D6272207B0D0A20207374726F6B653A20233766383031383B0D0A2020626F726465722D636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D33372D42472D2D747874207B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1764) := '3B0D0A7D0D0A2E752D436F6C6F722D33372D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33372D42472D2D66696C6C207B0D0A202066696C6C3A2023666666666666';
wwv_flow_api.g_varchar2_table(1765) := '3B0D0A7D0D0A2E752D436F6C6F722D33372D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33372D46472D2D747874207B0D0A';
wwv_flow_api.g_varchar2_table(1766) := '2020636F6C6F723A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D33372D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D33372D46472D2D66696C6C207B0D';
wwv_flow_api.g_varchar2_table(1767) := '0A202066696C6C3A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D33372D46472D2D6272207B0D0A20207374726F6B653A20236138376530343B0D0A2020626F726465722D636F6C6F723A20236138376530343B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1768) := '722D33382D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1769) := '722D33382D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33382D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1770) := '6666663B0D0A7D0D0A2E752D436F6C6F722D33382D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1771) := '6666663B0D0A7D0D0A2E752D436F6C6F722D33382D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33382D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1772) := '726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D42472D2D6267207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1773) := '6F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D42472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1774) := '3A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D4647';
wwv_flow_api.g_varchar2_table(1775) := '2D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D4647';
wwv_flow_api.g_varchar2_table(1776) := '2D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(1777) := '0D0A2E752D436F6C6F722D34302D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(1778) := '0D0A2E752D436F6C6F722D34302D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D46472D2D747874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1779) := '6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D46472D2D66696C6C207B0D0A202066';
wwv_flow_api.g_varchar2_table(1780) := '696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D3431';
wwv_flow_api.g_varchar2_table(1781) := '2D42472D2D747874207B0D0A2020636F6C6F723A20236232646266323B0D0A7D0D0A2E752D436F6C6F722D34312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236232646266323B0D0A7D0D0A2E752D436F6C6F722D3431';
wwv_flow_api.g_varchar2_table(1782) := '2D42472D2D66696C6C207B0D0A202066696C6C3A20236232646266323B0D0A7D0D0A2E752D436F6C6F722D34312D42472D2D6272207B0D0A20207374726F6B653A20236232646266323B0D0A2020626F726465722D636F6C6F723A20236232646266323B';
wwv_flow_api.g_varchar2_table(1783) := '0D0A7D0D0A2E752D436F6C6F722D34312D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1784) := '0D0A7D0D0A2E752D436F6C6F722D34312D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1785) := '2D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34322D42472D2D747874207B0D0A2020636F6C6F723A20233837653566343B0D0A7D0D0A2E752D436F6C6F722D34322D42472D2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1786) := '2D636F6C6F723A20233837653566343B0D0A7D0D0A2E752D436F6C6F722D34322D42472D2D66696C6C207B0D0A202066696C6C3A20233837653566343B0D0A7D0D0A2E752D436F6C6F722D34322D42472D2D6272207B0D0A20207374726F6B653A202338';
wwv_flow_api.g_varchar2_table(1787) := '37653566343B0D0A2020626F726465722D636F6C6F723A20233837653566343B0D0A7D0D0A2E752D436F6C6F722D34322D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34322D46472D2D6267';
wwv_flow_api.g_varchar2_table(1788) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34322D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34322D46472D2D6272';
wwv_flow_api.g_varchar2_table(1789) := '207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34332D42472D2D747874207B0D0A2020636F6C6F723A20233965653865363B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1790) := '2D436F6C6F722D34332D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233965653865363B0D0A7D0D0A2E752D436F6C6F722D34332D42472D2D66696C6C207B0D0A202066696C6C3A20233965653865363B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1791) := '2D436F6C6F722D34332D42472D2D6272207B0D0A20207374726F6B653A20233965653865363B0D0A2020626F726465722D636F6C6F723A20233965653865363B0D0A7D0D0A2E752D436F6C6F722D34332D46472D2D747874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1792) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34332D46472D2D66696C6C207B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1793) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34332D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34342D42472D';
wwv_flow_api.g_varchar2_table(1794) := '2D747874207B0D0A2020636F6C6F723A20236134653063613B0D0A7D0D0A2E752D436F6C6F722D34342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236134653063613B0D0A7D0D0A2E752D436F6C6F722D34342D42472D';
wwv_flow_api.g_varchar2_table(1795) := '2D66696C6C207B0D0A202066696C6C3A20236134653063613B0D0A7D0D0A2E752D436F6C6F722D34342D42472D2D6272207B0D0A20207374726F6B653A20236134653063613B0D0A2020626F726465722D636F6C6F723A20236134653063613B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1796) := '0A2E752D436F6C6F722D34342D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1797) := '0A2E752D436F6C6F722D34342D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34342D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1798) := '6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34352D42472D2D747874207B0D0A2020636F6C6F723A20236436653963613B0D0A7D0D0A2E752D436F6C6F722D34352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1799) := '6F723A20236436653963613B0D0A7D0D0A2E752D436F6C6F722D34352D42472D2D66696C6C207B0D0A202066696C6C3A20236436653963613B0D0A7D0D0A2E752D436F6C6F722D34352D42472D2D6272207B0D0A20207374726F6B653A20236436653963';
wwv_flow_api.g_varchar2_table(1800) := '613B0D0A2020626F726465722D636F6C6F723A20236436653963613B0D0A7D0D0A2E752D436F6C6F722D34352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34352D46472D2D6267207B0D0A';
wwv_flow_api.g_varchar2_table(1801) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34352D46472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1802) := '20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F72207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1803) := '6B67726F756E642D636F6C6F723A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1804) := '7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1805) := '696C642834356E202B203129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1806) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D626F72646572207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1807) := '726465722D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A20';
wwv_flow_api.g_varchar2_table(1808) := '20636F6C6F723A20236534663966643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E';
wwv_flow_api.g_varchar2_table(1809) := '752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D7478742C';
wwv_flow_api.g_varchar2_table(1810) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1811) := '2B203229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133623663663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1812) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1813) := '6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1814) := '636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1815) := '356E202B203329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1816) := '7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1817) := '2B203429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429';
wwv_flow_api.g_varchar2_table(1818) := '202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A';
wwv_flow_api.g_varchar2_table(1819) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D74657874207B0D0A20';
wwv_flow_api.g_varchar2_table(1820) := '20636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E';
wwv_flow_api.g_varchar2_table(1821) := '752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F72207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1822) := '756E642D636F6C6F723A20233831626235663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1823) := '203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1824) := '34356E202B203529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1825) := '6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D626F72646572207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1826) := '2D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1827) := '6F723A20233261326130383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F';
wwv_flow_api.g_varchar2_table(1828) := '6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D7478742C0D0A2E75';
wwv_flow_api.g_varchar2_table(1829) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629';
wwv_flow_api.g_varchar2_table(1830) := '202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1831) := '6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1832) := '203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1833) := '6F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1834) := '203729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1835) := '203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829';
wwv_flow_api.g_varchar2_table(1836) := '202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D';
wwv_flow_api.g_varchar2_table(1837) := '636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1838) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D74657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1839) := '6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F';
wwv_flow_api.g_varchar2_table(1840) := '6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1841) := '636F6C6F723A20236539356235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1842) := '682D6368696C642834356E202B203929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1843) := '2B203929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1844) := '203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1845) := '6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1846) := '20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C';
wwv_flow_api.g_varchar2_table(1847) := '6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D7478742C0D0A2E75';
wwv_flow_api.g_varchar2_table(1848) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031';
wwv_flow_api.g_varchar2_table(1849) := '3029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236538356438383B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1850) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1851) := '6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D6261636B67726F756E64207B0D0A2020';
wwv_flow_api.g_varchar2_table(1852) := '6261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1853) := '642834356E202B20313129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62642C0D0A2E75';
wwv_flow_api.g_varchar2_table(1854) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1855) := '642834356E202B20313229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1856) := '356E202B20313229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1857) := '3835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1858) := '722D74657874207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1859) := '642834356E202B20313229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1860) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1861) := '672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1862) := '7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1863) := '233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1864) := '722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1865) := '6F6C6F723A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1866) := '682D6368696C642834356E202B20313429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E';
wwv_flow_api.g_varchar2_table(1867) := '202B20313429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1868) := '6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(1869) := '722D636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A202063';
wwv_flow_api.g_varchar2_table(1870) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E';
wwv_flow_api.g_varchar2_table(1871) := '752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D747874';
wwv_flow_api.g_varchar2_table(1872) := '2C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1873) := '6E202B20313529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233665383539383B0D0A';
wwv_flow_api.g_varchar2_table(1874) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1875) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D6261636B67726F756E6420';
wwv_flow_api.g_varchar2_table(1876) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1877) := '2D6368696C642834356E202B20313629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D6264';
wwv_flow_api.g_varchar2_table(1878) := '2C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1879) := '2D6368696C642834356E202B20313729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A2020636F6C6F723A20236561666166643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1880) := '696C642834356E202B20313729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1881) := '6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E75';
wwv_flow_api.g_varchar2_table(1882) := '2D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1883) := '2D6368696C642834356E202B20313729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E75';
wwv_flow_api.g_varchar2_table(1884) := '2D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F';
wwv_flow_api.g_varchar2_table(1885) := '6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1886) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D74657874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1887) := '6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E75';
wwv_flow_api.g_varchar2_table(1888) := '2D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F72207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1889) := '756E642D636F6C6F723A20233633626639643B0D0A2020636F6C6F723A20236633666266383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1890) := '3E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1891) := '642834356E202B20313929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233633626639643B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1892) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D626F72646572207B0D0A2020';
wwv_flow_api.g_varchar2_table(1893) := '626F726465722D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B';
wwv_flow_api.g_varchar2_table(1894) := '0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1895) := '323029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1896) := '722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1897) := '6C642834356E202B20323029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A202339616339';
wwv_flow_api.g_varchar2_table(1898) := '37663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A2020636F6C6F723A20233534353533393B';
wwv_flow_api.g_varchar2_table(1899) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D6261636B6772';
wwv_flow_api.g_varchar2_table(1900) := '6F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1901) := '203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C';
wwv_flow_api.g_varchar2_table(1902) := '6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1903) := '203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A2020636F6C6F723A20233661356333343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1904) := '74682D6368696C642834356E202B20323229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1905) := '642D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032';
wwv_flow_api.g_varchar2_table(1906) := '3229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1907) := '203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032';
wwv_flow_api.g_varchar2_table(1908) := '3329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032332920';
wwv_flow_api.g_varchar2_table(1909) := '2E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A';
wwv_flow_api.g_varchar2_table(1910) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D74657874207B0D';
wwv_flow_api.g_varchar2_table(1911) := '0A2020636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032';
wwv_flow_api.g_varchar2_table(1912) := '3329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F72207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1913) := '636B67726F756E642D636F6C6F723A20236564376337363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62672C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1914) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1915) := '2D6368696C642834356E202B20323429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564376337363B0D';
wwv_flow_api.g_varchar2_table(1916) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D626F7264657220';
wwv_flow_api.g_varchar2_table(1917) := '7B0D0A2020626F726465722D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564';
wwv_flow_api.g_varchar2_table(1918) := '376461303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1919) := '356E202B20323529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E75';
wwv_flow_api.g_varchar2_table(1920) := '2D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1921) := '682D6368696C642834356E202B20323529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1922) := '236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1923) := '666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1924) := '61636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D7478742C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1925) := '6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E';
wwv_flow_api.g_varchar2_table(1926) := '752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1927) := '6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A2020636F6C6F723A20236637663366393B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1928) := '203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1929) := '67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1930) := '6E202B20323729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62642C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1931) := '6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1932) := '6E202B20323829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1933) := '20323829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202337623836';
wwv_flow_api.g_varchar2_table(1934) := '62643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D7465';
wwv_flow_api.g_varchar2_table(1935) := '7874207B0D0A2020636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1936) := '6E202B20323829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F72207B0D';
wwv_flow_api.g_varchar2_table(1937) := '0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A2020636F6C6F723A20233561363236393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62672C0D0A';
wwv_flow_api.g_varchar2_table(1938) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1939) := '203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023626663';
wwv_flow_api.g_varchar2_table(1940) := '3864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D626F';
wwv_flow_api.g_varchar2_table(1941) := '72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1942) := '3A20233862396461643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1943) := '696C642834356E202B20333029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033';
wwv_flow_api.g_varchar2_table(1944) := '3029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1945) := '3E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1946) := '6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1947) := '3A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F';
wwv_flow_api.g_varchar2_table(1948) := '6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D7478742C0D0A2E';
wwv_flow_api.g_varchar2_table(1949) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1950) := '333129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233262386663353B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1951) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A2020636F6C6F723A20236365653065333B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1952) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(1953) := '206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1954) := '6C642834356E202B20333229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62642C0D0A2E';
wwv_flow_api.g_varchar2_table(1955) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1956) := '6C642834356E202B20333329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A2020636F6C6F723A20236438653265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1957) := '34356E202B20333329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1958) := '233239616361393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C';
wwv_flow_api.g_varchar2_table(1959) := '6F722D74657874207B0D0A2020636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1960) := '6C642834356E202B20333329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C';
wwv_flow_api.g_varchar2_table(1961) := '6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1962) := '62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1963) := '6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1964) := '20233336396537383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C';
wwv_flow_api.g_varchar2_table(1965) := '6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1966) := '636F6C6F723A20233734613835363B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1967) := '74682D6368696C642834356E202B20333529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1968) := '6E202B20333529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1969) := '6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1970) := '65722D636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A2020';
wwv_flow_api.g_varchar2_table(1971) := '636F6C6F723A20233236323630373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033362920';
wwv_flow_api.g_varchar2_table(1972) := '2E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D7478';
wwv_flow_api.g_varchar2_table(1973) := '742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1974) := '356E202B20333629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236337633834623B0D';
wwv_flow_api.g_varchar2_table(1975) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A2020636F6C6F723A20233365326530313B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1976) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1977) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1978) := '682D6368696C642834356E202B20333729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1979) := '642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1980) := '682D6368696C642834356E202B20333829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1981) := '68696C642834356E202B20333829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1982) := '6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E';
wwv_flow_api.g_varchar2_table(1983) := '752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1984) := '682D6368696C642834356E202B20333829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E';
wwv_flow_api.g_varchar2_table(1985) := '752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D63';
wwv_flow_api.g_varchar2_table(1986) := '6F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1987) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1988) := '6F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E';
wwv_flow_api.g_varchar2_table(1989) := '752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F72207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1990) := '6F756E642D636F6C6F723A20236431353437613B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1991) := '203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1992) := '6C642834356E202B20343029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236431353437613B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1993) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(1994) := '20626F726465722D636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A2023623634663864';
wwv_flow_api.g_varchar2_table(1995) := '3B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1996) := '20343129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C';
wwv_flow_api.g_varchar2_table(1997) := '6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1998) := '696C642834356E202B20343129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023623634';
wwv_flow_api.g_varchar2_table(1999) := '6638643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A2020636F6C6F723A2023646464386466';
wwv_flow_api.g_varchar2_table(2000) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D6261636B67';
wwv_flow_api.g_varchar2_table(2001) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(2002) := '3E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F';
wwv_flow_api.g_varchar2_table(2003) := '6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(2004) := '3E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(2005) := '6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(2006) := '6E642D636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(2007) := '343329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(2008) := '3E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(2009) := '343429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A2020636F6C6F723A20233263333533643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429';
wwv_flow_api.g_varchar2_table(2010) := '202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D';
wwv_flow_api.g_varchar2_table(2011) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D74657874207B';
wwv_flow_api.g_varchar2_table(2012) := '0D0A2020636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(2013) := '343429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F72207B0D0A202062';
wwv_flow_api.g_varchar2_table(2014) := '61636B67726F756E642D636F6C6F723A20233633373838393B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62672C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(2015) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(2016) := '682D6368696C642834356E202B20343529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233633373838393B';
wwv_flow_api.g_varchar2_table(2017) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D626F72646572';
wwv_flow_api.g_varchar2_table(2018) := '207B0D0A2020626F726465722D636F6C6F723A20233633373838393B0D0A7D0D0A0D0A2E752D636F6C6F722D31207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(2019) := '0A2E752D636F6C6F722D312D62672C0D0A2E752D636F6C6F722D312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F722D312D7478742C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2020) := '2D312D74657874207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F722D312D62642C0D0A2E752D636F6C6F722D312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233330396664623B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(2021) := '752D636F6C6F722D32207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E752D636F6C6F722D322D62672C0D0A2E752D636F6C6F722D322D6261636B67726F75';
wwv_flow_api.g_varchar2_table(2022) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F722D322D7478742C0D0A2E752D636F6C6F722D322D74657874207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(2023) := '636F6C6F722D322D62642C0D0A2E752D636F6C6F722D322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F722D33207B0D0A20206261636B67726F756E642D636F6C6F723A20233265';
wwv_flow_api.g_varchar2_table(2024) := '626662633B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E752D636F6C6F722D332D62672C0D0A2E752D636F6C6F722D332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A';
wwv_flow_api.g_varchar2_table(2025) := '7D0D0A2E752D636F6C6F722D332D7478742C0D0A2E752D636F6C6F722D332D74657874207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F722D332D62642C0D0A2E752D636F6C6F722D332D626F72646572207B0D0A2020';
wwv_flow_api.g_varchar2_table(2026) := '626F726465722D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F722D34207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2027) := '722D342D62672C0D0A2E752D636F6C6F722D342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F722D342D7478742C0D0A2E752D636F6C6F722D342D7465787420';
wwv_flow_api.g_varchar2_table(2028) := '7B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F722D342D62642C0D0A2E752D636F6C6F722D342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(2029) := '35207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D352D62672C0D0A2E752D636F6C6F722D352D6261636B67726F756E64207B0D0A2020';
wwv_flow_api.g_varchar2_table(2030) := '6261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F722D352D7478742C0D0A2E752D636F6C6F722D352D74657874207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F722D352D';
wwv_flow_api.g_varchar2_table(2031) := '62642C0D0A2E752D636F6C6F722D352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F722D36207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A20';
wwv_flow_api.g_varchar2_table(2032) := '20636F6C6F723A20233261326130383B0D0A7D0D0A2E752D636F6C6F722D362D62672C0D0A2E752D636F6C6F722D362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(2033) := '6C6F722D362D7478742C0D0A2E752D636F6C6F722D362D74657874207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F722D362D62642C0D0A2E752D636F6C6F722D362D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(2034) := '6F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F722D37207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D636F6C6F722D372D62672C0D';
wwv_flow_api.g_varchar2_table(2035) := '0A2E752D636F6C6F722D372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F722D372D7478742C0D0A2E752D636F6C6F722D372D74657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(2036) := '6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F722D372D62642C0D0A2E752D636F6C6F722D372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F722D38207B0D0A202062';
wwv_flow_api.g_varchar2_table(2037) := '61636B67726F756E642D636F6C6F723A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D382D62672C0D0A2E752D636F6C6F722D382D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(2038) := '6E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F722D382D7478742C0D0A2E752D636F6C6F722D382D74657874207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F722D382D62642C0D0A2E752D';
wwv_flow_api.g_varchar2_table(2039) := '636F6C6F722D382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F722D39207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(2040) := '236666666666663B0D0A7D0D0A2E752D636F6C6F722D392D62672C0D0A2E752D636F6C6F722D392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F722D392D7478';
wwv_flow_api.g_varchar2_table(2041) := '742C0D0A2E752D636F6C6F722D392D74657874207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F722D392D62642C0D0A2E752D636F6C6F722D392D626F72646572207B0D0A2020626F726465722D636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(2042) := '39356235343B0D0A7D0D0A2E752D636F6C6F722D3130207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D31302D62672C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(2043) := '6C6F722D31302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F722D31302D7478742C0D0A2E752D636F6C6F722D31302D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(2044) := '20236538356438383B0D0A7D0D0A2E752D636F6C6F722D31302D62642C0D0A2E752D636F6C6F722D31302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F722D3131207B0D0A202062';
wwv_flow_api.g_varchar2_table(2045) := '61636B67726F756E642D636F6C6F723A20236361353839643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D31312D62672C0D0A2E752D636F6C6F722D31312D6261636B67726F756E64207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(2046) := '6F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F722D31312D7478742C0D0A2E752D636F6C6F722D31312D74657874207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F722D31312D62642C';
wwv_flow_api.g_varchar2_table(2047) := '0D0A2E752D636F6C6F722D31312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F722D3132207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A2020';
wwv_flow_api.g_varchar2_table(2048) := '636F6C6F723A20236636663066383B0D0A7D0D0A2E752D636F6C6F722D31322D62672C0D0A2E752D636F6C6F722D31322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(2049) := '6F6C6F722D31322D7478742C0D0A2E752D636F6C6F722D31322D74657874207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F722D31322D62642C0D0A2E752D636F6C6F722D31322D626F72646572207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(2050) := '6465722D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F722D3133207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(2051) := '31332D62672C0D0A2E752D636F6C6F722D31332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F722D31332D7478742C0D0A2E752D636F6C6F722D31332D746578';
wwv_flow_api.g_varchar2_table(2052) := '74207B0D0A2020636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F722D31332D62642C0D0A2E752D636F6C6F722D31332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(2053) := '6C6F722D3134207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E752D636F6C6F722D31342D62672C0D0A2E752D636F6C6F722D31342D6261636B67726F756E';
wwv_flow_api.g_varchar2_table(2054) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F722D31342D7478742C0D0A2E752D636F6C6F722D31342D74657874207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(2055) := '2D636F6C6F722D31342D62642C0D0A2E752D636F6C6F722D31342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F722D3135207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(2056) := '20233665383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D31352D62672C0D0A2E752D636F6C6F722D31352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023366538';
wwv_flow_api.g_varchar2_table(2057) := '3539383B0D0A7D0D0A2E752D636F6C6F722D31352D7478742C0D0A2E752D636F6C6F722D31352D74657874207B0D0A2020636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F722D31352D62642C0D0A2E752D636F6C6F722D31352D626F';
wwv_flow_api.g_varchar2_table(2058) := '72646572207B0D0A2020626F726465722D636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F722D3136207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A2020636F6C6F723A20236666666666663B0D';
wwv_flow_api.g_varchar2_table(2059) := '0A7D0D0A2E752D636F6C6F722D31362D62672C0D0A2E752D636F6C6F722D31362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F722D31362D7478742C0D0A2E75';
wwv_flow_api.g_varchar2_table(2060) := '2D636F6C6F722D31362D74657874207B0D0A2020636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F722D31362D62642C0D0A2E752D636F6C6F722D31362D626F72646572207B0D0A2020626F726465722D636F6C6F723A202335396232';
wwv_flow_api.g_varchar2_table(2061) := '65323B0D0A7D0D0A2E752D636F6C6F722D3137207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A2020636F6C6F723A20236561666166643B0D0A7D0D0A2E752D636F6C6F722D31372D62672C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2062) := '2D31372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F722D31372D7478742C0D0A2E752D636F6C6F722D31372D74657874207B0D0A2020636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(2063) := '32633564393B0D0A7D0D0A2E752D636F6C6F722D31372D62642C0D0A2E752D636F6C6F722D31372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F722D3138207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(2064) := '67726F756E642D636F6C6F723A20233538636363393B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A2E752D636F6C6F722D31382D62672C0D0A2E752D636F6C6F722D31382D6261636B67726F756E64207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2065) := '642D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F722D31382D7478742C0D0A2E752D636F6C6F722D31382D74657874207B0D0A2020636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F722D31382D62642C0D0A2E';
wwv_flow_api.g_varchar2_table(2066) := '752D636F6C6F722D31382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F722D3139207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(2067) := '6F723A20236633666266383B0D0A7D0D0A2E752D636F6C6F722D31392D62672C0D0A2E752D636F6C6F722D31392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2068) := '722D31392D7478742C0D0A2E752D636F6C6F722D31392D74657874207B0D0A2020636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F722D31392D62642C0D0A2E752D636F6C6F722D31392D626F72646572207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(2069) := '2D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F722D3230207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D32302D';
wwv_flow_api.g_varchar2_table(2070) := '62672C0D0A2E752D636F6C6F722D32302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F722D32302D7478742C0D0A2E752D636F6C6F722D32302D74657874207B';
wwv_flow_api.g_varchar2_table(2071) := '0D0A2020636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F722D32302D62642C0D0A2E752D636F6C6F722D32302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2072) := '2D3231207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A2020636F6C6F723A20233534353533393B0D0A7D0D0A2E752D636F6C6F722D32312D62672C0D0A2E752D636F6C6F722D32312D6261636B67726F756E64207B';
wwv_flow_api.g_varchar2_table(2073) := '0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F722D32312D7478742C0D0A2E752D636F6C6F722D32312D74657874207B0D0A2020636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(2074) := '6C6F722D32312D62642C0D0A2E752D636F6C6F722D32312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F722D3232207B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(2075) := '63643836653B0D0A2020636F6C6F723A20233661356333343B0D0A7D0D0A2E752D636F6C6F722D32322D62672C0D0A2E752D636F6C6F722D32322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023666364383665';
wwv_flow_api.g_varchar2_table(2076) := '3B0D0A7D0D0A2E752D636F6C6F722D32322D7478742C0D0A2E752D636F6C6F722D32322D74657874207B0D0A2020636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F722D32322D62642C0D0A2E752D636F6C6F722D32322D626F726465';
wwv_flow_api.g_varchar2_table(2077) := '72207B0D0A2020626F726465722D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F722D3233207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(2078) := '0A2E752D636F6C6F722D32332D62672C0D0A2E752D636F6C6F722D32332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F722D32332D7478742C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(2079) := '6C6F722D32332D74657874207B0D0A2020636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F722D32332D62642C0D0A2E752D636F6C6F722D32332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136353B';
wwv_flow_api.g_varchar2_table(2080) := '0D0A7D0D0A2E752D636F6C6F722D3234207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D32342D62672C0D0A2E752D636F6C6F722D3234';
wwv_flow_api.g_varchar2_table(2081) := '2D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F722D32342D7478742C0D0A2E752D636F6C6F722D32342D74657874207B0D0A2020636F6C6F723A202365643763';
wwv_flow_api.g_varchar2_table(2082) := '37363B0D0A7D0D0A2E752D636F6C6F722D32342D62642C0D0A2E752D636F6C6F722D32342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F722D3235207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(2083) := '756E642D636F6C6F723A20236564376461303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D32352D62672C0D0A2E752D636F6C6F722D32352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(2084) := '6F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F722D32352D7478742C0D0A2E752D636F6C6F722D32352D74657874207B0D0A2020636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F722D32352D62642C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(2085) := '6F6C6F722D32352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F722D3236207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(2086) := '20236666666666663B0D0A7D0D0A2E752D636F6C6F722D32362D62672C0D0A2E752D636F6C6F722D32362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F722D32';
wwv_flow_api.g_varchar2_table(2087) := '362D7478742C0D0A2E752D636F6C6F722D32362D74657874207B0D0A2020636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F722D32362D62642C0D0A2E752D636F6C6F722D32362D626F72646572207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(2088) := '6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F722D3237207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A2020636F6C6F723A20236637663366393B0D0A7D0D0A2E752D636F6C6F722D32372D62672C';
wwv_flow_api.g_varchar2_table(2089) := '0D0A2E752D636F6C6F722D32372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F722D32372D7478742C0D0A2E752D636F6C6F722D32372D74657874207B0D0A20';
wwv_flow_api.g_varchar2_table(2090) := '20636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F722D32372D62642C0D0A2E752D636F6C6F722D32372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F722D3238';
wwv_flow_api.g_varchar2_table(2091) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D32382D62672C0D0A2E752D636F6C6F722D32382D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(2092) := '206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F722D32382D7478742C0D0A2E752D636F6C6F722D32382D74657874207B0D0A2020636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2093) := '2D32382D62642C0D0A2E752D636F6C6F722D32382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F722D3239207B0D0A20206261636B67726F756E642D636F6C6F723A202362666338';
wwv_flow_api.g_varchar2_table(2094) := '64313B0D0A2020636F6C6F723A20233561363236393B0D0A7D0D0A2E752D636F6C6F722D32392D62672C0D0A2E752D636F6C6F722D32392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A';
wwv_flow_api.g_varchar2_table(2095) := '7D0D0A2E752D636F6C6F722D32392D7478742C0D0A2E752D636F6C6F722D32392D74657874207B0D0A2020636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F722D32392D62642C0D0A2E752D636F6C6F722D32392D626F72646572207B';
wwv_flow_api.g_varchar2_table(2096) := '0D0A2020626F726465722D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F722D3330207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(2097) := '2D636F6C6F722D33302D62672C0D0A2E752D636F6C6F722D33302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F722D33302D7478742C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2098) := '2D33302D74657874207B0D0A2020636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F722D33302D62642C0D0A2E752D636F6C6F722D33302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461643B0D0A7D';
wwv_flow_api.g_varchar2_table(2099) := '0D0A2E752D636F6C6F722D3331207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D33312D62672C0D0A2E752D636F6C6F722D33312D6261';
wwv_flow_api.g_varchar2_table(2100) := '636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F722D33312D7478742C0D0A2E752D636F6C6F722D33312D74657874207B0D0A2020636F6C6F723A20233262386663353B';
wwv_flow_api.g_varchar2_table(2101) := '0D0A7D0D0A2E752D636F6C6F722D33312D62642C0D0A2E752D636F6C6F722D33312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F722D3332207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(2102) := '2D636F6C6F723A20233131613462613B0D0A2020636F6C6F723A20236365653065333B0D0A7D0D0A2E752D636F6C6F722D33322D62672C0D0A2E752D636F6C6F722D33322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(2103) := '723A20233131613462613B0D0A7D0D0A2E752D636F6C6F722D33322D7478742C0D0A2E752D636F6C6F722D33322D74657874207B0D0A2020636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F722D33322D62642C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2104) := '722D33322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F722D3333207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A2020636F6C6F723A202364';
wwv_flow_api.g_varchar2_table(2105) := '38653265323B0D0A7D0D0A2E752D636F6C6F722D33332D62672C0D0A2E752D636F6C6F722D33332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F722D33332D74';
wwv_flow_api.g_varchar2_table(2106) := '78742C0D0A2E752D636F6C6F722D33332D74657874207B0D0A2020636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F722D33332D62642C0D0A2E752D636F6C6F722D33332D626F72646572207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(2107) := '3A20233239616361393B0D0A7D0D0A2E752D636F6C6F722D3334207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A2E752D636F6C6F722D33342D62672C0D0A2E';
wwv_flow_api.g_varchar2_table(2108) := '752D636F6C6F722D33342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F722D33342D7478742C0D0A2E752D636F6C6F722D33342D74657874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(2109) := '6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F722D33342D62642C0D0A2E752D636F6C6F722D33342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F722D3335207B0D';
wwv_flow_api.g_varchar2_table(2110) := '0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D33352D62672C0D0A2E752D636F6C6F722D33352D6261636B67726F756E64207B0D0A20206261';
wwv_flow_api.g_varchar2_table(2111) := '636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F722D33352D7478742C0D0A2E752D636F6C6F722D33352D74657874207B0D0A2020636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F722D3335';
wwv_flow_api.g_varchar2_table(2112) := '2D62642C0D0A2E752D636F6C6F722D33352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F722D3336207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B';
wwv_flow_api.g_varchar2_table(2113) := '0D0A2020636F6C6F723A20233236323630373B0D0A7D0D0A2E752D636F6C6F722D33362D62672C0D0A2E752D636F6C6F722D33362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(2114) := '2E752D636F6C6F722D33362D7478742C0D0A2E752D636F6C6F722D33362D74657874207B0D0A2020636F6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F722D33362D62642C0D0A2E752D636F6C6F722D33362D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(2115) := '20626F726465722D636F6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F722D3337207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A2020636F6C6F723A20233365326530313B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(2116) := '6C6F722D33372D62672C0D0A2E752D636F6C6F722D33372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F722D33372D7478742C0D0A2E752D636F6C6F722D3337';
wwv_flow_api.g_varchar2_table(2117) := '2D74657874207B0D0A2020636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F722D33372D62642C0D0A2E752D636F6C6F722D33372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236532623934333B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(2118) := '752D636F6C6F722D3338207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D33382D62672C0D0A2E752D636F6C6F722D33382D6261636B67';
wwv_flow_api.g_varchar2_table(2119) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F722D33382D7478742C0D0A2E752D636F6C6F722D33382D74657874207B0D0A2020636F6C6F723A20236435373433383B0D0A7D';
wwv_flow_api.g_varchar2_table(2120) := '0D0A2E752D636F6C6F722D33382D62642C0D0A2E752D636F6C6F722D33382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F722D3339207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(2121) := '6C6F723A20236432353234633B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D33392D62672C0D0A2E752D636F6C6F722D33392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(2122) := '236432353234633B0D0A7D0D0A2E752D636F6C6F722D33392D7478742C0D0A2E752D636F6C6F722D33392D74657874207B0D0A2020636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F722D33392D62642C0D0A2E752D636F6C6F722D33';
wwv_flow_api.g_varchar2_table(2123) := '392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F722D3430207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B0D0A2020636F6C6F723A202365366536';
wwv_flow_api.g_varchar2_table(2124) := '65363B0D0A7D0D0A2E752D636F6C6F722D34302D62672C0D0A2E752D636F6C6F722D34302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C6F722D34302D7478742C';
wwv_flow_api.g_varchar2_table(2125) := '0D0A2E752D636F6C6F722D34302D74657874207B0D0A2020636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C6F722D34302D62642C0D0A2E752D636F6C6F722D34302D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(2126) := '6431353437613B0D0A7D0D0A2E752D636F6C6F722D3431207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D34312D62672C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(2127) := '6F6C6F722D34312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F722D34312D7478742C0D0A2E752D636F6C6F722D34312D74657874207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(2128) := '3A20236236346638643B0D0A7D0D0A2E752D636F6C6F722D34312D62642C0D0A2E752D636F6C6F722D34312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F722D3432207B0D0A2020';
wwv_flow_api.g_varchar2_table(2129) := '6261636B67726F756E642D636F6C6F723A20233738343638633B0D0A2020636F6C6F723A20236464643864663B0D0A7D0D0A2E752D636F6C6F722D34322D62672C0D0A2E752D636F6C6F722D34322D6261636B67726F756E64207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(2130) := '726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F722D34322D7478742C0D0A2E752D636F6C6F722D34322D74657874207B0D0A2020636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F722D34322D6264';
wwv_flow_api.g_varchar2_table(2131) := '2C0D0A2E752D636F6C6F722D34322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F722D3433207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A20';
wwv_flow_api.g_varchar2_table(2132) := '20636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D34332D62672C0D0A2E752D636F6C6F722D34332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(2133) := '636F6C6F722D34332D7478742C0D0A2E752D636F6C6F722D34332D74657874207B0D0A2020636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F722D34332D62642C0D0A2E752D636F6C6F722D34332D626F72646572207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(2134) := '726465722D636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F722D3434207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A2020636F6C6F723A20233263333533643B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2135) := '2D34342D62672C0D0A2E752D636F6C6F722D34342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F722D34342D7478742C0D0A2E752D636F6C6F722D34342D7465';
wwv_flow_api.g_varchar2_table(2136) := '7874207B0D0A2020636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F722D34342D62642C0D0A2E752D636F6C6F722D34342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233965613762313B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(2137) := '6F6C6F722D3435207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D34352D62672C0D0A2E752D636F6C6F722D34352D6261636B67726F75';
wwv_flow_api.g_varchar2_table(2138) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A2E752D636F6C6F722D34352D7478742C0D0A2E752D636F6C6F722D34352D74657874207B0D0A2020636F6C6F723A20233633373838393B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(2139) := '752D636F6C6F722D34352D62642C0D0A2E752D636F6C6F722D34352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633373838393B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(23326200351834703)
,p_theme_id=>42
,p_file_name=>'23325831034834700.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22783440699714787)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22783834313714787)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22784415040714787)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22784826183714787)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22788275546714788)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22788604207714788)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22790230275714788)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22791048878714790)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22792219531714790)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22793498021714790)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22793890743714790)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22795685901714791)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22799006074714793)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22801483268714793)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22802257277714793)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22803317277714794)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22805227059714794)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22814920623714799)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22815346666714799)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22816113882714799)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22818083704714799)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22819224786714801)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22819637826714801)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22822896001714802)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22824225941714802)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22824638433714802)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22825448907714802)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22827232665714804)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22828210637714804)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22828811429714804)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22829213627714804)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22831254900714805)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22835008772714807)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22836654531714807)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22838643277714808)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22840053011714808)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22840697370714808)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22841223184714808)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22844092704714810)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22845863054714812)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22851465971714813)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22853273041714815)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22855376418714816)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22855737168714816)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22857386472714816)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22857737930714816)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22859337134714818)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22859792740714818)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22861379430714818)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22861763836714818)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22863391905714819)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22863703488714819)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22864177453714819)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22864542268714819)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22864910418714819)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22865347291714821)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22865760692714821)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22867139686714821)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22868584755714821)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22869553849714822)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22869961100714822)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22870304060714822)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22870739478714822)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22871394105714822)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22871919722714822)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22872341491714822)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22872713980714822)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22873130284714822)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Radio Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display for radio group items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22776341970714783)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(22775143928714782)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22782598498714785)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(22781308127714785)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22783212814714787)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22783677143714787)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(22783440699714787)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22784069540714787)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(22783834313714787)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22784232182714787)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(22783834313714787)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22784625935714787)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(22784415040714787)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22785095457714787)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(22784826183714787)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22785216777714787)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(22783440699714787)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22785452251714787)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(22784415040714787)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22785698559714787)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(22783440699714787)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22785876718714787)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(22784415040714787)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22786018719714787)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(22783440699714787)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22786282010714787)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22782698418714785)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(22784826183714787)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22788469609714788)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22787327956714788)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22788879660714788)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(22787327956714788)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(22788604207714788)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22789069477714788)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(22787327956714788)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22789270744714788)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(22787327956714788)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(22788604207714788)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22790457527714788)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(22790230275714788)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22790694081714790)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(22790230275714788)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22790802356714790)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(22790230275714788)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22791287232714790)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22791463171714790)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22791637094714790)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22791807331714790)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(22790230275714788)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22792034256714790)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22792447963714790)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22792626183714790)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22792821257714790)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22793071623714790)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22793216477714790)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22793619383714790)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(22793498021714790)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22794082256714790)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(22793890743714790)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22794269371714790)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(22793498021714790)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22794426232714791)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22794639276714791)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22794843741714791)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22795001075714791)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(22793890743714790)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22795297192714791)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22795492923714791)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22795889135714791)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(22795685901714791)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22796042695714791)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(22795685901714791)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22796282149714791)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22789387125714788)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22797246033714791)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22797405674714791)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22797690864714791)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22797838961714791)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22798094992714791)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22798207520714791)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22798413904714791)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22798625006714793)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22798840048714793)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22799273242714793)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(22799006074714793)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22799414037714793)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(22799006074714793)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22799617029714793)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(22793890743714790)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22799872234714793)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22800080416714793)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22800271992714793)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22800455647714793)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22800675037714793)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(22793890743714790)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22800896024714793)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22796309180714791)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22801204880714793)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22800942750714793)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22801625151714793)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22800942750714793)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(22801483268714793)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22801810186714793)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22800942750714793)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(22801483268714793)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22802069447714793)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22800942750714793)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(22801483268714793)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22802454125714793)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22800942750714793)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(22802257277714793)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22802641938714793)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22800942750714793)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(22802257277714793)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22803565839714794)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22802730906714794)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(22803317277714794)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22803746684714794)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22802730906714794)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22803997761714794)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22802730906714794)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22804131008714794)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22802730906714794)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22804833478714794)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22804274382714794)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22805058437714794)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22804274382714794)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22805407994714794)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22804274382714794)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(22805227059714794)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22805631160714794)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22804274382714794)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(22805227059714794)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22805807060714794)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22804274382714794)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22806072510714794)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22804274382714794)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22806220078714794)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22804274382714794)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(22805227059714794)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22806667655714794)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22806320827714794)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22806819075714794)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22806320827714794)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22808318616714796)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22808540212714796)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22808780519714796)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22808926712714796)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(22791048878714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809148882714796)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809336456714796)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809594902714796)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809719561714796)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809990477714796)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810131476714796)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810301260714796)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810507939714796)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810780651714798)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810910246714798)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22811137494714798)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22811308849714798)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22811564908714798)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22811763169714798)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22811901447714798)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(22792219531714790)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22812197033714798)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(22793498021714790)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22812327501714798)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(22793890743714790)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22812528623714798)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(22793498021714790)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22812753617714798)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22812962052714798)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22813156429714798)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22813323452714798)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(22793890743714790)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22813545235714798)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22813758470714798)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22813980296714798)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22807464815714796)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(22788275546714788)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22815119222714799)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22814057282714798)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(22814920623714799)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22815545976714799)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22814057282714798)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(22815346666714799)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22815737754714799)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22814057282714798)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22815949458714799)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22814057282714798)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(22815346666714799)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22816365750714799)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22814057282714798)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(22816113882714799)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22816516155714799)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22814057282714798)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(22816113882714799)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22816936481714799)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22816624000714799)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(22801483268714793)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22817148404714799)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22816624000714799)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22817399630714799)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22816624000714799)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(22801483268714793)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22818279117714799)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22817447140714799)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(22818083704714799)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22818487026714799)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22817447140714799)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(22818083704714799)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22818630431714799)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22817447140714799)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22819490285714801)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(22819224786714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22819833961714801)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22820092566714801)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(22819224786714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22820248784714801)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22820433810714801)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(22819224786714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22820675045714801)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22820873781714801)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821094390714801)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(22819224786714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821216081714801)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(22819224786714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821409650714801)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821629538714801)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821814767714801)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22822094975714801)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22822243168714801)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22818993399714801)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22822631566714802)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823043759714802)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(22822896001714802)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823237193714802)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823437152714802)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(22822896001714802)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823674495714802)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823830247714802)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(22822896001714802)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22824061202714802)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22824493475714802)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(22824225941714802)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22824852015714802)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(22824638433714802)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22825069645714802)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(22824638433714802)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22825207231714802)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(22824225941714802)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22825677329714802)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(22825448907714802)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22825838598714802)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(22825448907714802)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22826061808714802)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(22824225941714802)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22826251332714802)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22826475246714802)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(22822896001714802)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22826636167714802)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22826886674714804)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22822389616714802)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22827465143714804)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22826979048714804)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(22827232665714804)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22827694615714804)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22826979048714804)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(22827232665714804)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22828424011714804)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22827938438714804)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(22828210637714804)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22828635012714804)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22827938438714804)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(22828210637714804)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22829092285714804)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22827938438714804)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(22828811429714804)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22829464741714804)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22827938438714804)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(22829213627714804)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22829673499714804)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22827938438714804)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(22829213627714804)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22829828029714804)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22827938438714804)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(22829213627714804)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22830035437714804)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22827938438714804)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(22828811429714804)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22830203766714804)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22827938438714804)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22830432852714804)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22827938438714804)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(22829213627714804)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22830823287714804)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(22830506659714804)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(22824225941714802)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22831425540714805)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22830977493714804)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22831681532714805)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22830977493714804)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22831874581714805)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22830977493714804)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22832082731714805)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22830977493714804)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22832213488714805)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22830977493714804)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22832494058714805)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(22830977493714804)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22832663368714805)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22830977493714804)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22832898067714805)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22830977493714804)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22833287342714805)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22832900447714805)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22833428054714805)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22832900447714805)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22833693226714805)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22832900447714805)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22833815201714805)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22832900447714805)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22834053346714805)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22832900447714805)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(22819637826714801)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22834283017714805)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(22832900447714805)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22834408271714807)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22832900447714805)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22834671622714807)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22832900447714805)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(22831254900714805)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22835289758714807)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22835418733714807)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22835689185714807)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22835895548714807)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22836049710714807)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22836265648714807)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22836484481714807)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22836819664714807)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(22836654531714807)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22837073040714807)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(22836654531714807)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22837283196714807)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22837448940714807)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(22836654531714807)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22837673459714807)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22837844317714807)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(22836654531714807)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22838045507714807)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22834705678714807)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(22836654531714807)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22838483079714808)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22838875303714808)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(22838643277714808)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839091088714808)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839232328714808)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(22838643277714808)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839419468714808)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839629792714808)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(22838643277714808)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839846122714808)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22840206376714808)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(22840053011714808)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22840441546714808)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22840889264714808)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(22840697370714808)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22841077797714808)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(22840053011714808)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22841462593714808)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(22841223184714808)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22841657170714808)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(22841223184714808)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22841810391714808)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(22840053011714808)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22842070631714810)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22842294129714810)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(22838643277714808)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22842418721714810)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(22840697370714808)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22842612588714810)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22842888727714810)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22838164353714808)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22843217435714810)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22842966256714810)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(22840053011714808)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22843423156714810)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22842966256714810)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22843613597714810)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22842966256714810)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22843853060714810)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22842966256714810)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22844205058714810)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22842966256714810)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(22844092704714810)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22844438786714810)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22842966256714810)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(22844092704714810)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22844881591714810)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22845078691714810)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22845255467714810)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22845435130714810)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22845659653714812)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22846030726714812)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'t-MediaList--large'
,p_group_id=>wwv_flow_api.id(22845863054714812)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22846295742714812)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22846495302714812)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22846622830714812)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22846833567714812)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22844550265714810)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22847252314714812)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22846999313714812)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22847405694714812)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22846999313714812)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22847653154714812)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22846999313714812)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22847877704714812)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22846999313714812)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22848867681714812)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22848517856714812)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(22841223184714808)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22849081963714813)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22848517856714812)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(22835008772714807)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22849222781714813)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22848517856714812)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(22841223184714808)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22849434841714813)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22848517856714812)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(22845863054714812)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22849674376714813)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22848517856714812)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(22840053011714808)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22849854006714813)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22848517856714812)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(22840053011714808)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22850025911714813)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(22848517856714812)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(22845863054714812)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22850421197714813)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22850190629714813)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22850628596714813)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22850190629714813)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22850883125714813)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22850190629714813)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22851075592714813)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22850190629714813)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22851675935714813)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22851145492714813)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(22851465971714813)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22851838854714813)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22851145492714813)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(22851465971714813)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22852029851714813)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22851145492714813)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(22851465971714813)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22852214449714815)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22851145492714813)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22853461392714815)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(22853076510714815)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(22853273041714815)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22853662836714815)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(22853076510714815)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(22853273041714815)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22855554352714816)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(22855376418714816)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22855931446714816)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(22855737168714816)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856126279714816)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(22855376418714816)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856360427714816)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(22855737168714816)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856546225714816)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(22855376418714816)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856797699714816)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(22855737168714816)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856962894714816)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(22855376418714816)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22857193310714816)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(22855737168714816)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22857587879714816)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(22857386472714816)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22857942123714816)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(22857737930714816)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22858145105714816)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(22857386472714816)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22858393030714818)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(22857737930714816)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22858595354714818)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(22857386472714816)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22858733132714818)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(22857737930714816)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22858928917714818)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(22857386472714816)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22859137111714818)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(22857737930714816)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22859559023714818)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(22859337134714818)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22859916934714818)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(22859792740714818)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22860128307714818)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(22859337134714818)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22860343389714818)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(22859792740714818)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22860532606714818)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(22859337134714818)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22860724406714818)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(22859792740714818)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22860977789714818)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(22859337134714818)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22861199371714818)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(22859792740714818)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22861576988714818)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(22861379430714818)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22861989788714818)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(22861763836714818)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22862143976714819)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(22861379430714818)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22862368524714819)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(22861763836714818)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22862582017714819)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(22861379430714818)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22862778699714819)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(22861763836714818)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22862997268714819)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(22861379430714818)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22863103091714819)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(22861763836714818)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22863594129714819)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(22863391905714819)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22863900189714819)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(22863703488714819)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22864372308714819)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(22864177453714819)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22864739972714819)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(22864542268714819)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22865137092714821)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(22864910418714819)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22865552215714821)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(22865347291714821)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22865936453714821)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(22865760692714821)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22866126279714821)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(22865760692714821)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22866331750714821)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(22863703488714819)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22866588930714821)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(22864177453714819)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22866723698714821)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(22864542268714819)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22866937031714821)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(22864910418714819)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22867320509714821)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(22867139686714821)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22867540945714821)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(22867139686714821)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22867770759714821)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(22867139686714821)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22867986295714821)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(22863391905714819)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22868170565714821)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(22865760692714821)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22868379045714821)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(22865347291714821)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22868750832714821)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(22868584755714821)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22868975985714821)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(22863391905714819)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22869154596714821)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(22865347291714821)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22869354079714822)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(22863391905714819)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22869715702714822)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(22869553849714822)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22870151101714822)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(22869961100714822)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22870518214714822)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(22870304060714822)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22870923875714822)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(22870739478714822)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22871181919714822)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(22870739478714822)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22871571350714822)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(22871394105714822)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22871746081714822)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(22869961100714822)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22872116186714822)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(22871919722714822)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22872577470714822)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(22872341491714822)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22872935528714822)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(22872713980714822)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22873358840714824)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(22873130284714822)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22873588860714824)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22873741019714824)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(22871919722714822)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(22882222720714833)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(22874814879714826)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(22874456146714824)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>true
,p_navigation_list_id=>wwv_flow_api.id(22763396030714777)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(22848353313714812)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(22874152436714824)
,p_nav_bar_list_template_id=>wwv_flow_api.id(22848101122714812)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(22874456146714824)
,p_name=>'Project Budget'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Budget'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CHAITANYA'
,p_last_upd_yyyymmddhh24miss=>'20170209162343'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22892444996714932)
,p_plug_name=>'Project Budget'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22806320827714794)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"PROJECT",',
'"TASK_NAME",',
'"START_DATE",',
'"END_DATE",',
'"STATUS",',
'"ASSIGNED_TO",',
'"COST",',
'"BUDGET"',
'from "#OWNER#"."PROJECT_BUDGET" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22892869753714932)
,p_name=>'Project Budget'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:2:&APP_SESSION.::::P2_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'CHAITANYA'
,p_internal_uid=>22892869753714932
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22892966169714933)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22893379492714933)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22893705596714933)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22894179013714933)
,p_db_column_name=>'START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22894573131714935)
,p_db_column_name=>'END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22894994930714935)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22895344665714935)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22895724153714935)
,p_db_column_name=>'COST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22896178767714936)
,p_db_column_name=>'BUDGET'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22899629504715734)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'228997'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22899144300714938)
,p_plug_name=>'BreadCrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(22816624000714799)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(22898738083714938)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(22853777176714815)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22897457320714938)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22892444996714932)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22896503045714936)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(22892444996714932)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22897096442714938)
,p_event_id=>wwv_flow_api.id(22896503045714936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22892444996714932)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22897850785714938)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22897457320714938)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22898395688714938)
,p_event_id=>wwv_flow_api.id(22897850785714938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22892444996714932)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(22874456146714824)
,p_name=>'Project Budget'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Budget'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CHAITANYA'
,p_last_upd_yyyymmddhh24miss=>'20170214152525'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22879754420714830)
,p_plug_name=>'Project Budget'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22786397668714787)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22880466514714830)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22787327956714788)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22880858807714830)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22880466514714830)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22880354083714830)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22880466514714830)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22880251041714830)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22880466514714830)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22880108985714830)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22880466514714830)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22883574941714905)
,p_name=>'P2_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22879754420714830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22883816680714910)
,p_name=>'P2_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22879754420714830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22884252551714911)
,p_name=>'P2_TASK_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22879754420714830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Name'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22884612411714911)
,p_name=>'P2_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22879754420714830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22885077858714911)
,p_name=>'P2_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22879754420714830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22885494821714911)
,p_name=>'P2_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22879754420714830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22885820364714913)
,p_name=>'P2_ASSIGNED_TO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(22879754420714830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22886289206714913)
,p_name=>'P2_COST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(22879754420714830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost'
,p_source=>'COST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22886672929714913)
,p_name=>'P2_BUDGET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(22879754420714830)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21607212770846743)
,p_computation_sequence=>10
,p_computation_item=>'P2_ASSIGNED_TO'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'upper(:P2_ASSIGNED_TO)'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23298119393025502)
,p_validation_name=>'Project is not null'
,p_validation_sequence=>10
,p_validation=>'P2_PROJECT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Project is not null!'
,p_always_execute=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23298228362025503)
,p_validation_name=>'Cost should be numeric'
,p_validation_sequence=>20
,p_validation=>'P2_COST'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Cost should be numeric'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(22886289206714913)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22880980781714830)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22880858807714830)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22881739362714832)
,p_event_id=>wwv_flow_api.id(22880980781714830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22889814704714916)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from PROJECT_BUDGET'
,p_attribute_02=>'PROJECT_BUDGET'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22890218631714916)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of PROJECT_BUDGET'
,p_attribute_02=>'PROJECT_BUDGET'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P2_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Project added successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21607751706846748)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Audit Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO audit_details VALUES(:P2_ID,:APP_USER, sysdate);',
''))
,p_process_error_message=>'Error!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22880108985714830)
,p_process_success_message=>'Success!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22890623987714916)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22880354083714830)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22891039192714916)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(22874456146714824)
,p_name=>'Project Budget Interactive Grid'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Budget Interactive Grid'
,p_step_sub_title=>'Project Budget Interactive Grid'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CHAITANYA'
,p_last_upd_yyyymmddhh24miss=>'20170211162124'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22920131153866087)
,p_plug_name=>'Project Budget Interactive Grid'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22807464815714796)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET',
'  from PROJECT_BUDGET'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21606463485846735)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21606562813846736)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22921390450866087)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22921969820866089)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22922577517866089)
,p_name=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22923194863866089)
,p_name=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Task Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22923785870866090)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22924398031866090)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22924980789866090)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22925535211866092)
,p_name=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNED_TO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Assigned To'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22926157115866092)
,p_name=>'COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22926731934866092)
,p_name=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Budget'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(22920684632866087)
,p_internal_uid=>22920684632866087
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET:SAVE'
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_formats=>'CSV'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(22921079605866087)
,p_interactive_grid_id=>wwv_flow_api.id(22920684632866087)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(22921137109866087)
,p_report_id=>wwv_flow_api.id(22921079605866087)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22921731429866089)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(22921390450866087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22922361168866089)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(22921969820866089)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22922950252866089)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(22922577517866089)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22923532069866090)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(22923194863866089)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22924170309866090)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(22923785870866090)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22924776038866090)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(22924398031866090)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22925312754866090)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(22924980789866090)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22925928874866092)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(22925535211866092)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22926510720866092)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(22926157115866092)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22927172364866094)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(22926731934866092)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23040652876400425)
,p_view_id=>wwv_flow_api.id(22921137109866087)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(21606463485846735)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(45970779440549307)
,p_interactive_grid_id=>wwv_flow_api.id(22920684632866087)
,p_name=>'My Private Report'
,p_type=>'PRIVATE'
,p_default_view=>'GRID'
,p_application_user=>'CHAITANYA'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(45970836944549307)
,p_report_id=>wwv_flow_api.id(45970779440549307)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45971431264549309)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(22921390450866087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45972061003549309)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(22921969820866089)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45972650087549309)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(22922577517866089)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45973231904549310)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(22923194863866089)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45973870144549310)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(22923785870866090)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45974475873549310)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(22924398031866090)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45975012589549310)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(22924980789866090)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45975628709549312)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(22925535211866092)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45976210555549312)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(22926157115866092)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45976872199549314)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(22926731934866092)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(46090352711083645)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(21606463485846735)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(23049785872742001)
,p_view_id=>wwv_flow_api.id(45970836944549307)
,p_execution_seq=>5
,p_name=>'Project costing greater than 750'
,p_background_color=>'#FFFF99'
,p_text_color=>'#FF7755'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(22926157115866092)
,p_condition_operator=>'GT'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'750'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(45974928239768443)
,p_interactive_grid_id=>wwv_flow_api.id(22920684632866087)
,p_name=>'My Custom Report'
,p_type=>'PRIVATE'
,p_default_view=>'CHART'
,p_application_user=>'CHAITANYA'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(23053977779926681)
,p_report_id=>wwv_flow_api.id(45974928239768443)
,p_view_type=>'CHART'
,p_chart_type=>'bar'
,p_chart_orientation=>'vertical'
,p_chart_stack=>'off'
);
wwv_flow_api.create_ig_report_chart_col(
 p_id=>wwv_flow_api.id(23054435087945222)
,p_view_id=>wwv_flow_api.id(23053977779926681)
,p_column_type=>'LABEL'
,p_column_id=>wwv_flow_api.id(22922577517866089)
);
wwv_flow_api.create_ig_report_chart_col(
 p_id=>wwv_flow_api.id(23054571286945222)
,p_view_id=>wwv_flow_api.id(23053977779926681)
,p_column_type=>'VALUE'
,p_column_id=>wwv_flow_api.id(22926157115866092)
,p_function=>'SUM'
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(45974985743768443)
,p_report_id=>wwv_flow_api.id(45974928239768443)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45975580063768445)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(22921390450866087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45976209802768445)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(22921969820866089)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45976798886768445)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(22922577517866089)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45977380703768446)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(22923194863866089)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45978018943768446)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(22923785870866090)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45978624672768446)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(22924398031866090)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45979161388768446)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(22924980789866090)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45979777508768448)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(22925535211866092)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45980359354768448)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(22926157115866092)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45981020998768450)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(22926731934866092)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137.0000457763672
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(46094501510302781)
,p_view_id=>wwv_flow_api.id(45974985743768443)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(21606463485846735)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21606635217846737)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(22920131153866087)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Project Budget Interactive Grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(22874456146714824)
,p_name=>'Project Budget Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Budget Report'
,p_step_sub_title=>'Project Budget Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CHAITANYA'
,p_last_upd_yyyymmddhh24miss=>'20170213123118'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(23235063627186498)
,p_name=>'Project Budget Report'
,p_template=>wwv_flow_api.id(22807464815714796)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS,',
'       ASSIGNED_TO,',
'       COST,',
'       BUDGET',
'  from PROJECT_BUDGET'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(22827938438714804)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23235756988186499)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP:P13_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23236125139186499)
,p_query_column_id=>2
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23236557143186499)
,p_query_column_id=>3
,p_column_alias=>'TASK_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Task Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23236960894186501)
,p_query_column_id=>4
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23237334573186501)
,p_query_column_id=>5
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'End Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23237719868186501)
,p_query_column_id=>6
,p_column_alias=>'STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23238146681186501)
,p_query_column_id=>7
,p_column_alias=>'ASSIGNED_TO'
,p_column_display_sequence=>7
,p_column_heading=>'Assigned To'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23238576583186501)
,p_query_column_id=>8
,p_column_alias=>'COST'
,p_column_display_sequence=>8
,p_column_heading=>'Cost'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23238985646186503)
,p_query_column_id=>9
,p_column_alias=>'BUDGET'
,p_column_display_sequence=>9
,p_column_heading=>'Budget'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(22874456146714824)
,p_name=>'Project Budget Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Budget Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CHAITANYA'
,p_last_upd_yyyymmddhh24miss=>'20170213120052'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23248060562253829)
,p_plug_name=>'Project Budget Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22786397668714787)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23248755475253829)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22787327956714788)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23249156678253829)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23248755475253829)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23248659074253829)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23248755475253829)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23248506949253829)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23248755475253829)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23248443099253829)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23248755475253829)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23251569064253831)
,p_name=>'P13_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23248060562253829)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23251928132253845)
,p_name=>'P13_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23248060562253829)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23252238785253845)
,p_name=>'P13_TASK_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23248060562253829)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Name'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23252603425253845)
,p_name=>'P13_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23248060562253829)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23253070643253845)
,p_name=>'P13_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23248060562253829)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23253471717253845)
,p_name=>'P13_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23248060562253829)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23253820891253845)
,p_name=>'P13_ASSIGNED_TO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23248060562253829)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23254293913253845)
,p_name=>'P13_COST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(23248060562253829)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost'
,p_source=>'COST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23254648281253845)
,p_name=>'P13_BUDGET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(23248060562253829)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852448654714815)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23249252696253829)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(23249156678253829)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23250093505253829)
,p_event_id=>wwv_flow_api.id(23249252696253829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23257820878253848)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from PROJECT_BUDGET'
,p_attribute_02=>'PROJECT_BUDGET'
,p_attribute_03=>'P13_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23258201875253848)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of PROJECT_BUDGET'
,p_attribute_02=>'PROJECT_BUDGET'
,p_attribute_03=>'P13_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23258642424253848)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23248659074253829)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23259032725253848)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(22874456146714824)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'BUDGET APP - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(22769149863714780)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CHAITANYA'
,p_last_upd_yyyymmddhh24miss=>'20170209162334'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22875878729714827)
,p_plug_name=>'BUDGET APP'
,p_icon_css_classes=>'fa-sign-in'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22806998897714796)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22877074526714827)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22875878729714827)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22852940869714815)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22876257265714827)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22875878729714827)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852369397714815)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22876606007714827)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22875878729714827)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22852369397714815)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22877854108714829)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22877491038714827)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22878678066714829)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22878200640714829)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(12641215001151)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop SEQUENCE PROJECT_BUDGET_SEQ;',
'drop sequence AUDIT_DETAILS_SEQ;    ',
'drop table PROJECT_BUDGET cascade constraints;',
'drop table AUDIT_DETAILS cascade constraints;',
'DROP PROCEDURE PROJECT_BUDGET_DATA;'))
);
end;
/
prompt --application/deployment/install
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(51187230621338)
,p_install_id=>wwv_flow_api.id(12641215001151)
,p_name=>'Create Budget App Tables'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE SEQUENCE PROJECT_BUDGET_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 50 NOORDER  NOCYCLE;',
'',
'',
'CREATE TABLE  "PROJECT_BUDGET" ',
'   (	"ID" NUMBER, ',
'	"PROJECT" VARCHAR2(30), ',
'	"TASK_NAME" VARCHAR2(255), ',
'	"START_DATE" DATE, ',
'	"END_DATE" DATE, ',
'	"STATUS" VARCHAR2(30), ',
'	"ASSIGNED_TO" VARCHAR2(30), ',
'	"COST" NUMBER, ',
'	"BUDGET" NUMBER, ',
'	 CONSTRAINT "PROJECT_BUDGET_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   )',
'/',
'CREATE OR REPLACE TRIGGER  "bi_PROJECT_BUDGET" ',
'  before insert on "PROJECT_BUDGET"              ',
'  for each row ',
'begin  ',
'  if :new."ID" is null then',
'    select "PROJECT_BUDGET_SEQ".nextval into :new."ID" from sys.dual;',
'  end if;',
'end;',
'',
'/',
'ALTER TRIGGER  "bi_PROJECT_BUDGET" ENABLE',
'/',
'CREATE SEQUENCE AUDIT_DETAILS_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 50 NOORDER  NOCYCLE;',
'/',
'CREATE TABLE  "AUDIT_DETAILS" ',
'   (	"ID" NUMBER, ',
'	"CREATED_BY" VARCHAR2(60), ',
'	"CREATED_ON" DATE, ',
'	 CONSTRAINT "AUDIT_DETAILS_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   )',
'/',
'CREATE OR REPLACE TRIGGER  "bi_AUDIT_DETAILS" ',
'  before insert on "AUDIT_DETAILS"              ',
'  for each row ',
'begin  ',
'  if :new."ID" is null then',
'    select "AUDIT_DETAILS_SEQ".nextval into :new."ID" from sys.dual;',
'  end if;',
'end;',
'',
'/',
'ALTER TRIGGER  "bi_AUDIT_DETAILS" ENABLE',
'/',
''))
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(55641096624386)
,p_install_id=>wwv_flow_api.id(12641215001151)
,p_name=>'Create Budget App Data'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace procedure PROJECT_BUDGET_DATA',
'as',
'begin',
'delete from PROJECT_BUDGET;',
'',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (43,''New Packaged App'',''Prepare requirements doc'',to_date(''15-FEB-17'',''DD-MON-RR''),to_date(''20-FEB-17'',''DD-MON-RR''),''Open'',''PAM KING'',500,800)'
||';',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (1,''ACME Web Express Configuration'',''Create pilot workspace'',to_date(''02-FEB-17'',''DD-MON-RR''),to_date(''02-FEB-17'',''DD-MON-RR''),''Closed'',''JOHN '
||'WATSON'',100,100);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (2,''ACME Web Express Configuration'',''Specify security authentication scheme(s)'',to_date(''02-JUL-17'',''DD-MON-RR''),to_date(''02-JUL-17'',''DD-MON-R'
||'R''),''Open'',''John Watson'',200,300);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (3,''ACME Web Express Configuration'',''Configure Workspace provisioning'',to_date(''02-AUG-17'',''DD-MON-RR''),to_date(''02-AUG-17'',''DD-MON-RR''),''Open'
||''',''JOHN WATSON'',200,100);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (4,''Bug Tracker'',''Document quality assurance procedures'',to_date(''12-DEC-16'',''DD-MON-RR''),to_date(''15-DEC-16'',''DD-MON-RR''),''Closed'',''MYRA SUTC'
||'LIFF'',3000,2000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (5,''Bug Tracker'',''Review automated testing tools'',to_date(''16-DEC-16'',''DD-MON-RR''),to_date(''18-DEC-16'',''DD-MON-RR''),''Closed'',''Myra Sutcliff'',7'
||'50,1500);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (6,''Bug Tracker'',''Implement bug tracking software'',to_date(''31-DEC-16'',''DD-MON-RR''),to_date(''31-DEC-16'',''DD-MON-RR''),''Closed'',''Myra Sutcliff'','
||'100,100);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (7,''Bug Tracker'',''Train developers on tracking bugs'',to_date(''01-JUL-17'',''DD-MON-RR''),to_date(''01-DEC-17'',''DD-MON-RR''),''On-Hold'',''Myra Sutclif'
||'f'',1000,2000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (8,''Convert Spreadsheets'',''Create ACME Web Express applications from spreadsheets'',to_date(''02-MAY-17'',''DD-MON-RR''),to_date(''02-SEP-17'',''DD-MO'
||'N-RR''),''Open'',''Pam King'',6000,10000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (9,''Convert Spreadsheets'',''Send links to previous spreadsheet owners'',to_date(''02-NOV-17'',''DD-MON-RR''),to_date(''02-NOV-17'',''DD-MON-RR''),''Pendi'
||'ng'',''Pam King'',0,500);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (10,''Discussion Forum'',''Identify owners'',to_date(''01-JAN-17'',''DD-MON-RR''),to_date(''01-JAN-17'',''DD-MON-RR''),''Closed'',''Hank Davis'',250,300);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (11,''Discussion Forum'',''Install ACME Web Express application on internet server'',to_date(''01-JUL-17'',''DD-MON-RR''),to_date(''01-JUL-17'',''DD-MON-'
||'RR''),''Closed'',''Hank Davis'',100,100);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (12,''Discussion Forum'',''Monitor participation'',to_date(''02-JUN-17'',''DD-MON-RR''),to_date(''02-JUL-17'',''DD-MON-RR''),''Open'',''Hank Davis'',450,500);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (13,''Email Integration'',''Get RFPs for new server'',to_date(''02-APR-17'',''DD-MON-RR''),to_date(''02-MAY-17'',''DD-MON-RR''),''Closed'',''Bob Nile'',2000,1'
||'000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (14,''Employee Satisfaction Survey'',''Complete questionnaire'',to_date(''01-NOV-17'',''DD-MON-RR''),to_date(''01-DEC-17'',''DD-MON-RR''),''Closed'',''Irene '
||'Jones'',1200,800);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (15,''Client Server Conversion'',''Plan migration schedule'',to_date(''02-JAN-17'',''DD-MON-RR''),to_date(''02-JAN-17'',''DD-MON-RR''),''Closed'',''Pam King'''
||',1000,1000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (16,''Client Server Conversion'',''Migrate Client Server applications'',to_date(''02-JUN-17'',''DD-MON-RR''),to_date(''02-SEP-17'',''DD-MON-RR''),''Open'','''
||'Pam King'',300,12000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (17,''Client Server Conversion'',''Test migrated applications'',to_date(''02-NOV-17'',''DD-MON-RR''),to_date(''02-DEC-17'',''DD-MON-RR''),''Pending'',''Russ '
||'Saunders'',0,6000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (18,''Load Packaged Apps'',''Implement in Production'',to_date(''02-JAN-17'',''DD-MON-RR''),to_date(''02-JAN-17'',''DD-MON-RR''),''On-Hold'',''John Watson'',2'
||'00,1500);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (19,''Load Packaged Apps'',''Train Administrators of Packaged Apps'',to_date(''02-MAR-17'',''DD-MON-RR''),to_date(''02-MAR-17'',''DD-MON-RR''),''Pending'','''
||'John Watson'',0,1000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (20,''Maintain Support Systems'',''HR software upgrades'',to_date(''01-APR-17'',''DD-MON-RR''),to_date(''01-JUL-17'',''DD-MON-RR''),''Closed'',''Pam King'',80'
||'00,7000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (21,''Maintain Support Systems'',''Apply Billing System updates'',to_date(''01-AUG-17'',''DD-MON-RR''),to_date(''01-OCT-17'',''DD-MON-RR''),''Closed'',''Russ'
||' Saunders'',9500,7000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (22,''Maintain Support Systems'',''Arrange for vacation coverage'',to_date(''01-DEC-17'',''DD-MON-RR''),to_date(''01-DEC-17'',''DD-MON-RR''),''Open'',''Al Bi'
||'nes'',300,500);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (23,''Migrate Desktop Application'',''Post-migration review'',to_date(''03-OCT-17'',''DD-MON-RR''),to_date(''03-NOV-17'',''DD-MON-RR''),''Pending'',''Bob Nil'
||'e'',100,100);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (24,''Migrate from Legacy Server'',''Identify integration points'',to_date(''03-MAR-17'',''DD-MON-RR''),to_date(''03-APR-17'',''DD-MON-RR''),''Pending'',''Bo'
||'b Nile'',0,2000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (25,''Migrate from Legacy Server'',''Create DB Connection to new server'',to_date(''03-MAR-17'',''DD-MON-RR''),to_date(''03-MAR-17'',''DD-MON-RR''),''Pendi'
||'ng'',''Scott Spencer'',0,100);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (26,''Migrate from Legacy Server'',''Import data'',to_date(''03-SEP-17'',''DD-MON-RR''),to_date(''03-OCT-17'',''DD-MON-RR''),''Pending'',''John Watson'',0,100'
||'0);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (27,''Migrate from Legacy Server'',''Convert processes'',to_date(''03-SEP-17'',''DD-MON-RR''),to_date(''03-NOV-17'',''DD-MON-RR''),''Pending'',''Pam King'',0,'
||'3000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (28,''Public Website'',''Determine host server'',to_date(''01-NOV-17'',''DD-MON-RR''),to_date(''01-NOV-17'',''DD-MON-RR''),''Closed'',''Tiger Scott'',200,200)'
||';',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (29,''Public Website'',''Check software licenses'',to_date(''01-NOV-17'',''DD-MON-RR''),to_date(''01-NOV-17'',''DD-MON-RR''),''Closed'',''Tom Suess'',100,100)'
||';',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (30,''Public Website'',''Develop web pages'',to_date(''02-JUL-17'',''DD-MON-RR''),to_date(''02-AUG-17'',''DD-MON-RR''),''Open'',''Tiger Scott'',0,2000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (31,''Public Website'',''Plan rollout schedule'',to_date(''02-SEP-17'',''DD-MON-RR''),to_date(''02-SEP-17'',''DD-MON-RR''),''Open'',''Tom Suess'',0,100);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (32,''Software Project Tracking'',''Conduct project kickoff meeting'',to_date(''02-MAR-17'',''DD-MON-RR''),to_date(''02-MAR-17'',''DD-MON-RR''),''Closed'','''
||'Pam King'',100,100);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (33,''Software Project Tracking'',''Customize Software Projects software'',to_date(''02-JUN-17'',''DD-MON-RR''),to_date(''02-JUL-17'',''DD-MON-RR''),''Open'
||''',''Tom Suess'',600,1000);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (34,''Software Project Tracking'',''"Enter base data (Projects, Milestones, etc.)"'',to_date(''02-AUG-17'',''DD-MON-RR''),to_date(''02-AUG-17'',''DD-MON-'
||'RR''),''Open'',''Tom Suess'',200,200);',
'Insert into PROJECT_BUDGET (ID,PROJECT,TASK_NAME,START_DATE,END_DATE,STATUS,ASSIGNED_TO,COST,BUDGET) values (35,''Software Project Tracking'',''Load current tasks and enhancements'',to_date(''02-OCT-17'',''DD-MON-RR''),to_date(''02-OCT-17'',''DD-MON-RR''),''Open'''
||',''Tom Suess'',400,500);',
'',
'delete from AUDIT_DETAILS;',
'',
'Insert into AUDIT_DETAILS (ID,CREATED_BY,CREATED_ON) values (47,''CHAITANYA'',to_date(''14-FEB-17'',''DD-MON-RR''));',
'Insert into AUDIT_DETAILS (ID,CREATED_BY,CREATED_ON) values (43,''CHAITANYA'',to_date(''14-FEB-17'',''DD-MON-RR''));',
'Insert into AUDIT_DETAILS (ID,CREATED_BY,CREATED_ON) values (45,''CHAITANYA'',to_date(''14-FEB-17'',''DD-MON-RR''));',
'Insert into AUDIT_DETAILS (ID,CREATED_BY,CREATED_ON) values (46,''CHAITANYA'',to_date(''14-FEB-17'',''DD-MON-RR''));',
'',
'end;',
'/',
'show errors',
'    ',
'begin',
'PROJECT_BUDGET_DATA;',
'commit;',
'end;',
'/',
'',
''))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
