--CREATE tables

CREATE TABLE IF NOT EXISTS actors
    (AID			varchar(5),
	 name			varchar(30) not null,
	 primary key (AID)
	);

CREATE TABLE IF NOT EXISTS movies
    (MID			varchar(5),
	 title			varchar(30) not null,
	 primary key (MID)
	);

CREATE TABLE IF NOT EXISTS actor_role
    (MID			varchar(5),
     AID			varchar(5),
	 rolename			varchar(30) not null,
	 primary key (MID, AID, rolename),
	 foreign key (MID) references movies
		on delete cascade,
	 foreign key (AID) references actors
		on delete cascade
	);