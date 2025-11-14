-- Create Database
CREATE DATABASE HospitalPatientRecords

-- Create Tables
create table patients (
	patient_id int primary key,
	full_name varchar(50),
	gender varchar(20),
	date_of_birth date,
	city varchar(50),
	phone varchar(30)
);

create table doctors (
	doctor_id int primary key,
	full_name varchar(50),
	specialty varchar(100),
	department varchar(50),
	joining_date date
);

CREATE TABLE visits (
    visit_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    visit_date DATE,
    diagnosis VARCHAR(255),
    visit_type VARCHAR(50),

    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE admissions (
    admission_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    admit_date DATE,
    discharge_date DATE,
    room_type VARCHAR(50),
    admission_reason VARCHAR(250),

    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY,
    admission_id INT,
    treatment_name VARCHAR(100),
    treatment_cost DECIMAL(20, 2),
    treatment_date DATE

    FOREIGN KEY (admission_id) REFERENCES admissions(admission_id)
);

CREATE TABLE billing (
    bill_id INT PRIMARY KEY,
    admission_id INT,
    total_amount DECIMAL(20, 2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(50)

    FOREIGN KEY (admission_id) REFERENCES admissions(admission_id)
);