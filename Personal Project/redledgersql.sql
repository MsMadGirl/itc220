SELECT * FROM redledger.trackable;

insert into user(iduser, email, emailConfirmed, password, created, lastLogin)

values(1, 'rebeccalynnscott@gmail.com', 0, 'gonebabygone', 11/19/2016, 10/14/16); 

insert into user(iduser, email, emailConfirmed, password, created, lastLogin)

values(2, 'dwayne@ubu.net', 1, 'thingiewhatsit',  12/06/16, 10/14/16); 

insert into user(iduser, email, emailConfirmed, password, created, lastLogin)

values(3, 'amyfunk@gmail.com', 0, 'badpassword', 12/12/16, 10/14/16); 

insert into user(iduser, email, emailConfirmed, password, created, lastLogin)

values(4, 'nunya@gmail.com', 1, 'erd656!', 12/13/16, 10/14/16); 

insert into user(iduser, email, emailConfirmed, password, created, lastLogin)

values(5, 'cantthinkt@gmail.com', 0, 'asdkjfh23$', 12/14/16, 10/14/16); 


insert into trackable(idtrackable, name, type, startRange, endRange)

values(1, 'StartOfCycle', 'yesno', 0, 1); 

insert into trackable(idtrackable, name, type, startRange, endRange)

values(2, 'bleeding', '0-5', 0, 5); 

insert into trackable(idtrackable, name, type, startRange, endRange)

values(3, 'cravings', 'textBox', 0, 0); 

insert into trackable(idtrackable, name, type, startRange, endRange)

values(4, 'mood', '-5-5', -5, 5); 

insert into trackable(idtrackable, name, type, startRange, endRange)


values(5, 'sleep', '0-5', 0, 5); 



insert into tracking(idtracking, entryDate, updateDate, rating, textBox, iduser, idtrackable)

values(1, 12/12/16, null, 0, null, 1, 1); 

insert into tracking(idtracking, entryDate, updateDate, rating, textBox, iduser, idtrackable)

values(2, 12/12/16, null, 0, null, 2, 2); 

insert into tracking(idtracking, entryDate, updateDate, rating, textBox, iduser, idtrackable)

values(3, 12/13/16, 12/14/16, null, 'salt, alcohol', 3, 3); 

insert into tracking(idtracking, entryDate, updateDate, rating, textBox, iduser, idtrackable)

values(4, 12/13/16, null, -3, null, 4, 4); 

insert into tracking(idtracking, entryDate, updateDate, rating, textBox, iduser, idtrackable)


values(5, 12/14/16, null, 3, null, 5, 5); 



show tables;
Select * from user;
Select * from trackable;
Select * from tracking;


select email
from user
inner join tracking
on tracking.iduser = user.iduser
inner join trackable
on tracking.idtrackable = trackable.idtrackable
where trackable.name = 'bleeding';


select * from tracking
where textBox = !null;


select * from tracking
where textBox  is not null;


select name from trackable
where type = '0-5';


select * from trackable
inner join tracking
on tracking.idtrackable = trackable.idtrackable
where tracking.iduser = 3;