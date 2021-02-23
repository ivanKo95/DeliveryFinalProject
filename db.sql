CREATE TABLE account(
    id INT NOT NULL PRIMARY KEY,
    parcel_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE account_role(
    id INT,
    role_name VARCHAR(255)
);

CREATE TABLE parcel(
    id INT,
    delivery_type_id INT,
    package_name VARCHAR,
    weight DOUBLE,
    volume DOUBLE,
    from_city VARCHAR,
    to_city VARCHAR,
    distance INT,
    price DECIMAL,
    delivery_date DATETIME,
    connection_id INT
);

CREATE TABLE delivery_type(
    id INT,
    type VARCHAR,
    coefficient INT
);

CREATE TABLE city(
    id INT,
    city_name VARCHAR,
    longitude INT,
    latitude INT
);

CREATE TABLE connection(
    id INT PRIMARY KEY,
    from_city_id INT,
    to_city_id INT,
    distance INT,
    FOREIGN KEY (from_city_id) references parcel,
    FOREIGN KEY (to_city_id) references parcel
);