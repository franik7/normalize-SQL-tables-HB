CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(50),
	password VARCHAR(50),
);

CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id),
	ingredients TEXT,
	instructions TEXT,
	public BOOLEAN
);

CREATE TABLE grocery_list (
	grocery_list_id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL REFERENCES users(user_id),
	ingredient_id INTEGER 
);

CREATE TABLE ingredients (
	ingredient_id SERIAL PRIMARY KEY,
	recipes_id INTEGER NOT NULL REFERENCES recipes(recipe_id),
	grocery_list_id INTEGER NOT NULL REFERENCES grocery_list(grocery_list_id)
)

CREATE TABLE ocassions (
	occasion_id SERIAL PRIMARY KEY,
	recipes_id INTEGER NOT NULL REFERENCES recipes(recipe_id),
	user_id INTEGER NOT NULL REFERENCES users(user_id)
)






