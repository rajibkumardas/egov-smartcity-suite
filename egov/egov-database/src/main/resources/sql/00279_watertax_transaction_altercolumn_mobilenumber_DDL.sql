ALTER TABLE EGWTR_CONNECTION ALTER COLUMN MOBILENUMBER TYPE character varying(15);

--rollback ALTER TABLE EGWTR_CONNECTION ALTER COLUMN MOBILENUMBER TYPE integer;