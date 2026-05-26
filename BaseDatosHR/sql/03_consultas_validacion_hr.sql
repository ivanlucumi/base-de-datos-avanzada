-- ============================================================
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------
-- ============================================================

SELECT 'REGIONS' AS tabla, COUNT(*) AS total FROM regions
UNION ALL
SELECT 'COUNTRIES', COUNT(*) FROM countries
UNION ALL
SELECT 'LOCATIONS', COUNT(*) FROM locations
UNION ALL
SELECT 'JOBS', COUNT(*) FROM jobs
UNION ALL
SELECT 'DEPARTMENTS', COUNT(*) FROM departments
UNION ALL
SELECT 'EMPLOYEES', COUNT(*) FROM employees
UNION ALL
SELECT 'JOB_HISTORY', COUNT(*) FROM job_history;

SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS empleado,
    j.job_title AS cargo,
    d.department_name AS departamento,
    e.salary
FROM employees e
INNER JOIN jobs j ON e.job_id = j.job_id
LEFT JOIN departments d ON e.department_id = d.department_id
ORDER BY e.employee_id;

SELECT
    employee_id,
    CONCAT(first_name, ' ', last_name) AS empleado,
    salary
FROM employees
WHERE salary > 10000
ORDER BY salary DESC;

SELECT
    d.department_id,
    d.department_name,
    l.city,
    c.country_name,
    r.region_name
FROM departments d
INNER JOIN locations l ON d.location_id = l.location_id
INNER JOIN countries c ON l.country_id = c.country_id
INNER JOIN regions r ON c.region_id = r.region_id
ORDER BY d.department_id;

SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS empleado,
    h.start_date,
    h.end_date,
    j.job_title AS cargo_historial,
    d.department_name AS departamento_historial
FROM job_history h
INNER JOIN employees e ON h.employee_id = e.employee_id
INNER JOIN jobs j ON h.job_id = j.job_id
INNER JOIN departments d ON h.department_id = d.department_id
ORDER BY e.employee_id, h.start_date;

SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_empleados
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY total_empleados DESC, d.department_name;

SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS empleado,
    COALESCE(CONCAT(m.first_name, ' ', m.last_name), 'Sin jefe') AS jefe
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id
ORDER BY e.employee_id;
