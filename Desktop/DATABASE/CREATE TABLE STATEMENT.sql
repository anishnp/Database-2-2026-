CREATE TABLE contact_details (
    phone_no NUMBER(12) PRIMARY KEY,
    email VARCHAR2(25),
    social_media VARCHAR2(25)   
);

ALTER TABLE contact_details
ADD CONSTRAINT pk_contact_details
PRIMARY KEY (phone_no);

INSERT INTO contact_details(phone_no, email, social_media)
VALUES (9829482660, 'anish.20251012@outlook.com', 'anish_20251012');

CREATE TABLE education_details (
    qualification VARCHAR2(25) PRIMARY KEY,
    institution VARCHAR2(25),
    year_of_passing NUMBER(4)
);

ALTER TABLE education_details
ADD CONSTRAINT pk_education_details
PRIMARY KEY (qualification);

INSERT INTO education_details (qualification, institution, year_of_passing)
VALUES ('Bachelor of Computer Science', 'University of Nepal', 2025);

CREATE TABLE adress_details (
    province VARCHAR2(25),
    district VARCHAR2(25),
    ward_no NUMBER(2)
);

ALTER TABLE adress_detatils
ADD CONSTRAINT pk_adress_details
PRIMARY KEY (province, district, ward_no);

INSERT INTO adress_details (province, district, ward_no)
VALUES ('Province No. 1', 'Kathmandu', 5);

CREATE TABLE identity_details (
    nationality VARCHAR2(25),
    country VARCHAR2(25),
    gender VARCHAR2(10)
);

ALTER TABLE identity
ADD CONSTRAINT pk_identity_details
PRIMARY KEY (nationality);

INSERT INTO identity (nationality, country, gender)
VALUES ('Nepali' , 'Nepal', 'Male');


