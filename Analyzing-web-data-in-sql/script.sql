create schema students; -- create a schema
create schema users; -- create schema

-- create a table, but it will be inside the public schema
create table learner (
Name varchar(100),
Age int,
Email varchar(100)
);

-- create table but will be inside the users schema
create table users.learner (
Name varchar(100),
Age int,
Email varchar(100)
);

-- create schema practice
create schema practice;

-- create a web_events table in the practice schema
CREATE TABLE practice.web_events (
	id integer,
	account_id integer,
	occurred_at timestamp,
	channel bpchar
);

-- create the web_events table but in the public schema
CREATE TABLE public.web_events (
	id integer,
	account_id integer,
	occurred_at timestamp,
	channel bpchar
);

select * from web_events; -- this will read from public schema
select * from practice.web_events; -- read from table inside the practice schema 

-- insert values into practice.web_events table
INSERT INTO practice.web_events VALUES (1,1001,'2015-10-06 17:13:58','direct');
INSERT INTO practice.web_events VALUES (2,1001,'2015-11-05 03:08:26','direct');
INSERT INTO practice.web_events VALUES (3,1001,'2015-12-04 03:57:24','direct');

truncate table practice.web_events; --remove items from a table

drop table practice.web_events; -- delete the whole table


-- truncate removes values from a table
-- delete removes according to the condition
-- drop deletes the whole table

INSERT INTO practice.web_events VALUES (1,1001,'2015-10-06 17:13:58','twitter');
INSERT INTO practice.web_events VALUES (2,1001,'2015-11-05 03:08:26','direct');
INSERT INTO practice.web_events VALUES (3,1001,'2015-12-04 03:57:24','direct');

--delete from tablename
--where condition
delete from practice.web_events where channel = 'twitter';

create schema students; -- create a schema
create schema users; -- create schema

-- create a table, but it will be inside the public schema
create table learner (
Name varchar(100),
Age int,
Email varchar(100)
);

-- create table but will be inside the users schema
create table users.learner (
Name varchar(100),
Age int,
Email varchar(100)
);

-- create schema practice
create schema practice;

-- create a web_events table in the practice schema
CREATE TABLE practice.web_events (
	id integer,
	account_id integer,
	occurred_at timestamp,
	channel bpchar
);

-- create the web_events table but in the public schema
CREATE TABLE public.web_events (
	id integer,
	account_id integer,
	occurred_at timestamp,
	channel bpchar
);

select * from web_events; -- this will read from public schema
select * from practice.web_events; -- read from table inside the practice schema 

-- insert values into practice.web_events table
INSERT INTO practice.web_events VALUES (1,1001,'2015-10-06 17:13:58','direct');
INSERT INTO practice.web_events VALUES (2,1001,'2015-11-05 03:08:26','direct');
INSERT INTO practice.web_events VALUES (3,1001,'2015-12-04 03:57:24','direct');

truncate table practice.web_events; --remove items from a table

drop table practice.web_events; -- delete the whole table


-- truncate removes values from a table
-- delete removes according to the condition
-- drop deletes the whole table

INSERT INTO practice.web_events VALUES (1,1001,'2015-10-06 17:13:58','twitter');
INSERT INTO practice.web_events VALUES (2,1001,'2015-11-05 03:08:26','direct');
INSERT INTO practice.web_events VALUES (3,1001,'2015-12-04 03:57:24','direct');

--delete from tablename
--where condition
delete from practice.web_events where channel = 'twitter';

