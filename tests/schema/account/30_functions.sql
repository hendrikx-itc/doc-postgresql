CREATE FUNCTION account.create_user(name text, email text)
    RETURNS account.user
AS $$
INSERT INTO account.user(name, email) VALUES ($1, $2) RETURNING *;
$$ LANGUAGE sql VOLATILE;

COMMENT ON FUNCTION account.create_user(text, text) IS
'Create a new user and return the new record';

