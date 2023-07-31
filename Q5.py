import pandas as pd
from sqlalchemy import create_engine

# Conectar ao banco de dados
engine = create_engine('postgresql://usuario:senha@localhost:5432/banco_de_dados')

# Ler o arquivo CSV
df = pd.read_csv('caminho/do/arquivo.csv')

# Gravar os dados na tabela desejada
df.to_sql('nome_da_tabela', con=engine, if_exists='replace', index=False)
