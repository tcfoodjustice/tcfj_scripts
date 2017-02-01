CREATE TABLE Donors ( donor_id INT NOT NULL AUTO_INCREMENT, donor_name VARCHAR(100) NOT NULL, date_started DATE, PRIMARY KEY (donor_id), UNIQUE (donor_name)

);

CREATE TABLE Recipients ( recipient_id INT NOT NULL AUTO_INCREMENT, recipient_name VARCHAR(100) NOT NULL, date_started DATE, PRIMARY KEY (recipient_id), UNIQUE (recipient_name)

);

CREATE TABLE Shifts( shift_id INT NOT NULL AUTO_INCREMENT, organization_id INT NOT NULL, donor_id INT NOT NULL, recipient_id INT NOT NULL, rescue_date DATE NOT NULL, volunteer_1 VARCHAR(100), volunteer_2 VARCHAR(100), volunteer_3 VARCHAR(100), pick_up_time TIMESTAMP, mode_of_transit VARCHAR(25), food_donated_weight INT, food_composted_weight INT, shift_length int, food_type_summary VARCHAR(250), comments VARCHAR(250), supplies_stocked tinyint(1) DEFAULT NULL, submit_time TIMESTAMP, PRIMARY KEY (shift_id), FOREIGN KEY (organization_id) REFERENCES Organizations(organization_id), FOREIGN KEY (donor_id) REFERENCES Donors(donor_id), FOREIGN KEY (recipient_id) REFERENCES Recipients(recipient_id), UNIQUE (rescue_date, organization_id, donor_id, recipient_id)

);

CREATE TABLE Volunteers ( volunteer_id INT NOT NULL AUTO_INCREMENT, volunteer_name VARCHAR(100) NOT NULL, created_date DATETIME DEFAULT current_timestamp, PRIMARY KEY (volunteer_id), UNIQUE (volunteer_name)

);

CREATE TABLE Organizations ( organization_id INT NOT NULL AUTO_INCREMENT, organization_name VARCHAR(100) NOT NULL, created_date DATE, PRIMARY KEY (organization_id), UNIQUE (organization_name)

);
