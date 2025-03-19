DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS poster;
DROP TABLE IF EXISTS game;
DROP TABLE IF EXISTS engine;
DROP TABLE IF EXISTS action_figure;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS social_security_nums;
DROP TABLE IF EXISTS shift;
DROP TABLE IF EXISTS genre_game;

CREATE TABLE employee (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  employee_name VARCHAR NOT NULL CHECK (employee_name ~ ('^[A-Z][a-z]+ [A-Z][a-z]+$')),
  position VARCHAR NOT NULL 
    CHECK (position ~ ('^(Sales Associate|Store Manager|Inventory Clerk|Customer Service Representative|IT Specialist|Marketing Coordinator|Assistant Manager|Finance Analyst|Security Officer|HR Coordinator)$')),
  salary DECIMAL(8, 2) CHECK (salary BETWEEN 32000 and 60000)
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

CREATE TABLE engine (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  engine_name VARCHAR UNIQUE NOT NULL
    CHECK (engine_name ~ '^[A-Z][A-Za-z0-9-]*( ([A-Z][A-Za-z0-9]*|[0-9]+))*$')    
);

\copy engine FROM 'data/engines.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

CREATE TABLE game (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  game_title VARCHAR NOT NULL,
  quantity BIGINT,
  price DECIMAL(5, 2)
);

\copy game FROM 'data/games.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

ALTER TABLE game
  ADD COLUMN IF NOT EXISTS engine_type_id BIGINT;

ALTER TABLE game
  ADD CONSTRAINT fk_engine_type_id FOREIGN KEY (engine_type_id) REFERENCES engine(id);

UPDATE game
SET engine_type_id = CASE
  WHEN id = 1 THEN 1
  WHEN id = 2 THEN 2
  WHEN id = 3 THEN 2
  WHEN id = 4 THEN 1
  WHEN id = 5 THEN 4
  WHEN id = 6 THEN 4
  WHEN id = 7 THEN 3 
  WHEN id = 8 THEN 2
  WHEN id = 9 THEN 1
  WHEN id = 10 THEN 4
END;



-- -- create genre table
CREATE TABLE genre (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  genre_name VARCHAR UNIQUE NOT NULL CHECK (genre_name ~ '^[A-Z][A-Za-z0-9]*( ([A-Z][A-Za-z0-9]*|[0-9]+))*$')    
);

\copy genre FROM 'data/genres.csv' WITH (FORMAT csv, HEADER true, DELIMITER ','); 

-- create social_security_nums table
CREATE TABLE social_security_nums (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  employee_id BIGINT UNIQUE NOT NULL,
  ssn VARCHAR(11) UNIQUE NOT NULL CHECK (ssn ~ '^[0-9]{3}-[0-9]{2}-[0-9]{4}$')
);

\copy social_security_nums FROM 'data/employee_socials.csv' WITH (FORMAT csv, HEADER true, DELIMITER ','); 

ALTER TABLE social_security_nums
  ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employee(id);

-- create shifts table
CREATE TABLE shift (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  start_time TIMESTAMP NOT NULL,
  end_time TIMESTAMP NOT NULL,
  employee_id BIGINT NOT NULL
);

\copy shift FROM 'data/shifts.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

ALTER TABLE shift 
  ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employee(id);



CREATE TABLE action_figure (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  action_figure_title VARCHAR UNIQUE NOT NULL 
    -- regex is checking each word starts w/ a capital OR #, and allows only letters, ints, dashes
    CHECK (action_figure_title ~ '^[A-Z][A-Za-z0-9-]*( ([A-Z][A-Za-z0-9-]*|[0-9]+))*$'),
  quantity BIGINT NOT NULL CHECK (quantity BETWEEN 0 and 30),
  price DECIMAL(5, 2) NOT NULL CHECK (price BETWEEN 10.00 and 100.00)
);

\copy action_figure FROM 'data/action_figures.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');


-- create genre_game table
CREATE TABLE genre_game (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  game_id BIGINT,
  CONSTRAINT fk_game_id FOREIGN KEY (game_id) REFERENCES game(id),
  genre_type_id BIGINT,
  CONSTRAINT fk_genre_type_id FOREIGN KEY (genre_type_id) REFERENCES genre(id)
);

INSERT INTO genre_game (game_id, genre_type_id) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
