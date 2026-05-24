-- ============================================================
-- Archivo: 01_crear_tablas_hr.sql
-- Descripción: Creación básica de tablas para la base HR
-- ============================================================

CREATE TABLE regions (
    region_id NUMBER PRIMARY KEY,
    region_name VARCHAR2(50)
);

CREATE TABLE countries (
    country_id CHAR(2) PRIMARY KEY,
    country_name VARCHAR2(60),
    region_id NUMBER,
    CONSTRAINT fk_countries_regions
        FOREIGN KEY (region_id)
        REFERENCES regions(region_id)
);

CREATE TABLE locations (
    location_id NUMBER PRIMARY KEY,
    street_address VARCHAR2(100),
    postal_code VARCHAR2(20),
    city VARCHAR2(60),
    state_province VARCHAR2(60),
    country_id CHAR(2),
    CONSTRAINT fk_locations_countries
        FOREIGN KEY (country_id)
        REFERENCES countries(country_id)
);

CREATE TABLE jobs (
    job_id VARCHAR2(20) PRIMARY KEY,
    job_title VARCHAR2(80),
    min_salary NUMBER,
    max_salary NUMBER
);

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(80),
    manager_id NUMBER,
    location_id NUMBER,
    CONSTRAINT fk_departments_locations
        FOREIGN KEY (location_id)
        REFERENCES locations(location_id)
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(40),
    last_name VARCHAR2(40),
    email VARCHAR2(80),
    phone_number VARCHAR2(30),
    hire_date DATE,
    job_id VARCHAR2(20),
    salary NUMBER,
    commission_pct NUMBER,
    manager_id NUMBER,
    department_id NUMBER,
    CONSTRAINT fk_employees_jobs
        FOREIGN KEY (job_id)
        REFERENCES jobs(job_id),
    CONSTRAINT fk_employees_departments
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE job_history (
    employee_id NUMBER,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR2(20),
    department_id NUMBER,
    CONSTRAINT pk_job_history
        PRIMARY KEY (employee_id, start_date),
    CONSTRAINT fk_job_history_employees
        FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id),
    CONSTRAINT fk_job_history_jobs
        FOREIGN KEY (job_id)
        REFERENCES jobs(job_id),
    CONSTRAINT fk_job_history_departments
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);