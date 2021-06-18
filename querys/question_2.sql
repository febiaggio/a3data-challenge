SELECT
  ano,
  cnae_2_subclasse,
  grau_instrucao_apos_2005, 
  sigla_uf,
  valor_remun_media_nominal
FROM basedosdados.br_me_rais.microdados_vinculos
WHERE cnae_2_subclasse LIKE '01%' -- AGRICULTURA, PECUÁRIA E SERVIÇOS RELACIONADOS
AND sigla_uf IN ('RS', 'SC', 'PR') -- ESTADOS DA REGIÃO SUL
  AND ano > 2009 
  AND ano < 2020