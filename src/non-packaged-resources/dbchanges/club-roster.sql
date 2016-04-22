CREATE TABLE clubroster.club_member (
       member_id INT NOT NULL
     , username TEXT NOT NULL
     , first_name TEXT
     , last_name TEXT
     , email_address TEXT NOT NULL
     , password TEXT NOT NULL
     , member_code TEXT
     , member_since TEXT
     , is_guest BOOLEAN
     , PRIMARY KEY (member_id)
);

CREATE TABLE clubroster.gear (
       gear_id INT NOT NULL
     , gear_type TEXT
     , model_name TEXT
     , make_name TEXT
     , description TEXT
     , PRIMARY KEY (gear_id)
);

CREATE TABLE clubroster.member_gear (
       member_gear_id INT NOT NULL
     , member_id INT NOT NULL
     , gear_id INT NOT NULL
     , PRIMARY KEY (member_gear_id)
     , CONSTRAINT FK_TABLE_3_1 FOREIGN KEY (member_id)
                  REFERENCES clubroster.club_member (member_id)
     , CONSTRAINT FK_TABLE_3_2 FOREIGN KEY (gear_id)
                  REFERENCES clubroster.gear (gear_id)
);

