import pandas as pd
import requests
from sqlalchemy import create_engine

# Conectar ao banco de dados
engine = create_engine('postgresql://usuario:senha@localhost:5432/banco_de_dados')

# Fazer requisição GET à API
url = 'http://exemplo.com/api/procedimentos'
response = requests.get(url)
data = response.json()

# Transformar os dados em um DataFrame
df = pd.DataFrame(data)

# Gravar os dados na tabela desejada
df.to_sql('nome_da_tabela', con=engine, if_exists='replace', index=False)
