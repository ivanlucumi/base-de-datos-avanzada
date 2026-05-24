xquery version "3.1";

for $e in collection("/db/BaseDatosHR/data")//EMPLOYEE
where xs:decimal($e/SALARY) > 10000
return
    <empleado>
        <id>{ $e/EMPLOYEE_ID/text() }</id>
        <nombre>{ concat($e/FIRST_NAME/text(), " ", $e/LAST_NAME/text()) }</nombre>
        <salario>{ $e/SALARY/text() }</salario>
    </empleado>