import duckdb
conn = duckdb.connect('new_db.duckdb')
# print(conn.execute('''
# select * from netflix_titles limit 1;
# ''').fetchall())
print(conn.execute('''
show tables;
''').fetchall())

