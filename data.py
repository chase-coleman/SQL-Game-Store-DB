import csv

action_figures = [
    {"id": 1, "action_figure_title": "Superhero Figure 1", "quantity": 10, "price": 19.99},
    {"id": 2, "action_figure_title": "Game Character Figure 1", "quantity": 15, "price": 24.99},
    {"id": 3, "action_figure_title": "Anime Character Figure 1", "quantity": 18, "price": 29.99},
    {"id": 4, "action_figure_title": "Sci-Fi Character Figure 1", "quantity": 12, "price": 22.99},
    {"id": 5, "action_figure_title": "Fantasy Character Figure 1", "quantity": 20, "price": 27.99},
    {"id": 6, "action_figure_title": "Movie Character Figure 1", "quantity": 14, "price": 23.49},
    {"id": 7, "action_figure_title": "Cartoon Character Figure 1", "quantity": 25, "price": 18.99},
    {"id": 8, "action_figure_title": "Military Figure 1", "quantity": 16, "price": 21.99},
    {"id": 9, "action_figure_title": "Sports Figure 1", "quantity": 30, "price": 17.49},
    {"id": 10, "action_figure_title": "Historical Figure 1", "quantity": 23, "price": 26.49}
]

employees = [
    {"id": 1, "employee_name": "John Doe", "position": "Sales Associate", "salary": 40000.00},
    {"id": 2, "employee_name": "Jane Smith", "position": "Store Manager", "salary": 60000.00},
    {"id": 3, "employee_name": "Mark Johnson", "position": "Inventory Clerk", "salary": 35000.00},
    {"id": 4, "employee_name": "Emily Davis", "position": "Customer Service Representative", "salary": 38000.00},
    {"id": 5, "employee_name": "Chris Wilson", "position": "IT Specialist", "salary": 55000.00},
    {"id": 6, "employee_name": "Anna Brown", "position": "Marketing Coordinator", "salary": 45000.00},
    {"id": 7, "employee_name": "Michael Lee", "position": "Assistant Manager", "salary": 52000.00},
    {"id": 8, "employee_name": "Sarah Miller", "position": "Finance Analyst", "salary": 48000.00},
    {"id": 9, "employee_name": "David Garcia", "position": "Security Officer", "salary": 32000.00},
    {"id": 10, "employee_name": "Lisa Taylor", "position": "HR Coordinator", "salary": 42000.00}
]
games = [
    {"game_id": 1, "game_title": "The Witcher 3: Wild Hunt", "quantity": 30, "price": 39.99},
    {"game_id": 2, "game_title": "Grand Theft Auto V", "quantity": 25, "price": 49.99},
    {"game_id": 3, "game_title": "Assassin's Creed Valhalla", "quantity": 20, "price": 59.99},
    {"game_id": 4, "game_title": "Cyberpunk 2077", "quantity": 15, "price": 54.99},
    {"game_id": 5, "game_title": "Red Dead Redemption 2", "quantity": 35, "price": 44.99},
    {"game_id": 6, "game_title": "FIFA 22", "quantity": 40, "price": 29.99},
    {"game_id": 7, "game_title": "Call of Duty: Warzone", "quantity": 18, "price": 39.99},
    {"game_id": 8, "game_title": "Minecraft", "quantity": 50, "price": 19.99},
    {"game_id": 9, "game_title": "Overwatch", "quantity": 22, "price": 34.99},
    {"game_id": 10, "game_title": "Final Fantasy VII Remake", "quantity": 28, "price": 49.99}
]
posters = [
    {"id": 1, "poster_title": "Movie Poster 1", "quantity": 15, "price": 9.99},
    {"id": 2, "poster_title": "Game Poster 1", "quantity": 20, "price": 7.99},
    {"id": 3, "poster_title": "Superhero Poster 1", "quantity": 25, "price": 12.99},
    {"id": 4, "poster_title": "Anime Poster 1", "quantity": 18, "price": 8.99},
    {"id": 5, "poster_title": "Music Poster 1", "quantity": 12, "price": 6.99},
    {"id": 6, "poster_title": "TV Series Poster 1", "quantity": 30, "price": 10.99},
    {"id": 7, "poster_title": "Sci-Fi Poster 1", "quantity": 22, "price": 11.99},
    {"id": 8, "poster_title": "Fantasy Poster 1", "quantity": 28, "price": 14.99},
    {"id": 9, "poster_title": "Cartoon Poster 1", "quantity": 17, "price": 6.49},
    {"id": 10, "poster_title": "Sports Poster 1", "quantity": 14, "price": 9.49}
]
engines = [
    {"engine_id": 1, "engine_name": "Play Station 5"},
    {"engine_id": 2, "engine_name": "Xbox Infinity"},
    {"engine_id": 3, "engine_name": "Nintendo Switch"},
    {"engine_id": 4, "engine_name": "Unity"}
]

