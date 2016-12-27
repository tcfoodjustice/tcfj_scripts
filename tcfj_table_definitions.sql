CREATE TABLE Donors ( donar_id INT NOT NULL AUTO_INCREMENT, donar_name VARCHAR(100) NOT NULL, date_started DATE, PRIMARY KEY (donar_id), UNIQUE (donar_name)

)

CREATE TABLE Recipients ( recipient_id INT NOT NULL AUTO_INCREMENT, recipient_name VARCHAR(100) NOT NULL, date_started DATE, PRIMARY KEY (recipient_id), UNIQUE (recipient_name)

)

CREATE TABLE Shifts( shift_id INT NOT NULL AUTO_INCREMENT, donar_id int, recipient_id int, rescue_date DATE, volunteer_1 VARCHAR(100), volunteer_2 VARCHAR(100), volunteer_3 VARCHAR(100), pick_up_time DATE, mode_of_transit VARCHAR(25), food_donated_weight INT, food_composted_weight INT, shift_length int, food_type_summary VARCHAR(250), comments VARCHAR(250), supplies_stocked tinyint(1) DEFAULT NULL, submit_time TIMESTAMP, PRIMARY KEY (shift_id), FOREIGN KEY (donar_id) REFERENCES Donors(donar_id), FOREIGN KEY (recipient_id) REFERENCES Recipients(recipient_id), UNIQUE (rescue_date, donar_id, recipient_id)

);