#!/usr/bin/python3

import cgi
import sqlite3

import cgitb
cgitb.enable()

# getting the form values
form_data = cgi.FieldStorage()

years_list = []
sort_category = form_data.getvalue('sort_category')
order = form_data.getvalue('order')

for year in range(2000, 2017):
	if form_data.getvalue(str(year)):
		years_list.append(str(year))

# building the query
query = "SELECT year, SUM(headcount) as hd_count FROM tap "

if len(years_list) == 0:
	years_list = [str(year) for year in range(2000, 2017)]
else:
	years = "("
	for year in years_list:
		years += year + ','
	years = years[:-1] + ")"
	query += "WHERE year in " + years + " "

if sort_category == 'tap_recipient':
	query += 'GROUP BY year' + ' ORDER BY hd_count' + ' ' + order + ';'
else:  
	query += 'GROUP BY year ' + 'ORDER BY ' + sort_category + ' ' + order + ';'

# connecting to the database
db = sqlite3.connect('tap_data.db')
cursor = db.cursor()
cursor.execute(query)
query_result = cursor.fetchall()

# html layout
print("Content-Type: text/html\r\n\r\n")
print("<!DOCTYPE html>")
print("<html>")
print("<head>")
print("<title>Tap Recipients</title>")
print("<link rel='stylesheet' type='text/css' href='pyscript.css'>")
print("</head>")
print("<body>")
print("<h1 id='page-header'>TAP Recipients by Year</h1>")
print("<p class='query'>QUERY:", query, '</p>')
# table headers and rows
print("<table>")

print("<tr>")
print("<th>Year</th>")
print("<th>Total Recipients</th>")
print("</tr>")

# printing result from the query into the table
for year, total in query_result:
	print("<tr>")
	print("<td>"+year+"</td>")
	print("<td>"+str(total)+"</td>")
	print("</tr>")
	

print("</table>")

cursor.close()
print("</body>")
print("</html>")

















