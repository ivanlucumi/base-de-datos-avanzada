-- ============================================================
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------
-- ============================================================

INSERT INTO regions (region_id, region_name) VALUES
(1, 'Europe'),
(2, 'Americas'),
(3, 'Asia'),
(4, 'Middle East and Africa');

INSERT INTO countries (country_id, country_name, region_id) VALUES
('US', 'United States of America', 2),
('CA', 'Canada', 2),
('UK', 'United Kingdom', 1),
('IT', 'Italy', 1),
('JP', 'Japan', 3);

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
(2400, '8204 Arthur St', NULL, 'London', NULL, 'UK'),
(1000, '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT'),
(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
('AD_PRES', 'President', 20080, 40000),
('AD_VP', 'Administration Vice President', 15000, 30000),
('AD_ASST', 'Administration Assistant', 3000, 6000),
('IT_PROG', 'Programmer', 4000, 10000),
('MK_MAN', 'Marketing Manager', 9000, 15000),
('MK_REP', 'Marketing Representative', 4000, 9000),
('AC_ACCOUNT', 'Public Accountant', 4200, 9000),
('AC_MGR', 'Accounting Manager', 8200, 16000);

INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1700),
(40, 'Human Resources', 203, 2400),
(60, 'IT', 103, 1400),
(90, 'Executive', 100, 1700),
(110, 'Accounting', 205, 1700);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', STR_TO_DATE('17/06/03', '%d/%m/%y'), 'AD_PRES', 24000, NULL, NULL, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', STR_TO_DATE('21/09/05', '%d/%m/%y'), 'AD_VP', 17000, NULL, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', STR_TO_DATE('13/01/01', '%d/%m/%y'), 'AD_VP', 17000, NULL, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', STR_TO_DATE('03/01/06', '%d/%m/%y'), 'IT_PROG', 9000, NULL, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', STR_TO_DATE('21/05/07', '%d/%m/%y'), 'IT_PROG', 6000, NULL, 103, 60),
(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', STR_TO_DATE('07/12/02', '%d/%m/%y'), 'AD_ASST', 11000, NULL, 100, 30),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', STR_TO_DATE('17/09/87', '%d/%m/%y'), 'AD_ASST', 4400, NULL, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', STR_TO_DATE('17/02/96', '%d/%m/%y'), 'MK_MAN', 13000, NULL, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', STR_TO_DATE('17/08/97', '%d/%m/%y'), 'MK_REP', 6000, NULL, 201, 20),
(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', STR_TO_DATE('07/06/94', '%d/%m/%y'), 'AD_ASST', 6500, NULL, 101, 40),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', STR_TO_DATE('07/06/94', '%d/%m/%y'), 'AC_MGR', 12000, NULL, 101, 110);

INSERT INTO job_history (employee_id, start_date, end_date, job_id, department_id) VALUES
(102, STR_TO_DATE('13/01/01', '%d/%m/%y'), STR_TO_DATE('24/07/06', '%d/%m/%y'), 'IT_PROG', 60),
(101, STR_TO_DATE('21/09/97', '%d/%m/%y'), STR_TO_DATE('27/10/01', '%d/%m/%y'), 'AC_ACCOUNT', 110),
(101, STR_TO_DATE('28/10/01', '%d/%m/%y'), STR_TO_DATE('15/03/05', '%d/%m/%y'), 'AC_MGR', 110),
(201, STR_TO_DATE('17/02/04', '%d/%m/%y'), STR_TO_DATE('19/12/07', '%d/%m/%y'), 'MK_REP', 20),
(200, STR_TO_DATE('17/09/95', '%d/%m/%y'), STR_TO_DATE('17/06/01', '%d/%m/%y'), 'AD_ASST', 90);
