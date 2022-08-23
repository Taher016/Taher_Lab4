CREATE TABLE IF NOT EXISTS product (
	PRO_ID INT NOT NULL,
	PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy",
	PRO_DESC VARCHAR(60),
	CAT_ID INT NOT NULL,
	PRIMARY KEY (PRO_ID),
	FOREIGN KEY (CAT_ID) REFERENCES CATEGORY (CAT_ID)
);
