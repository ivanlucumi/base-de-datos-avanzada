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

## Estructura del proyecto

La estructura usada dentro de eXist-db fue la siguiente:

```text
/db/BaseDatosHR
│
├── data
│   └── BaseDatosHR.xml
│
├── schema
│   └── BaseDatosHR.xsd
│
└── query
    ├── consulta_01_empleados.xq
    ├── consulta_02_salarios_altos.xq
    ├── consulta_03_empleados_departamento.xq
    └── consulta_04_empleados_cargo_departamento.xq
