SELECT
  ano,
  cnae_2_subclasse, 
  sexo_trabalhador, 
  sigla_uf, 
  valor_remun_media_nominal
FROM basedosdados.br_me_rais.microdados_vinculos
WHERE sigla_uf IN ('SP', 'MG', 'ES', 'RJ') -- ESTADOS DA REGIÃO SUDESTE
  AND cnae_2_subclasse LIKE '62%' -- ATIVIDADES DOS SERVIÇOS DE TECNOLOGIA DA INFORMAÇÃO
  AND ano > 2009 
  AND ano < 2020