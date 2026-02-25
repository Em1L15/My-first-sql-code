-- My-first-sql-code
-- Pls tell me what should i learn next..
DROP TABLE IF EXISTS servers;
CREATE TABLE servers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  server_name TEXT UNIQUE NOT NULL
);
INSERT INTO servers (server_name) VALUES
("Asia"),
("Eu");
DROP TABLE IF EXISTS players;
CREATE TABLE players (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  server_id INTEGER,
  player TEXT UNIQUE NOT NULL,
  FOREIGN KEY (server_id) REFERENCES servers(id) ON DELETE CASCADE
);
INSERT INTO players (server_id, player) VALUES
(1, "admin"),
(1, "santa"),
(1, "king"),
(2, "alone");
SELECT players.player, servers.server_name
FROM players
INNER JOIN servers ON players.server_id = servers.id;
