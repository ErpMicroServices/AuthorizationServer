INSERT INTO public."user" (id, username, password, account_non_expired, account_non_locked, credentials_non_expired,
                           provider, provider_id, enabled)
VALUES ('eaff8cee-107c-4bf6-84a7-5468b21de017', 'user',
        '{bcrypt}$2a$10$.Ij9Jbd8waJ7QJT8sx5USeoKT/C9msFxpEphmaEMi/fFkTbHMukRq', true, true, true, null, null, true);

INSERT INTO client (id, client_id, client_id_issued_at, client_secret, client_secret_expires_at, client_name,
                    client_authentication_methods, authorization_grant_types, redirect_uris,
                    post_logout_redirect_uris, scopes, client_settings, token_settings)
VALUES ('b10b7877-5a17-4002-8c8c-4ef7943b2d8d', 'oidc-client', '2024-10-05 08:34:04.000000', '{noop}secret',
        '2030-10-05 08:34:42.000000', 'client_name', 'client_secret_basic', 'authorization_code,refresh_token',
        'http://127.0.0.1:8080/login/oauth2/code/oidc-client', 'http://127.0.0.1:8080/', 'openid, profile',
        'require-authorization-consent: true', 'token settings');
