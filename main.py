import mysql.connector
from mysql.connector import Error
import csv

def create_connection(host_name, user_name, user_password):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password
        )
        print("Connection successful")
    except Error as e:
        print(f"The error '{e}' occurred")

    return connection

def create_database(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        print("Database created successfully")
    except Error as e:
        print(f"The error '{e}' occurred")

connection = create_connection("localhost", "root", "")

create_database_query = "CREATE DATABASE test"
create_database(connection, create_database_query)


with open('data-20170620T1824-structure-20170620T1802.csv', newline='',  encoding='utf-8') as csvfile:
     cursor = connection.cursor()
     cursor.execute('USE `test`')
     cursor.execute('DROP TABLE `test_table`')
     cursor.execute('CREATE TABLE `test_table` (`id` int NOT NULL AUTO_INCREMENT, `name` varchar(255) NOT NULL, `time` varchar(255) NOT NULL, `x` varchar(255), `y` varchar(255), `address` varchar(255) NOT NULL, PRIMARY KEY (`id`))')
     sql = "INSERT INTO test_table (name, time, x, y, address) VALUES (%s, %s, %s, %s, %s)"
     spamreader = csv.reader(csvfile, delimiter=';', quotechar='|')
     for row in spamreader:
         cursor.execute(sql, row)
     connection.commit()