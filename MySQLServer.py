import mysql.connector

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Eman_mahmoud_svt93",

)
cursor = db.cursor()
cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
with open("alx_book_store.sql", "r", encoding="utf-8") as f:
    sql=f.read()
    
for statement in sql.split(";"):
    if statement.strip():
        cursor.execute(statement)
        
print("Datebase 'alx_book_store' created successfully!")
except mysql.connector.Error as err:
    print(f"Error: {err}")
cursor.close()
db.close()
    
