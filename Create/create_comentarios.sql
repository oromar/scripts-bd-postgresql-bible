-- Table: "COMENTARIO"

-- DROP TABLE "COMENTARIO";

CREATE TABLE "COMENTARIO"
(
  id serial NOT NULL,
  id_versiculo integer NOT NULL,
  texto text NOT NULL,
  data date NOT NULL,
  autor character varying(100) NOT NULL,
  CONSTRAINT pk_id_comentario PRIMARY KEY (id ),
  CONSTRAINT fk_versiculo_comentario FOREIGN KEY (id_versiculo)
      REFERENCES "VERSICULO" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "COMENTARIO"
  OWNER TO postgres;
