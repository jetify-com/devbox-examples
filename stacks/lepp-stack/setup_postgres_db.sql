--- You should run this query using psql < setup_db.sql`


DO
$do$
BEGIN
   IF EXISTS (SELECT FROM pg_catalog.pg_roles WHERE  rolname = 'devbox_user') THEN
      RAISE NOTICE 'Role "my_user" already exists. Skipping.';
   ELSE
      CREATE USER devbox_user WITH PASSWORD 'password';
   END IF;
END
$do$;

CREATE TABLE colors (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	hex VARCHAR(7) NOT NULL);

INSERT INTO colors (name, hex) VALUES ('red', '#FF0000'), ('blue', '#0000FF'), ('green', '#00FF00');

GRANT ALL PRIVILEGES ON colors TO devbox_user;
