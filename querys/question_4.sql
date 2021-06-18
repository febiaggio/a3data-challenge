SELECT
  COUNT(ano) AS contagem,
  ano,
  cnae_1
FROM basedosdados.br_me_rais.microdados_vinculos
WHERE ano > 2009 
  AND ano < 2020
  AND qtde_horas_contratadas < 40
GROUP BY cnae_1, ano
ORDER BY contagem DESC
LIMIT 10