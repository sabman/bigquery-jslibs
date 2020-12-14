CREATE OR REPLACE FUNCTION jslibs.quadkey.parent(quadkey STRING)
  RETURNS STRING
  DETERMINISTIC
  LANGUAGE js AS
"""
return parent(quadkey);  
"""
OPTIONS (
  library=["gs://bigquery-jslibs/quadkey.js"]
);
