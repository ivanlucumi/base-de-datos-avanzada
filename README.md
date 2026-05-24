# BaseDatosHR - Proyecto XML, XSD y XQuery en eXist-db

## Descripción del proyecto

Este proyecto consiste en la representación de la base de datos **HR** en formato **XML**, tomando como referencia el modelo de recursos humanos utilizado en Oracle.  
El objetivo principal fue transformar datos organizados originalmente como tablas relacionales en una estructura XML, validar dicha estructura mediante un archivo **XSD** y posteriormente almacenar la información en **eXist-db** para realizar consultas usando **XQuery**.

El trabajo permite evidenciar cómo una base de datos relacional puede ser representada en XML, manteniendo sus entidades principales y sus relaciones. Además, muestra cómo consultar información desde una base de datos nativa XML utilizando XQuery.

---

## Objetivos

- Representar la base de datos HR en formato XML.
- Crear un esquema XSD para validar la estructura del XML.
- Organizar los archivos dentro de eXist-db usando colecciones.
- Crear consultas XQuery para recuperar información específica.
- Relacionar datos entre empleados, cargos y departamentos.
- Demostrar el uso de XML, XSD, XPath, XQuery y eXist-db.

---

## Tecnologías utilizadas

- XML
- XSD
- XQuery
- eXist-db
- eXide
- Oracle HR Sample Schema como referencia
- GitHub para la documentación del proyecto

---

## Código fuente de la implementación: ficheros SQL

Además de los archivos XML, XSD y XQuery, el proyecto incluye una carpeta llamada `sql`, donde se almacenan los ficheros SQL relacionados con la implementación de la base de datos HR.

Estos archivos permiten representar la parte relacional del proyecto y complementar el trabajo realizado con XML y eXist-db.

La carpeta `sql` contiene los siguientes archivos:

- `01_crear_tablas_hr.sql`: contiene las instrucciones para crear las tablas principales de la base de datos HR, como `regions`, `countries`, `locations`, `departments`, `jobs`, `employees` y `job_history`.
- `02_generar_xml_hr.sql`: contiene una consulta SQL/XML que genera el documento XML `BaseDatosHR.xml` a partir de las tablas relacionales usando funciones como `XMLELEMENT` y `XMLAGG`.
- `03_registrar_schema_xml.sql`: contiene el código para registrar el esquema XML `BaseDatosHR.xsd` dentro de Oracle usando `DBMS_XMLSCHEMA`.
- `04_insertar_validar_xml.sql`: contiene el código para crear una tabla de tipo `XMLTYPE`, insertar el documento XML y validarlo contra el esquema XSD.

Estos ficheros SQL representan el código fuente de la implementación y sirven como evidencia de cómo se puede pasar de un modelo relacional a una estructura XML validada.

## Estructura del proyecto

La estructura usada dentro de eXist-db fue la siguiente:

```text
/db/BaseDatosHRBaseDatosHR/
│
├── data/
│   └── BaseDatosHR.xml
│
├── schema/
│   └── BaseDatosHR.xsd
│
├── query/
│   ├── consulta_01_empleados.xq
│   ├── consulta_02_salarios_altos.xq
│   ├── consulta_03_empleados_departamento.xq
│   └── consulta_04_empleados_cargo_departamento.xq
│
├── sql/
│   ├── 01_crear_tablas_hr.sql
│   ├── 02_generar_xml_hr.sql
│   ├── 03_registrar_schema_xml.sql
│   └── 04_insertar_validar_xml.sql
│
└── README.md
