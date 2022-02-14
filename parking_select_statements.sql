select * from public.parking_space;
select stadium_id from public.parking_lot where stadium_id = 1; 
select lot_id from public.parking_space where lot_id = '1' or lot_id = '2' or lot_id = '3';
select * from public.parking_space where (lot_id = '1' or lot_id = '2' or lot_id = '3') and (is_available = true);
