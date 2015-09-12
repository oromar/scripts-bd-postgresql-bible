﻿SELECT "VERSAO".NOME, "LIVRO".NOME, "VERSICULO".CAPITULO, "VERSICULO".VERSICULO, "VERSICULO".TEXTO
FROM "VERSICULO"
JOIN "VERSAO" 
ON "VERSAO".ID = "VERSICULO".ID_VERSAO
JOIN "LIVRO" 
ON "LIVRO".ID = "VERSICULO".ID_LIVRO
WHERE "VERSICULO".TEXTO LIKE '%chorou%'
GROUP BY "LIVRO".ID, "VERSICULO".CAPITULO, "VERSICULO".VERSICULO, "VERSICULO".TEXTO, "VERSAO".NOME, "VERSICULO".ID
ORDER BY "LIVRO".ID, "VERSICULO".CAPITULO, "VERSICULO".VERSICULO