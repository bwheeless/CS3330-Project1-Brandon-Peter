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
