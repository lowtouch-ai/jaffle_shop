USE {{ params.schema_name }};

CREATE OR REPLACE FUNCTION addone(i int)
RETURNS INT
LANGUAGE PYTHON
RUNTIME_VERSION = '3.11'
HANDLER = 'addone_py'
as
$$
def addone_py(i):
  return i+1
$$;

SELECT addone(3);
