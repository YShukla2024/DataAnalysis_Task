-- Safe way to drop and recreate tables
SET FOREIGN_KEY_CHECKS = 0;


-- Your DROP/CREATE statements here
DROP TABLE IF EXISTS orderdetails;
select * from orderdetails;


-- Re-enable constraints
SET FOREIGN_KEY_CHECKS = 1;