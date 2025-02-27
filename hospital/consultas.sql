SELECT c.nome 
FROM Medico m, Clinica c, MedicoClinica mc
WHERE m.cod = mc.medico_cod 
AND c.cod = mc.clinica_cod 
AND m.nome = 'Arthur';


SELECT c.nome
FROM Clinica c, EspecialidadeClinica ec, Especialidade e 
WHERE c.cod = ec.clinica_cod 
AND e.cod = ec.especialidade_cod 
AND e.nome = 'ortopedia'


SELECT e.nome
FROM Especialidade e, MedicoEspecialidade me , Medico m 
WHERE m.cod = me.medico_cod 
AND e.cod = me.especialidade_cod  
AND m.nome = 'Andre'


SELECT m.nome, c.data, c.hora 
FROM Medico m, Consulta c
WHERE m.cod = c.medico_cod 


SELECT m.nome 
FROM Medico m
ORDER BY m.nome 


SELECT m.nome
FROM Medico m
INNER JOIN MedicoClinica mc ON m.cod = mc.medico_cod
INNER JOIN Clinica c ON mc.clinica_cod = c.cod
WHERE c.nome = 'Clinica bem estar';


SELECT c.nome, c.endereco
FROM Medico m
INNER JOIN MedicoClinica mc ON m.cod = mc.medico_cod
INNER JOIN Clinica c ON mc.clinica_cod = c.cod
WHERE m.nome = 'Andre';


SELECT c.nome, e.nome AS especialidade
FROM Clinica c
INNER JOIN EspecialidadeClinica ec ON c.cod = ec.clinica_cod
INNER JOIN Especialidade e ON ec.especialidade_cod = e.cod;


SELECT c.nome, e.nome AS especialidade
FROM Clinica c
LEFT JOIN EspecialidadeClinica ec ON c.cod = ec.clinica_cod
LEFT JOIN Especialidade e ON ec.especialidade_cod = e.cod
ORDER BY c.nome;


SELECT m.nome, c2.data, c2.hora
FROM Medico m
LEFT JOIN Consulta c2 ON m.cod = c2.medico_cod;


SELECT m.nome, COUNT(c.cod) AS quantidade_consultas
FROM Medico m
LEFT JOIN Consulta c ON m.cod = c.medico_cod
GROUP BY m.nome


SELECT m.nome, COUNT(c.cod) AS quantidade_consultas
FROM Medico m
LEFT JOIN Consulta c ON m.cod = c.medico_cod
GROUP BY m.nome;


SELECT m.nome
FROM Medico m
INNER JOIN MedicoClinica mc ON m.cod = mc.medico_cod
INNER JOIN Clinica c ON mc.clinica_cod = c.cod
WHERE c.nome = 'ortocentro';