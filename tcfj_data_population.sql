insert into Recipients (recipient_name, date_started) values ("St.Stephen's Homeless Shelter",CURDATE())

insert into Donors (donor_name, date_started) values ("Seward Co-Op Friendship Store", CURDATE())

insert into Recipients (recipient_name, date_started) values ("Seward Co-Op Friendship Store",CURDATE())

insert into Organizations (organization_name, date_started) values ("Twin Cities Food Justice",CURDATE())

INSERT INTO Shifts
VALUES
(
1,
1,
1,
1,
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

insert into tfcj_rds_db.Volunteers (volunteer_name , created_date ) values ("Alec Larsen", curdate())
insert into tfcj_rds_db.Volunteers (volunteer_name , created_date ) values ("Andrew Larsen", curdate())
