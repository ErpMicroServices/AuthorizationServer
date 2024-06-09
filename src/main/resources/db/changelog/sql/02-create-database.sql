CREATE TABLE client
(
    id                          varchar(255)                            NOT NULL,
    client_Id                    varchar(255)                            NOT NULL,
    client_Id_Issued_At            timestamp     DEFAULT CURRENT_timestamp NOT NULL,
    client_Secret                varchar(255)  DEFAULT NULL,
    client_Secret_Expires_At       timestamp     DEFAULT NULL,
    client_Name                  varchar(255)                            NOT NULL,
    client_Authentication_Methods varchar(1000)                           NOT NULL,
    authorization_Grant_Types     varchar(1000)                           NOT NULL,
    redirect_Uris                varchar(1000) DEFAULT NULL,
    post_Logout_Redirect_Uris      varchar(1000) DEFAULT NULL,
    scopes                      varchar(1000)                           NOT NULL,
    client_Settings              varchar(2000)                           NOT NULL,
    token_Settings               varchar(2000)                           NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE "authorization"
(
    id                         varchar(255) NOT NULL,
    registered_Client_Id         varchar(255) NOT NULL,
    principal_Name              varchar(255) NOT NULL,
    authorization_Grant_Type     varchar(255) NOT NULL,
    authorized_Scopes           varchar(1000) DEFAULT NULL,
    attributes                 varchar(4000) DEFAULT NULL,
    state                      varchar(500)  DEFAULT NULL,
    authorization_Code_Value     varchar(4000) DEFAULT NULL,
    authorization_Code_Issued_At  timestamp     DEFAULT NULL,
    authorization_Code_Expires_At timestamp     DEFAULT NULL,
    authorization_Code_Metadata  varchar(2000) DEFAULT NULL,
    access_Token_Value           varchar(4000) DEFAULT NULL,
    access_Token_Issued_At        timestamp     DEFAULT NULL,
    access_Token_Expires_At       timestamp     DEFAULT NULL,
    access_Token_Metadata        varchar(2000) DEFAULT NULL,
    access_Token_Type            varchar(255)  DEFAULT NULL,
    access_Token_Scopes          varchar(1000) DEFAULT NULL,
    refresh_Token_Value          varchar(4000) DEFAULT NULL,
    refresh_Token_Issued_At       timestamp     DEFAULT NULL,
    refresh_Token_Expires_At      timestamp     DEFAULT NULL,
    refresh_Token_Metadata       varchar(2000) DEFAULT NULL,
    oidc_Id_Token_Value           varchar(4000) DEFAULT NULL,
    oidc_Id_Token_Issued_At        timestamp     DEFAULT NULL,
    oidc_Id_Token_Expires_At       timestamp     DEFAULT NULL,
    oidc_Id_Token_Metadata        varchar(2000) DEFAULT NULL,
    oidc_Id_Token_Claims          varchar(2000) DEFAULT NULL,
    user_Code_Value              varchar(4000) DEFAULT NULL,
    user_Code_Issued_At           timestamp     DEFAULT NULL,
    user_Code_Expires_At          timestamp     DEFAULT NULL,
    user_Code_Metadata           varchar(2000) DEFAULT NULL,
    device_Code_Value            varchar(4000) DEFAULT NULL,
    device_Code_Issued_At         timestamp     DEFAULT NULL,
    device_Code_Expires_At        timestamp     DEFAULT NULL,
    device_Code_Metadata         varchar(2000) DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE authorization_Consent
(
    registered_Client_Id varchar(255)  NOT NULL,
    principal_Name      varchar(255)  NOT NULL,
    authorities        varchar(1000) NOT NULL,
    PRIMARY KEY (registered_Client_Id, principal_Name)
);
