-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla basedatoshr.countries: ~5 rows (aproximadamente)
INSERT INTO `countries` (`country_id`, `country_name`, `region_id`) VALUES
	('CA', 'Canada', 2),
	('IT', 'Italy', 1),
	('JP', 'Japan', 3),
	('UK', 'United Kingdom', 1),
	('US', 'United States of America', 2);

-- Volcando datos para la tabla basedatoshr.departments: ~0 rows (aproximadamente)
INSERT INTO `departments` (`department_id`, `department_name`, `manager_id`, `location_id`) VALUES
	(10, 'Administration', 200, 1700),
	(20, 'Marketing', 201, 1800),
	(30, 'Purchasing', 114, 1700),
	(40, 'Human Resources', 203, 2400),
	(60, 'IT', 103, 1400),
	(90, 'Executive', 100, 1700),
	(110, 'Accounting', 205, 1700);

-- Volcando datos para la tabla basedatoshr.employees: ~0 rows (aproximadamente)
INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `email`, `phone_number`, `hire_date`, `job_id`, `salary`, `commission_pct`, `manager_id`, `department_id`) VALUES
	(100, 'Steven', 'King', 'SKING', '515.123.4567', '2003-06-17', 'AD_PRES', 24000.00, NULL, NULL, 90),
	(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21', 'AD_VP', 17000.00, NULL, 100, 90),
	(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '2001-01-13', 'AD_VP', 17000.00, NULL, 100, 90),
	(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03', 'IT_PROG', 9000.00, NULL, 102, 60),
	(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2007-05-21', 'IT_PROG', 6000.00, NULL, 103, 60),
	(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '2002-12-07', 'AD_ASST', 11000.00, NULL, 100, 30),
	(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-17', 'AD_ASST', 4400.00, NULL, 101, 10),
	(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1996-02-17', 'MK_MAN', 13000.00, NULL, 100, 20),
	(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '1997-08-17', 'MK_REP', 6000.00, NULL, 201, 20),
	(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '1994-06-07', 'AD_ASST', 6500.00, NULL, 101, 40),
	(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1994-06-07', 'AC_MGR', 12000.00, NULL, 101, 110);

-- Volcando datos para la tabla basedatoshr.jobs: ~0 rows (aproximadamente)
INSERT INTO `jobs` (`job_id`, `job_title`, `min_salary`, `max_salary`) VALUES
	('AC_ACCOUNT', 'Public Accountant', 4200.00, 9000.00),
	('AC_MGR', 'Accounting Manager', 8200.00, 16000.00),
	('AD_ASST', 'Administration Assistant', 3000.00, 6000.00),
	('AD_PRES', 'President', 20080.00, 40000.00),
	('AD_VP', 'Administration Vice President', 15000.00, 30000.00),
	('IT_PROG', 'Programmer', 4000.00, 10000.00),
	('MK_MAN', 'Marketing Manager', 9000.00, 15000.00),
	('MK_REP', 'Marketing Representative', 4000.00, 9000.00);

-- Volcando datos para la tabla basedatoshr.job_history: ~0 rows (aproximadamente)
INSERT INTO `job_history` (`employee_id`, `start_date`, `end_date`, `job_id`, `department_id`) VALUES
	(101, '1997-09-21', '2001-10-27', 'AC_ACCOUNT', 110),
	(101, '2001-10-28', '2005-03-15', 'AC_MGR', 110),
	(102, '2001-01-13', '2006-07-24', 'IT_PROG', 60),
	(200, '1995-09-17', '2001-06-17', 'AD_ASST', 90),
	(201, '2004-02-17', '2007-12-19', 'MK_REP', 20);

-- Volcando datos para la tabla basedatoshr.locations: ~0 rows (aproximadamente)
INSERT INTO `locations` (`location_id`, `street_address`, `postal_code`, `city`, `state_province`, `country_id`) VALUES
	(1000, '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT'),
	(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
	(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
	(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
	(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
	(2400, '8204 Arthur St', NULL, 'London', NULL, 'UK');

-- Volcando datos para la tabla basedatoshr.regions: ~0 rows (aproximadamente)
INSERT INTO `regions` (`region_id`, `region_name`) VALUES
	(1, 'Europe'),
	(2, 'Americas'),
	(3, 'Asia'),
	(4, 'Middle East and Africa');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
