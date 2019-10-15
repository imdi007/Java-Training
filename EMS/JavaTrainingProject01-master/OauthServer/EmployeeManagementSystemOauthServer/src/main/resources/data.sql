INSERT INTO oauth_client_details (client_id, client_secret, web_server_redirect_uri, scope, access_token_validity, refresh_token_validity, resource_ids, authorized_grant_types, additional_information) VALUES ('web', '{bcrypt}$2a$10$A5k62FkQLiVIu6jKuqkpBu9nOFAswG13v75DQ8o3.k.UtO3ZXSi7C', 'http://localhost:8081/login', 'READ,WRITE', '3600', '10000', 'inventory,payment', 'authorization_code,password,refresh_token,implicit', '{}');

 INSERT INTO permission (name) VALUES
 ('create_profile'),
 ('read_profile'),
 ('update_profile'),
 ('delete_profile');

 INSERT INTO role (name) VALUES
		('ROLE_manager'),('ROLE_operator');

 INSERT INTO permission_role (permission_id, role_id) VALUES
     (1,1), /*create-> manager */
     (2,1), /* read manager */
     (3,1), /* update manager */
     (4,1), /* delete manager */
     (2,2);  /* read operator */

 INSERT INTO user (id, username,password, email, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked) VALUES ('1', 'imdad','{bcrypt}$2a$10$zRmgujLKwOUKuFvXdJLhw.R7oKpHwgAfUQOw4e6BzIlwnl7hRxtSC', 'imdad@gm.com', '1', '1', '1', '1');
 INSERT INTO user (id, username,password, email, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked) VALUES ('2', 'user', '{bcrypt}$2a$10$/JoiO4EhMs208FRtjI0OXO3quQ9s.lDorJOa6rVmUer0V/Sg4DhRG','user@gm.com', '1', '1', '1', '1');

 INSERT INTO role_user (role_id, user_id)
    VALUES
    (1, 1) /* imdad-Manager */,
    (2, 2) /* user-Operator */ ;
