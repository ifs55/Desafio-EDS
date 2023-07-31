SELECT AVG(diag_count) as avg_diag_count
FROM (
  SELECT COUNT(*) as diag_count
  FROM stg_atendimento_diagnostico ad
    INNER JOIN stg_atendimento a ON ad.atendimento_id = a.id
  WHERE a.tipo_atendimento = 'U'
  GROUP BY ad.atendimento_id
) as counts;
