-- Table: "VERSAO"

-- DROP TABLE "VERSAO";

CREATE TABLE "VERSAO"
(
  id integer NOT NULL,
  nome character varying(100) NOT NULL,
  CONSTRAINT pk_id_versao PRIMARY KEY (id ),
  CONSTRAINT uk_nome_versao UNIQUE (nome )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "VERSAO"
  OWNER TO postgres;
