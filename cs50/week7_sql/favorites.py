from cs50 import SQL

db = SQL("sqlite:///favorites.db")

favorite = input("Favorite: ")

# it returns a list of dictionaries, keys are the columns or the count
rows = db.execute("SELECT * FROM favorites WHERE language = ?", favorite)

for row in rows:
    print(row["Timestamp"])