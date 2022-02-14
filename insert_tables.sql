insert into stadium (address, name)
values
('5555 e mock ln', 'smu'),
('5665 e mock ln', 'tcu');

insert into parking_lot  (name, stadium_id)
values
('1', 1),
('2', 1),
('3', 1),
('a', 2),
('b', 2),
('c', 2);

select * from public.parking_lot;

insert into event  (event_type, stadium_id)
values
('bball', 1),
('ball', 1),
('sball', 2),
('baseball', 2);

insert into vehicle  (license_plate, type, is_handicap)
values
('666', 'coupe', TRUE),
('667', 'truck', FALSE),
('668', 'suv', TRUE),
('669', 'sedan', FALSE),
('670', 'van', TRUE),
('671', 'toyot', FALSE),
('672', '4run', TRUE),
('673', 'ford', FALSE),
('674', '4d', TRUE),
('675', 'coupe', FALSE),
('676', 'truck', TRUE),
('677', 'suv', FALSE),
('678', 'sedan', TRUE),
('679', 'van', FALSE),
('680', 'toyot', TRUE),
('681', '4run', FALSE),
('682', 'ford', TRUE),
('683', '4d', FALSE),
('684', 'coupe', TRUE),
('685', 'truck', FALSE),
('686', 'suv', TRUE),
('687', 'sedan', FALSE),
('688', 'van', TRUE),
('689', 'toyot', FALSE),
('690', '4run', TRUE),
('691', 'ford', FALSE),
('692', '4d', TRUE),
('693', 'coupe', FALSE),
('694', 'truck', TRUE),
('695', 'suv', FALSE),
('696', 'sedan', TRUE),
('697', 'van', FALSE),
('698', 'toyot', TRUE),
('699', '4run', FALSE);

insert into parking_space  (spot_number, is_available , is_handicap, lot_id, vehicle_id)
values
(001, true, true, '1', NULL),
(002, true, true, '1', NULL),
(003, true, false, '1', NULL),
(004, true, false, '1', NULL),
(005, true, false, '1', NULL),
(006, false, false, '1', 666),
(007, false, false, '1', 667),
(008, false, false, '2', 668),
(009, false, false, '2', 669),
(010, false, true, '2', 670),
(011, false, false, '2', 671),
(012, false, false, '2', 672),
(013, false, false, '2', 673),
(014, false, true, '2', 674),
(015, false, false, '3', 675),
(016, false, false, '3', 676),
(017, false, false, '3', 677),
(018, false, false, '3', 678),
(019, false, false, '3', 679),
(020, false, false, '3', 680),
(021, false, false, '3', 681),
(101, false, true, 'a', 682),
(102, false, false, 'a', 683),
(103, false, false, 'a', 684),
(104, false, false, 'a', 685),
(105, false, true, 'a', 686),
(106, false, false, 'a', 687),
(107, false, true, 'a', 688),
(108, false, false, 'b', 689),
(109, false, false, 'b', 690),
(110, false, false, 'b', 691),
(111, false, false, 'b', 692),
(112, false, false, 'b', 693),
(113, false, false, 'b', 694),
(114, false, false, 'b', 695),
(115, false, false, 'c', 696),
(116, false, false, 'c', 697),
(117, false, false, 'c', 698),
(118, false, false, 'c', 699),
(119, true, false, 'c', null),
(120, true, false, 'c', null),
(121, true, false, 'c', null);

insert into entrypoint (parking_lot_id, entrypoint_id , entrypoint_name)
values
('1', '1', 'meadows'),
('2', '2', 'binkley'),
('3', '3', 'mcfarlin'),
('a', 'a', 'mockingbird'),
('b', 'b', 'robert'),
('c', 'c', 'hilltop');

insert into ticket (id, vehicle_id, entrypoint_id)
values 
(1, 666, '1'),
(2, 667, '1'),
(3, 668, '2'),
(4, 669, '2'),
(5, 670, '2'),
(6, 671, '2'),
(7, 672, '2'),
(8, 673, '2'),
(9, 674, '2'),
(10, 675, '3'),
(11, 676, '3'),
(12, 677, '3'),
(13, 678, '3'),
(14, 679, '3'),
(15, 680, '3'),
(16, 681, '3'),
(17, 682, 'a'),
(18, 683, 'a'),
(19, 684, 'a'),
(20, 685, 'a'),
(21, 686, 'a'),
(22, 687, 'a'),
(23, 688, 'a'),
(24, 689, 'b'),
(25, 690, 'b'),
(26, 691, 'b'),
(27, 692, 'b'),
(28, 693, 'b'),
(29, 694, 'b'),
(30, 695, 'b'),
(31, 696, 'c'),
(32, 697, 'c'),
(33, 698, 'c'),
(34, 699, 'c');

insert into employee (first_name, last_name, entrypoint_id)
values
('brandon', 'wheeless', '1'),
('peter', 'sun', '1'),
('ray', 'inari', '1'),
('jeremy', 'waibel', '2'),
('christian', 'ayala', '2'),
('mark', 'fontenont', '2'),
('theta', 'tau', '3'),
('lil', 'peep', '3'),
('dead', 'mau5', '3');
