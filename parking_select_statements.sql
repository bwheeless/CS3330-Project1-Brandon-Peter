-- How many total parking spaces do I have?
select * from public.parking_space;
-- How many parking lots are there at Cowpokes Stadium?
select stadium_id from public.parking_lot where stadium_id = 1; 
-- How many parking spaces are there at Cowpokes Stadium
select lot_id from public.parking_space where lot_id = '1' or lot_id = '2' or lot_id = '3';
-- What parking spaces are currently available for use
select * from public.parking_space where (lot_id = '1' or lot_id = '2' or lot_id = '3') and (is_available = true);
-- What parking spaces ended up being used for Event 1?
SELECT * FROM ticket
WHERE event_id = 1;
-- What parking spaces ended up being used for Event 1?
SELECT * FROM ticket
WHERE event_id = 2;
-- What employees occupy lot 2 at Rodeo Stadium?
SELECT * FROM employee
WHERE entrypoint_id = '2';
-- How many Trucks have parked at any of my venues?
SELECT COUNT(*) AS total
FROM vehicle
WHERE type = 'truck';
-- How many of each vehicle type have parked at any of my venues?
SELECT type, COUNT(type)
FROM vehicle
GROUP BY type;
-- courtesy of https://www.postgresqltutorial.com/postgresql-aggregate-functions/

-- On average, how many vehicles come to an event?
SELECT AVG(x.total)
FROM (SELECT COUNT(id) AS total FROM ticket GROUP BY event_id)x;
-- courtesy of https://stackoverflow.com/questions/17030062/nested-aggregate-functions-maxavg-in-sql/17030168

-- How many vehicles did the first valet driver drive?
SELECT first_name, last_name, COUNT(*) AS cars_driven FROM valet_vehicles
JOIN valet ON valet.employee_id = valet_vehicles.valet_id
WHERE valet_id = '1234'
GROUP BY first_name, last_name;
