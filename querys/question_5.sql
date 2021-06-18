SELECT
    ano,
    indicador_trabalho_intermitente,
    sexo_trabalhador,
    valor_remun_media_nominal
FROM basedosdados.br_me_rais.microdados_vinculos
WHERE indicador_trabalho_intermitente = 1
  AND ano > 2009 
  AND ano < 2020