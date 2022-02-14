-- How many total parking spaces do I have?
select * from public.parking_space;
-- How many parking lots are there at Cowpokes Stadium?
select stadium_id from public.parking_lot where stadium_id = 1; 
-- How many parking spaces are there at Cowpokes Stadium
select lot_id from public.parking_space where lot_id = '1' or lot_id = '2' or lot_id = '3';
-- What parking spaces are currently available for use
select * from public.parking_space where (lot_id = '1' or lot_id = '2' or lot_id = '3') and (is_available = true);
