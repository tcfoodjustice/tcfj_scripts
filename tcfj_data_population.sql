insert into Recipients (recipient_name, date_started) values ("St.Stephen's Homeless Shelter",CURDATE())

insert into Donors (donar_name, date_started) values ("Seward Co-Op Friendship Store", CURDATE())

insert into Recipients (recipient_name, date_started) values ("Seward Co-Op Friendship Store",CURDATE())

INSERT INTO Shifts
VALUES
(
1,
"Seward Co-Op Friendship Store",
"St.Stephen's Homeless Shelter",
CURDATE(),
'Andrew Larsen',
'Alec Larsen',
'',
CURDATE(),
'car',
100,
0,
25,
'good food',
'no comment',
true,
CURDATE());
