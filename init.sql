SELECT 'CREATE DATABASE greenlight'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'greenlight')\gexec
-- CREATE ROLE greenlight WITH LOGIN PASSWORD 'pa55word';
DO
$do$
BEGIN
   IF EXISTS (
      SELECT FROM pg_catalog.pg_roles
      WHERE  rolname = 'greenlight') THEN

      RAISE NOTICE 'Role "greenlight" already exists. Skipping.';
   ELSE
      CREATE ROLE my_user LOGIN PASSWORD 'pa55word';
   END IF;
END
$do$;
ALTER ROLE greenlight CREATEDB;
CREATE EXTENSION IF NOT EXISTS citext;
