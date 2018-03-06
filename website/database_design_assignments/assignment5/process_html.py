#!/usr/bin/python3

import cgi
import sqlite

import cgitb
cgitb.enable()

# getting the form values
form_data = cgi.FieldStorage()
year = form.getvalue('year')

# connecting to the database
db = sqlite.connect('tap_data.db')
cursor = db.cursor()

query = ""
cursor.execute(query)
query_result = cursor.fetchall()

print("Content-Type: text/html\r\n\r\n")
print("<html>")
print("<head>")
print("<title>Tap Recipients</title>")
print("<link rel='stylesheet' type='text/css' href='pyscript.css'>")
print("</head>")
print("<body>")
print("<h1>Hey Mir!</h1>")
print("<p>The year in the form is:", year, '</p>')
print("</body>")
print("</html>")

