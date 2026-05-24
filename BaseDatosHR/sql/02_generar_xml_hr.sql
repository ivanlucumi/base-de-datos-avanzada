-- ============================================================
-- Archivo: 02_generar_xml_hr.sql
-- Descripción: Generación de XML desde la base HR usando SQL/XML
-- ============================================================

SELECT XMLELEMENT(
    "BaseDatosHR",

    XMLELEMENT(
        "REGIONS",
        (
            SELECT XMLAGG(
                XMLELEMENT(
                    "REGION",
                    XMLELEMENT("REGION_ID", r.region_id),
                    XMLELEMENT("REGION_NAME", r.region_name)
                )
            )
            FROM regions r
        )
    ),

    XMLELEMENT(
        "COUNTRIES",
        (
            SELECT XMLAGG(
                XMLELEMENT(
                    "COUNTRY",
                    XMLELEMENT("COUNTRY_ID", c.country_id),
                    XMLELEMENT("COUNTRY_NAME", c.country_name),
                    XMLELEMENT("REGION_ID", c.region_id)
                )
            )
            FROM countries c
        )
    ),

    XMLELEMENT(
        "LOCATIONS",
        (
            SELECT XMLAGG(
                XMLELEMENT(
                    "LOCATION",
                    XMLELEMENT("LOCATION_ID", l.location_id),
                    XMLELEMENT("STREET_ADDRESS", l.street_address),
                    XMLELEMENT("POSTAL_CODE", l.postal_code),
                    XMLELEMENT("CITY", l.city),
                    XMLELEMENT("STATE_PROVINCE", l.state_province),
                    XMLELEMENT("COUNTRY_ID", l.country_id)
                )
            )
            FROM locations l
        )
    ),

    XMLELEMENT(
        "DEPARTMENTS",
        (
            SELECT XMLAGG(
                XMLELEMENT(
                    "DEPARTMENT",
                    XMLELEMENT("DEPARTMENT_ID", d.department_id),
                    XMLELEMENT("DEPARTMENT_NAME", d.department_name),
                    XMLELEMENT("MANAGER_ID", d.manager_id),
                    XMLELEMENT("LOCATION_ID", d.location_id)
                )
            )
            FROM departments d
        )
    ),

    XMLELEMENT(
        "JOBS",
        (
            SELECT XMLAGG(
                XMLELEMENT(
                    "JOB",
                    XMLELEMENT("JOB_ID", j.job_id),
                    XMLELEMENT("JOB_TITLE", j.job_title),
                    XMLELEMENT("MIN_SALARY", j.min_salary),
                    XMLELEMENT("MAX_SALARY", j.max_salary)
                )
            )
            FROM jobs j
        )
    ),

    XMLELEMENT(
        "EMPLOYEES",
        (
            SELECT XMLAGG(
                XMLELEMENT(
                    "EMPLOYEE",
                    XMLELEMENT("EMPLOYEE_ID", e.employee_id),
                    XMLELEMENT("FIRST_NAME", e.first_name),
                    XMLELEMENT("LAST_NAME", e.last_name),
                    XMLELEMENT("EMAIL", e.email),
                    XMLELEMENT("PHONE_NUMBER", e.phone_number),
                    XMLELEMENT("HIRE_DATE", TO_CHAR(e.hire_date, 'DD/MM/YY')),
                    XMLELEMENT("JOB_ID", e.job_id),
                    XMLELEMENT("SALARY", e.salary),
                    XMLELEMENT("COMMISSION_PCT", e.commission_pct),
                    XMLELEMENT("MANAGER_ID", e.manager_id),
                    XMLELEMENT("DEPARTMENT_ID", e.department_id)
                )
            )
            FROM employees e
        )
    ),

    XMLELEMENT(
        "JOB_HISTORY",
        (
            SELECT XMLAGG(
                XMLELEMENT(
                    "HISTORY",
                    XMLELEMENT("EMPLOYEE_ID", h.employee_id),
                    XMLELEMENT("START_DATE", TO_CHAR(h.start_date, 'DD/MM/YY')),
                    XMLELEMENT("END_DATE", TO_CHAR(h.end_date, 'DD/MM/YY')),
                    XMLELEMENT("JOB_ID", h.job_id),
                    XMLELEMENT("DEPARTMENT_ID", h.department_id)
                )
            )
            FROM job_history h
        )
    )
) AS xml_hr
FROM dual;