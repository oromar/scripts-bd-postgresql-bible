-- Table: "VERSICULO"

-- DROP TABLE "VERSICULO";

CREATE TABLE "VERSICULO"
(
  id serial NOT NULL,
  id_versao integer NOT NULL,
  id_livro integer NOT NULL,
  capitulo integer NOT NULL,
  versiculo integer NOT NULL,
  texto text NOT NULL,
  CONSTRAINT pk_id_versiculo PRIMARY KEY (id ),
  CONSTRAINT fk_livro_versiculo FOREIGN KEY (id_livro)
      REFERENCES "LIVRO" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "VERSICULO"
  OWNER TO postgres;
