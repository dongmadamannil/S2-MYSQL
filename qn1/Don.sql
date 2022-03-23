create database movie;
use movie;
create table movies(title varchar(50) primary key,directer varchar(50) not null,myear int(50),rating float(50));
create table actors(actor varchar(50) primary key,ayear int(50));
create table acts(actor varchar(50) ,title varchar(50), FOREIGN KEY(actor) REFERENCES actors (actor) on delete cascade, FOREIGN KEY(title) REFERENCES movies (title) on delete cascade);
create table directors(director varchar(50) not null,dyear int(50) not null);
insert into movies values
("Fargo","coen",1996,8.2),
("Raising Arizona","coem",1987,7.6),
("Spiderman","raimi",2002,7.4),
("Wonder boys","Hanson",2000,7.6);
insert into actors values("Cage",1964),
("Hanks",1956),
("Maguire",1975),
("McDormand",1957);
insert into acts values("Cage","Raising Arizona"),
("Maguire","Spiderman"),
("Maguire","Wonder boys"),
("McDormand","Fargo"),
("McDormand","Raising Arizona"),
("McDormand","Wonder boys");
insert into directors values("Coen",1954),("Hanson",1945),("Raimi",1959);

select title from movies where directer="Hanson" and myear>1997;
select title from movies where  myear>1997;
Select title,rating from movies;
Select actor "actors&Directer "  from actors union select director   from directors;
#create view acdir as
#select actor from actors 
#select movies.title where directer
#select distinct movies.directer,acts.actor from movies  join acts on movies.title=acts.title;
select title from acts where actor="McDormand" and title in (select title from movies where directer="coen");