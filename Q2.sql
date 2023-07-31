INSERT INTO stg_prontuario.paciente (id, nome, dt_nascimento, cpf, nome_mae, dt_atualizacao)
SELECT id, nome, dt_nascimento, cpf, nome_mae, dt_atualizacao
FROM stg_hospital_a.paciente;

INSERT INTO stg_prontuario.paciente (id, nome, dt_nascimento, cpf, nome_mae, dt_atualizacao)
SELECT id, nome, dt_nascimento, cpf, nome_mae, dt_atualizacao
FROM stg_hospital_b.paciente;

INSERT INTO stg_prontuario.paciente (id, nome, dt_nascimento, cpf, nome_mae, dt_atualizacao)
SELECT id, nome, dt_nascimento, cpf, nome_mae, dt_atualizacao
FROM stg_hospital_c.paciente;
