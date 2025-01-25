CREATE TABLE Ingredients(
"id" INTEGER,
"name" TEXT,
"price_per_unit" REAL,
"unit" TEXT,
PRIMARY KEY("id")
);


CREATE TABLE Donuts(
"id" INTEGER,
"name" TEXT, 
"is_gluten_free" BOOLEAN,  
"price" REAL,
PRIMARY KEY ("id")
);


CREATE TABLE Donutlngredients(
"donut_ld" INTEGER,
"ingredient_id"  INTEGER,
PRIMARY KEY("donut_ld","ingredient_id"),
FOREIGN KEY("donut_ld") REFERENCES "Donuts"("id"),
FOREIGN KEY("ingredient_id") REFERENCES "Ingredients"("id")

);

CREATE TABLE Customers(
"id" INTEGER,
"first_name" TEXT,
"last_name" TEXT,
PRIMARY KEY ("id")
);


CREATE TABLE orders(
"id" INTEGER,
"customer_id" INTEGER,
PRIMARY KEY("id"),
FOREIGN KEY("customer_id") REFERENCES "Customers"("id")
);

CREATE TABLE Donutorders(
"order_id" INTEGER,
"donut_id" INTEGER,
"quantity" INTEGER,
PRIMARY KEY("order_id","donut_id"),
FOREIGN KEY ("order_id") REFERENCES "orders"("id"),
FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id")

);
