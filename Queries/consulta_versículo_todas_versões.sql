﻿SELECT "VERSAO".NOME, "LIVRO".NOME, "VERSICULO".CAPITULO, "VERSICULO".VERSICULO, "VERSICULO".TEXTO
FROM "VERSICULO"
JOIN "VERSAO" 
ON "VERSAO".ID = "VERSICULO".ID_VERSAO
JOIN "LIVRO" 
ON "LIVRO".ID = "VERSICULO".ID_LIVRO
WHERE "LIVRO".NOME = 'JOÃO'
AND "VERSICULO".CAPITULO = 3 
AND "VERSICULO".VERSICULO = 16
GROUP BY "LIVRO".ID, "VERSICULO".CAPITULO, "VERSICULO".VERSICULO, "VERSICULO".TEXTO, "VERSAO".NOME
