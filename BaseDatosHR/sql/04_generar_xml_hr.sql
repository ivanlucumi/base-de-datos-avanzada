-- ============================================================
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------
-- ============================================================

SELECT CONCAT(
'<?xml version="1.0" encoding="UTF-8"?>\n',
'<BaseDatosHR>\n',
'  <REGIONS>\n',
(SELECT GROUP_CONCAT(CONCAT(
'    <REGION>\n',
'      <REGION_ID>', region_id, '</REGION_ID>\n',
'      <REGION_NAME>', region_name, '</REGION_NAME>\n',
'    </REGION>\n'
) ORDER BY region_id SEPARATOR '') FROM regions),
'  </REGIONS>\n',
'  <COUNTRIES>\n',
(SELECT GROUP_CONCAT(CONCAT(
'    <COUNTRY>\n',
'      <COUNTRY_ID>', country_id, '</COUNTRY_ID>\n',
'      <COUNTRY_NAME>', country_name, '</COUNTRY_NAME>\n',
'      <REGION_ID>', region_id, '</REGION_ID>\n',
'    </COUNTRY>\n'
) ORDER BY country_id SEPARATOR '') FROM countries),
'  </COUNTRIES>\n',
'  <LOCATIONS>\n',
(SELECT GROUP_CONCAT(CONCAT(
'    <LOCATION>\n',
'      <LOCATION_ID>', location_id, '</LOCATION_ID>\n',
'      <STREET_ADDRESS>', COALESCE(street_address, ''), '</STREET_ADDRESS>\n',
'      <POSTAL_CODE>', COALESCE(postal_code, ''), '</POSTAL_CODE>\n',
'      <CITY>', city, '</CITY>\n',
'      <STATE_PROVINCE>', COALESCE(state_province, ''), '</STATE_PROVINCE>\n',
'      <COUNTRY_ID>', country_id, '</COUNTRY_ID>\n',
'    </LOCATION>\n'
) ORDER BY location_id SEPARATOR '') FROM locations),
'  </LOCATIONS>\n',
'  <DEPARTMENTS>\n',
(SELECT GROUP_CONCAT(CONCAT(
'    <DEPARTMENT>\n',
'      <DEPARTMENT_ID>', department_id, '</DEPARTMENT_ID>\n',
'      <DEPARTMENT_NAME>', department_name, '</DEPARTMENT_NAME>\n',
IF(manager_id IS NOT NULL, CONCAT('      <MANAGER_ID>', manager_id, '</MANAGER_ID>\n'), ''),
'      <LOCATION_ID>', location_id, '</LOCATION_ID>\n',
'    </DEPARTMENT>\n'
) ORDER BY department_id SEPARATOR '') FROM departments),
'  </DEPARTMENTS>\n',
'  <JOBS>\n',
(SELECT GROUP_CONCAT(CONCAT(
'    <JOB>\n',
'      <JOB_ID>', job_id, '</JOB_ID>\n',
'      <JOB_TITLE>', job_title, '</JOB_TITLE>\n',
'      <MIN_SALARY>', min_salary, '</MIN_SALARY>\n',
'      <MAX_SALARY>', max_salary, '</MAX_SALARY>\n',
'    </JOB>\n'
) ORDER BY job_id SEPARATOR '') FROM jobs),
'  </JOBS>\n',
'  <EMPLOYEES>\n',
(SELECT GROUP_CONCAT(CONCAT(
'    <EMPLOYEE>\n',
'      <EMPLOYEE_ID>', employee_id, '</EMPLOYEE_ID>\n',
'      <FIRST_NAME>', COALESCE(first_name, ''), '</FIRST_NAME>\n',
'      <LAST_NAME>', last_name, '</LAST_NAME>\n',
'      <EMAIL>', email, '</EMAIL>\n',
'      <PHONE_NUMBER>', COALESCE(phone_number, ''), '</PHONE_NUMBER>\n',
'      <HIRE_DATE>', DATE_FORMAT(hire_date, '%d/%m/%y'), '</HIRE_DATE>\n',
'      <JOB_ID>', job_id, '</JOB_ID>\n',
'      <SALARY>', salary, '</SALARY>\n',
IF(commission_pct IS NOT NULL, CONCAT('      <COMMISSION_PCT>', commission_pct, '</COMMISSION_PCT>\n'), ''),
IF(manager_id IS NOT NULL, CONCAT('      <MANAGER_ID>', manager_id, '</MANAGER_ID>\n'), ''),
IF(department_id IS NOT NULL, CONCAT('      <DEPARTMENT_ID>', department_id, '</DEPARTMENT_ID>\n'), ''),
'    </EMPLOYEE>\n'
) ORDER BY employee_id SEPARATOR '') FROM employees),
'  </EMPLOYEES>\n',
'  <JOB_HISTORY>\n',
(SELECT GROUP_CONCAT(CONCAT(
'    <HISTORY>\n',
'      <EMPLOYEE_ID>', employee_id, '</EMPLOYEE_ID>\n',
'      <START_DATE>', DATE_FORMAT(start_date, '%d/%m/%y'), '</START_DATE>\n',
'      <END_DATE>', DATE_FORMAT(end_date, '%d/%m/%y'), '</END_DATE>\n',
'      <JOB_ID>', job_id, '</JOB_ID>\n',
'      <DEPARTMENT_ID>', department_id, '</DEPARTMENT_ID>\n',
'    </HISTORY>\n'
) ORDER BY employee_id, start_date SEPARATOR '') FROM job_history),
'  </JOB_HISTORY>\n',
'</BaseDatosHR>'
) AS xml_hr;
