DROP DATABASE IF EXISTS indexed_cars;
-- Create a new database named indexed_cars owned by indexed_cars_user
CREATE DATABASE indexed_cars;
ALTER DATABASE indexed_cars OWNER TO indexed_cars_user;


DROP USER IF EXISTS indexed_cars_user;
-- Create a new postgres user named indexed_cars_user
CREATE USER indexed_cars_user;

\c indexed_cars

-- Run the provided scripts/car_models.sql script on the indexed_cars database
\i scripts/car_models.sql;

-- Run the provided scripts/car_model_data.sql script on the indexed_cars database 10 times
-- there should be 223380 rows in car_models
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

SELECT COUNT(*) FROM car_models;

\timing

-- Run a query to get a list of all make_title values from the car_models table
-- where the make_code is 'LAM', without any duplicate rows, and note the time somewhere. (should have 1 result)
SELECT make_title FROM car_models
  WHERE make_code = 'LAM'
  GROUP BY make_title;

-- Run a query to list all model_title values where the make_code is 'NISSAN', and the model_code is 'GT-R' without any duplicate
-- rows, and note the time somewhere. (should have 1 result)
SELECT model_title FROM car_models
  WHERE make_code = 'NISSAN'
  AND model_code = 'GT-R'
  GROUP BY model_title;

-- Run a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM', and note
-- the time somewhere. (should have 1360 rows)
SELECT * FROM car_models
  WHERE make_code = 'LAM';

-- Run a query to list all fields from all car_models in years between 2010 and 2015, and note the time somewhere (should have
-- 78840 rows)
SELECT * FROM car_models
  WHERE year >= 2010
  AND year <= 2015;

-- Run a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)
SELECT * FROM car_models
  WHERE year = 2010;