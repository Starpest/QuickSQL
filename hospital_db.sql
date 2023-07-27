-- Create the hospital database
CREATE DATABASE HospitalDB;

-- Use the hospital database
USE HospitalDB;

-- Create the 'patients' table
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    address VARCHAR(200),
    city VARCHAR(50),
    country VARCHAR(50),
    contact_number VARCHAR(20)
);

-- Create the 'doctors' table
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(100),
    contact_number VARCHAR(20)
);

-- Create the 'appointments' table
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME,
    appointment_type VARCHAR(50),
    diagnosis VARCHAR(200),
    prescription VARCHAR(500),
    FOREIGN KEY (patient_id) REFERENCES patients (patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors (doctor_id)
);

-- Create the 'wards' table
CREATE TABLE wards (
    ward_id INT PRIMARY KEY,
    ward_name VARCHAR(50),
    capacity INT
);

-- Create the 'admissions' table
CREATE TABLE admissions (
    admission_id INT PRIMARY KEY,
    patient_id INT,
    ward_id INT,
    admission_date DATETIME,
    discharge_date DATETIME,
    diagnosis VARCHAR(200),
    FOREIGN KEY (patient_id) REFERENCES patients (patient_id),
    FOREIGN KEY (ward_id) REFERENCES wards (ward_id)
);

-- Create the 'procedures' table
CREATE TABLE procedures (
    procedure_id INT PRIMARY KEY,
    procedure_name VARCHAR(100),
    description TEXT
);

-- Create the 'medications' table
CREATE TABLE medications (
    medication_id INT PRIMARY KEY,
    medication_name VARCHAR(100),
    dosage VARCHAR(50),
    usage_instructions TEXT
);

-- Create the 'test_results' table
CREATE TABLE test_results (
    result_id INT PRIMARY KEY,
    patient_id INT,
    test_name VARCHAR(100),
    result_value VARCHAR(50),
    test_date DATETIME,
    FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
);
