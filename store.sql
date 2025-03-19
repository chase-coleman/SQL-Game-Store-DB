DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS poster;
DROP TABLE IF EXISTS game;
DROP TABLE IF EXISTS action_figure;

CREATE TABLE employee (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  employee_name VARCHAR NOT NULL CHECK (employee_name ~ ('^[A-Z][a-z]+ [A-Z][a-z]+$')),
  position VARCHAR NOT NULL 
    CHECK (position ~ ('^(Sales Associate|Store Manager|Inventory Clerk|Customer Service Representative|IT Specialist|Marketing Coordinator|Assistant Manager|Finance Analyst|Security Officer|HR Coordinator)$')),
  salary DECIMAL(8, 2)
    CHECK (salary BETWEEN 32000 and 60000)
);

\copy employee FROM 'data/employees.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

CREATE TABLE poster (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  poster_title VARCHAR NOT NULL
    CHECK (poster_title ~ '^[A-Z][A-Za-z0-9-]*( ([A-Z][A-Za-z0-9-]*|[0-9]+))*$'),
  quantity BIGINT NOT NULL CHECK (quantity BETWEEN 0 and 30),
  price DECIMAL(5, 2) NOT NULL CHECK (price BETWEEN 6.00 and 20.00)
);

\copy poster FROM 'data/posters.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

CREATE TABLE game (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  game_title VARCHAR NOT NULL,
  quantity BIGINT,
  price DECIMAL(5, 2)
);

\copy game FROM 'data/games.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

CREATE TABLE action_figure (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  action_figure_title VARCHAR UNIQUE NOT NULL 
    -- regex is checking each word starts w/ a capital OR #, and allows only letters, ints, dashes
    CHECK (action_figure_title ~ '^[A-Z][A-Za-z0-9-]*( ([A-Z][A-Za-z0-9-]*|[0-9]+))*$'),
  quantity BIGINT NOT NULL CHECK (quantity BETWEEN 0 and 30),
  price DECIMAL(5, 2) NOT NULL CHECK (price BETWEEN 10.00 and 100.00)
);

\copy action_figure FROM 'data/action_figures.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

