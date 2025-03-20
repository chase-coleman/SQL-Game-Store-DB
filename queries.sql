
-- -- Scenario 1 : retrieve the names of all gaming engines
-- SELECT engine_name FROM engine;

-- -- Scenario 2 : find the total quantity of all games in stock
-- SELECT SUM(quantity) FROM game;

-- -- Scenario 3 : get the unique titles of all games with a price higher than $30.00
-- SELECT game_title FROM game WHERE (price > 30.00);

-- -- Scenario 4 : List the titles and quantities of games with less than 20 in stock.
-- SELECT game_title, quantity FROM game
-- WHERE quantity < 20;

-- -- Scenario 5 : Find the total number of genre-game associations.
-- SELECT COUNT(id) FROM genre_game;

-- -- Scenario 6 : Retrieve the titles of action figures with a price between $20.00 and $50.00.
-- SELECT action_figure_title FROM action_figure
-- WHERE (price BETWEEN 20.00 AND 50.00);

-- -- Scenario 7 : List the poster titles and prices for posters with quantities between 15 and 30.
-- SELECT poster_title, price FROM poster 
-- WHERE (quantity BETWEEN 15 AND 30);

-- -- Scenario 8 : Get the names and positions of employees earning more than $40,000 per year.
-- SELECT employee_name, position FROM employee
-- WHERE (salary > 40000);

-- -- Scenario 9 : Find the total number of social security entries.
-- SELECT COUNT(id) FROM social_security_nums;

-- -- Scenario 10 : Retrieve the start and end times of all shifts.
-- -- SELECT start_time, end_time FROM shift;

-- -- Scenario 11 : Get the names and salaries of employees working on shifts.




-- -- Scenario 12 : List the action figures with a quantity less than 15.
-- SELECT * FROM action_figure 
-- WHERE (quantity < 15);

-- -- Scenario 13 : Retrieve the titles of games with the word 'Warzone' in their title.
-- SELECT game_title FROM game
-- WHERE game_title LIKE '%Warzone%';

-- -- Scenario 14 : Find the total number of genres.
-- SELECT COUNT(id) FROM genre;

-- -- Scenario 15 : Get the names and quantities of action figures with prices over $27.00.
-- SELECT action_figure_title, quantity FROM action_figure
-- WHERE (price > 27.00);

-- -- Scenario 16 : Retrieve the names of employees in the 'IT Specialist' position.
-- SELECT employee_name FROM employee
-- WHERE position LIKE '%IT%';

-- -- Scenario 17 : List the game titles with quantities greater than 25.
-- SELECT game_title FROM game
-- WHERE (quantity > 25);

-- -- Scenario 18 : Find the total quantity of all items (games, action figures, and posters).
-- SELECT SUM(total) FROM (
-- SELECT SUM(quantity) AS total FROM game 
-- UNION ALL 
-- SELECT SUM(quantity) AS total FROM action_figure
-- UNION ALL 
-- SELECT SUM(quantity) AS total FROM poster
-- ) AS combined_quantities;

-- -- Scenario 19 : Retrieve the social security numbers and names of employees with salaries over $50,000.




-- -- Scenario 20 : Get the names and quantities of posters with prices between $10.00 and $15.00.
-- SELECT poster_title, quantity FROM poster
-- WHERE (price BETWEEN 10.00 AND 15.00);

-- -- Scenario 21 : List the names and quantities of posters with a price less than $8.00.
-- SELECT poster_title, quantity FROM poster 
-- WHERE price < 8.00;

-- -- Scenario 22 : Retrieve the employee names and salaries for 'Marketing Coordinator' and 'Finance Analyst' positions.
-- SELECT employee_name, salary FROM employee
-- WHERE (position LIKE '%Marketing Coordinator%' OR position LIKE '%Finance Analyst%');

-- -- Scenario 23 : Find the total quantity of action figures in stock.
-- SELECT SUM(quantity) FROM action_figure;

-- -- Scenario 24 : Get the titles and quantities of games with a quantity between 15 and 30.
-- SELECT game_title, quantity FROM game 
-- WHERE (quantity BETWEEN 15 AND 30);

-- -- Scenario 25 : List the names and salaries of employees working on shifts with a start time after '2024-01-01'.




-- -- Scenario 26 : Retrieve the titles and prices of games with prices less than $20.00.
-- SELECT game_title, price FROM game 
-- WHERE price < 20.00;

-- -- Scenario 27 : Find the total quantity of action figures with prices between $25.00 and $30.00.
-- SELECT SUM(quantity) FROM action_figure 
-- WHERE (price BETWEEN 25.00 AND 30.00);

-- -- Scenario 28 : Get the names and positions of employees working on shifts with a start time before '2024-03-07 13:00:00'.




-- -- Scenario 29 : List the names and quantities of action figures with a quantity greater than 10.
-- SELECT action_figure_title, quantity FROM action_figure 
-- WHERE quantity > 10;

-- -- Scenario 30 : Retrieve the titles and quantities of posters with quantities greater than 25.
-- SELECT poster_title, quantity FROM poster 
-- WHERE quantity > 25;

-- -- Scenario 31 : Find the total number of shifts.
-- SELECT COUNT(id) FROM shift;

-- -- Scenario 32 : Get the names and positions of employees working on shifts with a start time between '2024-02-01' and '2024-03-07 13:00:00'.




-- -- Scenario 33 : List the game titles with quantities less than 20.
-- SELECT game_title FROM game 
-- WHERE quantity < 20;

-- -- Scenario 34 : Retrieve the names and quantities of action figures with prices over $23.00.
-- SELECT action_figure_title, quantity FROM action_figure 
-- WHERE price > 23.00;

-- -- Scenario 35 : Find the total quantity of posters in stock.
-- SELECT SUM(quantity) FROM poster;
