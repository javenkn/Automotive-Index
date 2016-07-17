DROP DATABASE IF EXISTS indexed_cars;
-- Create a new database named indexed_cars owned by indexed_cars_user
CREATE DATABASE indexed_cars;
ALTER DATABASE indexed_cars OWNER TO indexed_cars_user;


DROP USER IF EXISTS indexed_cars_user;
-- Create a new postgres user named indexed_cars_user
CREATE USER indexed_cars_user;

\c indexed_cars

\i scripts/car_models.sql;

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