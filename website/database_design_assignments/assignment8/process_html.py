#!/usr/local/bin/python3

import cgi, cgitb
cgitb.enable()

import sys, codecs
sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())

# pymsql module
import pymysql

# set the connection
connection = pymysql.connect('warehouse', 'ma3599','dblogin','ma3599_db1',charset='utf8mb4',cursorclass=pymysql.cursors.DictCursor)
cursor= connection.cursor()
query = "SELECT m.movie_name, m.movie_release_year, m.movie_country_origin, c.movie_category, l.movie_url FROM movie m INNER JOIN movie_category c ON m.movie_name = c.movie_name INNER JOIN movie_link l ON m.movie_name = l.movie_name WHERE "

# get the form values
form_data = cgi.FieldStorage()
movie_category = form_data.getvalue('movie-category')
movie_country = form_data.getvalue('country')
query += "m.movie_country_origin = '" + movie_country + "' AND c.movie_category= '" + movie_category + "';"

# execute the query
cursor.execute(query)

result = cursor.fetchall()

# html layout
print("Content-Type: text/html\r\n\r\n")
print("<!DOCTYPE html>")
print("<html>")
print("<head>")
print("<title>Tap Recipients</title>")
print('''<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">''')
print("<link rel='stylesheet' type='text/css' href='pyscript.css'>")
print("</head>")
print("<body>")
print("<p class='lead'>Here are the Results</p>")
print("<p class='query lead jumbotron'><strong>QUERY:</strong> "+ query  + "</p>")

# table headers and rows
print("<div class='table-container'>")
print("<table>")

print("<tr>")
print("<th>Movie Name</th>")
print("<th>Movie Country</th>")
print("<th>Movie Category</th>")
print("<th>Movie Year Released</th>")
print("<th>IMDB Profile</th>")
print("</tr>")

# printing result from the query into the table
for row in result:
	print("<tr>")
	print("<td>"+row['movie_name']+"</td>")
	print("<td>"+row['movie_country_origin']+"</td>")
	print("<td>"+row['movie_category']+"</td>")
	print("<td>"+str(row['movie_release_year'])+"</td>")
	print("<td><a target='_blank' href='"+ row['movie_url'] +"'>imdb</a></td>")
	print("</tr>")
	
print("</table>")
print("</div>")

cursor.close()
print("</body>")
print("</html>")
