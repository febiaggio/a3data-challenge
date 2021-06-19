import basedosdados as bd
import boto3
import os

s3_client = boto3.client('s3')
billing_project_id='helpful-emitter-317201'

"""Para cada query na pasta querys -> Faz a consulta e o download da tabela"""
for file in os.listdir('../querys'):
  with open("../querys/{}".format(file)) as f:
    query = f.read()
    print('Lendo {}'.format(file))
    bd.download(query=query, 
      savepath="data/{}/{}.csv".format(file, file), 
      billing_project_id=billing_project_id)
      
    """Faz o upload da tabela no s3 e depois o delet dos arquivos locais"""
    response = s3_client.upload_file('data/{}/{}.csv'.format(file, file), 'raisdata-marts', 'data/{}/{}.csv'.format(file, file))
    print('Upload completo!\n')
