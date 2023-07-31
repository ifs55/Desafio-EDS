SELECT nome, dt_nascimento, cpf, nome_mae, COUNT(*) AS num_duplicatas
FROM stg_prontuario.paciente
GROUP BY nome, dt_nascimento, cpf, nome_mae
HAVING COUNT(*) > 1;
