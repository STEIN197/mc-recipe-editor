CREATE TABLE IF NOT EXISTS Property (
	name TEXT UNIQUE NOT NULL,
	value TEXT NULL
);

CREATE TABLE IF NOT EXISTS Namespace (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Item (
	ID INTEGER UNIQUE NOT NULL, -- Numeric ID of item
	namespace ID NOT NULL, -- String ID of item. Used in conjuction with namespace prefix
	nsID INTEGER NOT NULL DEFAULT 0, -- Namespace. By default should be 'minecraft'
	name TEXT NOT NULL, -- Name/title of item
	icon TEXT NOT NULL, -- Name of icon associated with item
	FOREIGN KEY (namespace) REFERENCES Namespace (ID)
);

INSERT INTO Namespace VALUES (0, 'minecraft');
