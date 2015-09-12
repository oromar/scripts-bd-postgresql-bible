-- Table: "TESTAMENTO"

-- DROP TABLE "TESTAMENTO";

CREATE TABLE "TESTAMENTO"
(
  id integer NOT NULL,
  nome character varying(100) NOT NULL,
  CONSTRAINT pk_id_testamento PRIMARY KEY (id ),
  CONSTRAINT uk_nome_testamento UNIQUE (nome )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "TESTAMENTO"
  OWNER TO postgres;
