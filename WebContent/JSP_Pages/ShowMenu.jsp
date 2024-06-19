<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.ServletPages.DBConnection"%>

<!DOCTYPE html>
<html>
<head>
<title>Sai Mess</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="ShowMenu.css">
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap"
	rel="stylesheet">
</head>

<body>

	<%@include file="NavBarUser.html"%>


	<div class="abody">
		<div class="main" style="height: 550px; width: 700px">

	

				<table style="margin: 5%">

					<%
						try {
							Connection con = DBConnection.connection();
							Statement st = con.createStatement();
							ResultSet res = st
									.executeQuery("select DISTINCT bhaji1, bhaji2, roti, rice, sweet from menu ");
							while (res.next()) {
								%>
								
								<tr>
								<td style="color: #fff; padding: 2%" ><%= res.getString(1) %></td>
								
								<td style="color: #fff; padding: 2%"><%= res.getString(2) %></td>
								
								<td style="color: #fff; padding: 2%"><%= res.getString(3) %></td>
								
								<td style="color: #fff; padding: 2%"><%= res.getString(4) %></td>
								
								<td style="color: #fff; padding: 2%"><%= res.getString(5) %></td>
								
								<td style="color: #fff; padding: 2%"><%= res.getString(6) %></td>
								</tr>
								
								
								<%
							}
						} catch (Exception ex) {
							System.out.println(ex);
						} finally {

						}
					%>

				</table>

			</div>


		</div>



</body>
</html>