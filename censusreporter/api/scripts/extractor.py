__author__ = 'kooshag'


import pandas as pd
df = pd.read_csv('yeg_census_disag.csv')
df.columns = [c.lower() for c in df.columns]

from sqlalchemy import create_engine
engine = create_engine('postgresql://census:census@localhost:5432/census_2011')

df.to_sql("yeg_census_age", engine)








