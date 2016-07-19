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
SELECT make_title FROM car_models WHERE make_code = 'LAM'
  GROUP BY make_title;

