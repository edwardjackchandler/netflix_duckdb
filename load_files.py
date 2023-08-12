import duckdb
conn = duckdb.connect('new_db.duckdb')
conn.execute('''
CREATE TABLE netflix_titles AS SELECT * FROM read_csv_auto(['~/Downloads/netflix_titles.csv']);
''')
conn.execute('''
CREATE TABLE netflix_originals_imdb AS SELECT * FROM read_csv_auto(['~/Downloads/NetflixOriginals_utf8.csv']);
''')

