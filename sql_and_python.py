import psycopg2
import json

db = psycopg2.connect(
    dbname = 'example_db',
    user = 'postgres',
    password = '12112006@Miu#',
    host = 'localhost',
)

dbc = db.cursor()

dbc.execute("SELECT * FROM contacts;")

print(dbc.fetchall())
