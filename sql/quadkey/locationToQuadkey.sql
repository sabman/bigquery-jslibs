CREATE OR REPLACE FUNCTION jslibs.quadkey.locationToQuadkey(latitude FLOAT64, longitude FLOAT64, resolution NUMERIC)
  RETURNS STRING
  DETERMINISTIC
  LANGUAGE js AS
"""
return locationToQuadkey({ lat: latitude, lng: longitude }, resolution);
"""
OPTIONS (
  library=["gs://bigquery-jslibs/quadkey.js"]
);
