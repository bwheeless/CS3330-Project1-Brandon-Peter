CREATE DATABASE stadium;

CREATE TABLE stadium(
    id SERIAL PRIMARY KEY,
    lot_id SERIAL,
    event_id SERIAL
);


CREATE TABLE parking_space(
     spot_number SERIAL PRIMARY KEY,
     is_available BOOL,
     is_handicap BOOL,
     license_plate VARCHAR(7)
);

CREATE TABLE parking_lot(
    lot_id SERIAL PRIMARY KEY,
    entry_id SERIAL,
    spot_number INT
);

CREATE TABLE event(
    event_id SERIAL PRIMARY KEY,
    event_type VARCHAR
);

CREATE TABLE entrypoint(
    id SERIAL PRIMARY KEY
);

CREATE TABLE vehicle(
    license_plate VARCHAR(8) NOT NULL PRIMARY KEY,
    type VARCHAR(5) NOT NULL
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

