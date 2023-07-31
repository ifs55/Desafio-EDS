SELECT p1.id, p1.nome, p1.dt_nascimento, p1.cpf, p1.nome_mae, p1.dt_atualizacao
FROM stg_prontuario.paciente p1
INNER JOIN (
    SELECT nome, dt_nascimento, cpf, nome_mae, MAX(dt_atualizacao) AS max_dt_atualizacao
    FROM stg_prontuario.paciente
    GROUP BY nome, dt_nascimento, cpf, nome_mae
    HAVING COUNT(*) > 1
) p2 ON p1.nome = p2.nome AND p1.dt_nascimento = p2.dt_nascimento AND p1.cpf = p2.cpf AND p1.nome_mae = p2.nome_mae AND p1.dt_atualizacao = p2.max_dt_atualizacao
