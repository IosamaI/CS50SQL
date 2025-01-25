CREATE TABLE  "Passengers" (
        "id" INTEGER, 
        "first_name" TEXT,
        "last_name" TEXT,
        "age" INTEGER,
        PRIMARY KEY("id")
);


CREATE TABLE  "Check-Ins" (
        "id" INTEGER,
        "Passenger_id" INTEGER,
        "datetime_checked" NUMERIC NOT NULL DEFAULT  CURRENT_TIMESTAMP,
        "flight_id" INTEGER,
        FOREIGN KEY("flight_id") REFERENCES "Flights"("id"),
        PRIMARY KEY ("id"),
        FOREIGN KEY ("Passenger_id") REFERENCES "Passengers"("id")
);

CREATE TABLE "Airlines"(
        "id" INTEGER ,
        "airline_name" TEXT,
        "concourse" TEXT NOT NULL CHECK("concourse" IN ("A","B","C","D","E","F","T")),
        FOREIGN KEY ("id") REFERENCES "Flights"("airline_id"),
        PRIMARY KEY ("id")
);

CREATE TABLE "Flights"(
        "id" INTEGER ,
        "flight_number" INTEGER NOT NULL ,
        "airline_id" INTEGER,
        "departing_airport_code"TEXT,
        "arriva_airport_code" TEXT NOT NULL,
        "airport_codeTO" TEXT NOT NULL,
        "expected_departure"NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP ,
        "expected_arriva" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY ("id"),
        FOREIGN KEY ("airline_id") REFERENCES "Airlines"("id")
        );
