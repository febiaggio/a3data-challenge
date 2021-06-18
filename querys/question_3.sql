SELECT
  ano, 
  cnae_2_subclasse
FROM basedosdados.br_me_rais.microdados_vinculos
WHERE cnae_2_subclasse LIKE '62%' -- ATIVIDADES DOS SERVIÇOS DE TECNOLOGIA DA INFORMAÇÃO
  OR cnae_2_subclasse LIKE '29%' -- FABRICAÇÃO DE VEÍCULOS AUTOMOTORES, REBOQUES E CARROCERIAS
  OR cnae_2_subclasse LIKE '86%' -- ATIVIDADES DE ATENÇÃO À SAÚDE HUMANA
  OR cnae_2_subclasse LIKE '87%' -- ATIVIDADES DE ATENÇÃO À SAÚDE HUMANA INTEGRADAS COM ASSISTÊNCIA SOCIAL, PRESTADAS EM RESIDÊNCIAS COLETIVAS E PARTICULARES
  AND ano > 2009 
  AND ano < 2020