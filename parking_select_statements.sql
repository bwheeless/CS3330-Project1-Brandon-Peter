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
-- How many of each vehicle type have parked at any of my venues?
-- On average, how many vehicles come to an event?