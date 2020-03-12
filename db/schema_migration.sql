-- Write your sql commands to create your db schema here.

sqlite3 pokemon.db

touch db/pokemon.db

sqlite3 path/to/pokemon.db < schema_migration.sql

-- It should create a table in a new table in the db/ directory.
CREATE TABLE IF NOT EXISTS pokemon(id INTEGER PRIMARY KEY, name TEXT, type TEXT);
