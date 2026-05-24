-- ============================================================
-- Archivo: 03_registrar_schema_xml.sql
-- Descripción: Registro del XML Schema en Oracle
-- ============================================================

BEGIN
    DBMS_XMLSCHEMA.REGISTERSCHEMA(
        SCHEMAURL => 'BaseDatosHR.xsd',
        SCHEMADOC => BFILENAME('XMLDIR', 'BaseDatosHR.xsd'),
        LOCAL => TRUE,
        GENTYPES => FALSE,
        GENTABLES => FALSE,
        CSID => NLS_CHARSET_ID('AL32UTF8')
    );
END;
/