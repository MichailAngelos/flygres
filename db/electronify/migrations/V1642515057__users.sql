CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'mgeorgiou', '1234' ,'mgeorgiou@electronify.com',99942956,'10-04-19 12:00:17',true);

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'achaitidis', '12312' ,'achaitidis@electronify.com',9994556,'10-05-19 16:00:17',false);

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'tgeorgiou', '1234551' ,'tgeorgiou@electronify.com',99942956,'10-04-22 12:00:17',true);

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'tchristou', '119912234' ,'tchristou@electronify.com',97542956,'10-04-11 20:00:17',false);

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'mnapoleondos', '12200234' ,'mnapoleondos@electronify.com',99942445,'12-04-20 11:00:17',true);

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'dgeorgiou', '11678234' ,'dgeorgiou@electronify.com',99942956,'05-04-19 12:00:17',true);

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'echristou', '12341' ,'echristou@electronify.com',992342956,'02-04-19 12:00:17',true);

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'kvenizelou', '1113234' ,'kvenizelou@electronify.com',99862956,'09-04-19 18:00:17',true);

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'vgeorgiou', '1234' ,'vgeorgiou@electronify.com',99942956,'10-04-19 12:00:17',true);

INSERT INTO electronify.users (id,username,password,email,telephone,created_at,active) VALUES(uuid_generate_v4(),'ngpcmaster', '1234' ,'ngpcmaster@electronify.com',99944556,'10-04-19 12:00:17',true);
