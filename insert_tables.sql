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
('671', 'suv', FALSE),
('672', 'suv', TRUE),
('673', 'coupe', FALSE),
('674', 'truck', TRUE),
('675', 'coupe', FALSE),
('676', 'truck', TRUE),
('677', 'suv', FALSE),
('678', 'sedan', TRUE),
('679', 'van', FALSE),
('680', 'suv', TRUE),
('681', 'suv', FALSE),
('682', 'coupe', TRUE),
('683', 'truck', FALSE),
('684', 'coupe', TRUE),
('685', 'truck', FALSE),
('686', 'suv', TRUE),
('687', 'sedan', FALSE),
('688', 'van', TRUE),
('689', 'suv', FALSE),
('690', 'suv', TRUE),
('691', 'coupe', FALSE),
('692', 'truck', TRUE),
('693', 'coupe', FALSE),
('694', 'truck', TRUE),
('695', 'suv', FALSE),
('696', 'sedan', TRUE),
('697', 'van', FALSE),
('698', 'suv', TRUE),
('699', 'suv', FALSE);

insert into vehicle  (license_plate, type, is_handicap, is_valet)
values
('700', 'suv', FALSE, TRUE),
('701', 'truck', FALSE, TRUE),
('702', 'coupe', FALSE, TRUE),
('703', 'truck', FALSE, TRUE),
('704', 'sedan', FALSE, TRUE),
('705', 'suv', FALSE, TRUE);

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

insert into ticket (id, vehicle_id, event_id, entrypoint_id)
values 
(1, 666, 1, '1'),
(2, 667, 1, '1'),
(3, 668, 1, '2'),
(4, 669, 2, '2'),
(5, 670, 2, '2'),
(6, 671, 2, '2'),
(7, 672, 3, '2'),
(8, 673, 3, '2'),
(9, 674, 3, '2'),
(10, 675, 4, '3'),
(11, 676, 4,  '3'),
(12, 677, 4, '3'),
(13, 678, 4, '3'),
(14, 679, 1, '3'),
(15, 680, 2, '3'),
(16, 681, 3, '3'),
(17, 682, 4, 'a'),
(18, 683, 1, 'a'),
(19, 684, 2,  'a'),
(20, 685, 4, 'a'),
(21, 686, 3, 'a'),
(22, 687, 3, 'a'),
(23, 688, 3, 'a'),
(24, 689, 2, 'b'),
(25, 690, 4, 'b'),
(26, 691, 1, 'b'),
(27, 692, 3, 'b'),
(28, 693, 2, 'b'),
(29, 694, 4, 'b'),
(30, 695, 1,'b'),
(31, 696, 3,'c'),
(32, 697, 2,'c'),
(33, 698,1, 'c'),
(34, 699, 4,'c');

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

SELECT * FROM entrypoint;

INSERT INTO valet(employee_id, first_name, last_name, entrypoint_id)
VALUES
(1234, 'Doug', 'Dimmadome', '1'),
(1345, 'George', 'Washington', '1'),
(2234, 'Michael', 'Phelps', '2'),
(2345, 'Lebron', 'James', '2'),
(6234, 'Doug', 'Dimmadome', 'a'),
(5345, 'George', 'Washington', 'b'),
(4234, 'Michael', 'Phelps', 'c'),
(3345, 'Lebron', 'James', '3');

INSERT INTO valet_vehicles(valet_id, vehicle_id)
VALUES
(1234, '700'),
(1345, '701'),
(2234, '702'),
(1234, '703'),
(2234, '704'),
(3345, '705');