# Genre dataset
genres = [
    {"genre_id": 1, "genre_name": "Action"},
    {"genre_id": 2, "genre_name": "Adventure"},
    {"genre_id": 3, "genre_name": "RPG"},
    {"genre_id": 4, "genre_name": "Strategy"},
    {"genre_id": 5, "genre_name": "Sports"},
    {"genre_id": 6, "genre_name": "Simulation"},
    {"genre_id": 7, "genre_name": "Horror"},
    {"genre_id": 8, "genre_name": "Fighting"},
    {"genre_id": 9, "genre_name": "Puzzle"},
    {"genre_id": 10, "genre_name": "Racing"}
]

# Schedule dataset
schedules = [
    {"id": 1, "start_time": "2024-03-07 08:00:00", "end_time": "2024-03-07 16:00:00", "employee_id": 1},
    {"id": 2, "start_time": "2024-03-07 10:00:00", "end_time": "2024-03-07 18:00:00", "employee_id": 2},
    {"id": 3, "start_time": "2024-03-07 12:00:00", "end_time": "2024-03-07 20:00:00", "employee_id": 3},
    {"id": 4, "start_time": "2024-03-07 14:00:00", "end_time": "2024-03-07 22:00:00", "employee_id": 4},
    {"id": 5, "start_time": "2024-03-07 16:00:00", "end_time": "2024-03-07 00:00:00", "employee_id": 5},
    {"id": 6, "start_time": "2024-03-07 09:00:00", "end_time": "2024-03-07 17:00:00", "employee_id": 6},
    {"id": 7, "start_time": "2024-03-07 11:00:00", "end_time": "2024-03-07 19:00:00", "employee_id": 7},
    {"id": 8, "start_time": "2024-03-07 13:00:00", "end_time": "2024-03-07 21:00:00", "employee_id": 8},
    {"id": 9, "start_time": "2024-03-07 15:00:00", "end_time": "2024-03-07 23:00:00", "employee_id": 9},
    {"id": 10, "start_time": "2024-03-07 08:30:00", "end_time": "2024-03-07 16:30:00", "employee_id": 10},
    {"id": 11, "start_time": "2024-03-07 10:30:00", "end_time": "2024-03-07 18:30:00", "employee_id": 1},
    {"id": 12, "start_time": "2024-03-07 12:30:00", "end_time": "2024-03-07 20:30:00", "employee_id": 2},
    {"id": 13, "start_time": "2024-03-07 14:30:00", "end_time": "2024-03-07 22:30:00", "employee_id": 3},
    {"id": 14, "start_time": "2024-03-07 16:30:00", "end_time": "2024-03-07 00:30:00", "employee_id": 4},
    {"id": 15, "start_time": "2024-03-07 09:30:00", "end_time": "2024-03-07 17:30:00", "employee_id": 5},
    {"id": 16, "start_time": "2024-03-07 11:30:00", "end_time": "2024-03-07 19:30:00", "employee_id": 6},
    {"id": 17, "start_time": "2024-03-07 13:30:00", "end_time": "2024-03-07 21:30:00", "employee_id": 7},
    {"id": 18, "start_time": "2024-03-07 15:30:00", "end_time": "2024-03-07 23:30:00", "employee_id": 8},
    {"id": 19, "start_time": "2024-03-07 08:45:00", "end_time": "2024-03-07 16:45:00", "employee_id": 9},
    {"id": 20, "start_time": "2024-03-07 10:45:00", "end_time": "2024-03-07 18:45:00", "employee_id": 10}
]

# Employee Social dataset (renamed)
employee_socials = [
    {"id": 1, "employee_id": 1, "ssn": "111-11-1111"},
    {"id": 2, "employee_id": 2, "ssn": "222-22-2222"},
    {"id": 3, "employee_id": 3, "ssn": "333-33-3333"},
    {"id": 4, "employee_id": 4, "ssn": "444-44-4444"},
    {"id": 5, "employee_id": 5, "ssn": "555-55-5555"},
    {"id": 6, "employee_id": 6, "ssn": "666-66-6666"},
    {"id": 7, "employee_id": 7, "ssn": "777-77-7777"},
    {"id": 8, "employee_id": 8, "ssn": "888-88-8888"},
    {"id": 9, "employee_id": 9, "ssn": "999-99-9999"},
    {"id": 10, "employee_id": 10, "ssn": "123-45-6789"}
]


def save_to_csv(filename, data, fieldnames):
  with open(filename, mode="w", newline="") as file:
    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(data)

# save_to_csv("action_figures.csv", action_figures, ["id", "action_figure_title", "quantity", "price"])
# save_to_csv("employees.csv", employees, ["id", "employee_name", "position", "salary"])
# save_to_csv("games.csv", games, ["game_id", "game_title", "quantity", "price"])
# save_to_csv("posters.csv", posters, ["id", "poster_title", "quantity", "pricsave_to

engines_fieldnames = ["engine_id", "engine_name"]
genres_fieldnames = ["genre_id", "genre_name"]
schedules_fieldnames = ["id", "start_time", "end_time", "employee_id"]
employee_socials_fieldnames = ["id", "employee_id", "ssn"]

# Writing data to CSV files
save_to_csv("engines.csv", engines, engines_fieldnames)
save_to_csv("genres.csv", genres, genres_fieldnames)
save_to_csv("schedules.csv", schedules, schedules_fieldnames)
save_to_csv("employee_socials.csv", employee_socials, employee_socials_fieldnames)