CREATE DATABASE stadium_parking;
-- DROP TABLE stadium, parking_lot, vehicle, event, parking_space, ticket, entrypoint, employee, valet, valet_vehicles, department;
CREATE TABLE stadium(
    id SERIAL PRIMARY KEY,
    address VARCHAR(30) NOT NULL,
    name VARCHAR(15) NOT NULL
);


CREATE TABLE parking_lot(
    name CHAR NOT NULL PRIMARY KEY,
    entrypoint_id CHAR REFERENCES entrypoint(entrypoint_id),
    stadium_id SERIAL REFERENCES stadium(id)
);

CREATE TABLE event(
    event_id SERIAL PRIMARY KEY,
    event_type VARCHAR(10) not null,
    stadium_id SERIAL REFERENCES stadium(id)
);

CREATE TABLE vehicle(
    license_plate VARCHAR(8) NOT NULL PRIMARY KEY,
    type VARCHAR(5) NOT NULL,
    is_handicap BOOL NOT NULL DEFAULT FALSE,
    is_valet BOOL NOT NULL DEFAULT FALSE
);

CREATE TABLE parking_space(
     spot_number INTEGER NOT NULL PRIMARY KEY,
     is_available BOOL not NULL,
     is_handicap BOOL NOT NULL DEFAULT FALSE,
     is_valet_spot BOOL NOT NULL DEFAULT FALSE,
     vehicle_id VARCHAR REFERENCES vehicle(license_plate),
     lot_id CHAR REFERENCES parking_lot(name)
);

CREATE TABLE entrypoint(
  parking_lot_id CHAR REFERENCES parking_lot(name),
  entrypoint_id CHAR NOT NULL,
  entrypoint_name VARCHAR(20),
  PRIMARY KEY (entrypoint_id)
);


CREATE TABLE ticket(
    id INTEGER NOT NULL PRIMARY KEY,
    vehicle_id VARCHAR NOT NULL REFERENCES vehicle(license_plate),
    event_id SERIAL REFERENCES event(event_id),
    entrypoint_id CHAR REFERENCES entrypoint(entrypoint_id)
);

CREATE TABLE employee(
    first_name VARCHAR(10) NOT NULL,
    last_name VARCHAR(10) NOT NULL,
    PRIMARY KEY (first_name, last_name),
    entrypoint_id CHAR REFERENCES entrypoint(entrypoint_id)
);

CREATE TABLE valet(
    employee_id INTEGER NOT NULL PRIMARY KEY,
    first_name VARCHAR(10) NOT NULL,
    last_name VARCHAR(10) NOT NULL,
    entrypoint_id CHAR REFERENCES entrypoint(entrypoint_id)
);

CREATE TABLE valet_vehicles(
    valet_id INTEGER NOT NULL REFERENCES valet(employee_id),
    vehicle_id VARCHAR NOT NULL REFERENCES vehicle(license_plate),
    PRIMARY KEY (valet_id, vehicle_id)
);