xquery version "3.1";

let $db := collection("/db/BaseDatosHR/data")/BaseDatosHR

for $e in $db/EMPLOYEES/EMPLOYEE
let $d := $db/DEPARTMENTS/DEPARTMENT[DEPARTMENT_ID = $e/DEPARTMENT_ID]
let $j := $db/JOBS/JOB[JOB_ID = $e/JOB_ID]
return
    <empleado>
        <id>{ $e/EMPLOYEE_ID/text() }</id>
        <nombre>{ concat($e/FIRST_NAME/text(), " ", $e/LAST_NAME/text()) }</nombre>
        <cargo>{ $j/JOB_TITLE/text() }</cargo>
        <departamento>{ $d/DEPARTMENT_NAME/text() }</departamento>
        <salario>{ $e/SALARY/text() }</salario>
    </empleado>