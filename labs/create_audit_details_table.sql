Rem  Copyright © 2017 Oracle and/or its affiliates.  All rights reserved.
Rem  Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl. 


CREATE table "AUDIT_DETAILS" (
    "ID"         NUMBER,
    "CREATED_BY" VARCHAR2(60),
    "CREATED_ON" DATE,
    constraint  "AUDIT_DETAILS_PK" primary key ("ID")
)
/