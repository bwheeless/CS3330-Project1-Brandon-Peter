CREATE DATABASE stadium_parking;

CREATE TABLE stadium(
    id SERIAL PRIMARY KEY
);


CREATE TABLE parking_lot(
    id INTEGER NOT NULL PRIMARY KEY,
    entry_id SERIAL,
    stadium_id SERIAL REFERENCES stadium(id)
);

CREATE TABLE event(
    event_id SERIAL PRIMARY KEY,
    event_type VARCHAR,
    stadium_id SERIAL REFERENCES stadium(id)
);

CREATE TABLE vehicle(
    license_plate VARCHAR(8) NOT NULL PRIMARY KEY,
    type VARCHAR(5) NOT NULL
);

CREATE TABLE parking_space(
     spot_number INTEGER NOT NULL PRIMARY KEY,
     is_available BOOL,
     is_handicap BOOL,
     vehicle_id VARCHAR REFERENCES vehicle(license_plate),
     lot_id INTEGER REFERENCES parking_lot(id)
);

CREATE TABLE entrypoint(
    id SERIAL PRIMARY KEY,
    parking_lot_id SERIAL REFERENCES parking_lot(id)
);


CREATE TABLE ticket(
    id SERIAL PRIMARY KEY,
    vehicle_id VARCHAR NOT NULL REFERENCES vehicle(license_plate),
    entrypoint_id SERIAL REFERENCES entrypoint(id)
);

CREATE TABLE employee(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(10) NOT NULL,
    last_name VARCHAR(10) NOT NULL,
    entrypoint_id SERIAL REFERENCES entrypoint(id)
);

