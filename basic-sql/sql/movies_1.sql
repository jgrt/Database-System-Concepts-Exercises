--Load sample data

delete from actors;
delete from movies;
delete from actor_role;

insert into actors values ('10000', 'Charlie Chaplin');
insert into actors values ('10001', 'Robert De Niro');
insert into actors values ('10002', 'Al Pacino');
insert into actors values ('10003', 'Jack Nicholson');

insert into movies values ('20000', 'The Great Dictator');
insert into movies values ('20001', 'Limelight');
insert into movies values ('20002', 'Taxi Driver');
insert into movies values ('20003', 'Raging Bull');
insert into movies values ('20004', 'The Godfather');
insert into movies values ('20005', 'The Godfather: Part II');
insert into movies values ('20006', 'The Godfather Part III');

insert into actor_role values ('20000', '10000', 'Actor');
insert into actor_role values ('20000', '10000', 'Writer');
insert into actor_role values ('20000', '10000', 'Director');
insert into actor_role values ('20001', '10000', 'Actor');
insert into actor_role values ('20002', '10001', 'Actor');
insert into actor_role values ('20004', '10002', 'Actor');
insert into actor_role values ('20006', '10002', 'Actor');