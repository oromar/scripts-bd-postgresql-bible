-- Table: "LIVRO"

-- DROP TABLE "LIVRO";

CREATE TABLE "LIVRO"
(
  id serial NOT NULL,
  id_testamento integer NOT NULL,
  posicao integer NOT NULL,
  nome character varying(100) NOT NULL,
  CONSTRAINT pk_id PRIMARY KEY (id ),
  CONSTRAINT "LIVRO_id_testamento_fkey" FOREIGN KEY (id_testamento)
      REFERENCES "TESTAMENTO" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT uk_livro UNIQUE (nome ),
  CONSTRAINT uk_testamento_posicao UNIQUE (id_testamento , posicao )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "LIVRO"
  OWNER TO postgres;

-- Index: idx_livro

-- DROP INDEX idx_livro;

CREATE INDEX idx_livro
  ON "LIVRO"
  USING btree
  (nome COLLATE pg_catalog."default" );

