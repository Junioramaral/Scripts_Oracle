-- Oracle bind variable values

SELECT
   a.sql_text,
   b.name,
   b.position,
   b.datatype_string,
   b.value_string
FROM
  v$sql_bind_capture b,
  v$sqlarea          a
WHERE
   b.sql_id = '&sqlid'
AND
   b.sql_id = a.sql_id;