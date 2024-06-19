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
<link rel="stylesheet" type="text/css" href="UserPageOrder.css">
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap"
	rel="stylesheet">
</head>

<body>
	<%@include file="NavBarUser.html"%>
	<div class="abody">
		<div class="main" style="padding-bottom: 3%">

			<div class="signup">
				<form action="../Order" method="post">

					<label for="chk" aria-hidden="true">Place Order</label>

					<div class="row" style="color: #fff; margin: 2% 20%">

						<div class="col-6">Bhaji 1</div>
						<div class="col-6">
							<select name="bhaji1" style="width: 100%">

								<%
									try {
										Connection con = DBConnection.connection();
										Statement st = con.createStatement();
										ResultSet res = st.executeQuery("select DISTINCT bhaji1, bhaji2, roti, rice, sweet from menu ");
									while(res.next()){
								%>

								<option value="<%= res.getString("bhaji1") %>" style="color:#000;"><%= res.getString("bhaji1") %></option>

								<%
									}%>
									
									<% 
									}catch (Exception ex) {
										System.out.println(ex);
									}finally{
									
									}
								%>
							</select>
						</div>
					</div>

					<div class="row" style="color: #fff; margin: 2% 20%">

						<div class="col-6">Bhaji 2</div>
						<div class="col-6">
							<select name="bhaji2" style="width: 100%">

								<%
									try {
										Connection con = DBConnection.connection();
										Statement st = con.createStatement();
										ResultSet res = st.executeQuery("select DISTINCT bhaji1, bhaji2, roti, rice, sweet from menu ");
									while(res.next()){
								%>
								<option value="" style="color:#000;"><%= res.getString("bhaji2") %></option>
								<%
									}%>
									
									<% 
									}catch (Exception ex) {
										System.out.println(ex);
									}finally{
										
									}
								%>
							</select>
						</div>
					</div>

					<div class="row" style="color: #fff; margin: 2% 20%">

						<div class="col-6">Roti</div>
						<div class="col-6">
							<select name="roti" id="cars" style="width: 100%">

								<%
									try {
										Connection con = DBConnection.connection();
										Statement st = con.createStatement();
										ResultSet res = st.executeQuery("select DISTINCT bhaji1, bhaji2, roti, rice, sweet from menu ");
									while(res.next()){
								%>

								<option value="<%= res.getString("roti") %>" style="color:#000;"><%= res.getString("roti") %></option>
								<%
									}%>
									
									<% 
									}catch (Exception ex) {
										System.out.println(ex);
									}finally{
									
									}
								%>

							</select>
						</div>
					</div>


					<div class="row" style="color: #fff; margin: 2 20%">

						<div class="col-6">Rice</div>
						<div class="col-6">
							<select name="rice" id="cars" style="width: 100%">

								<%
									try {
										Connection con = DBConnection.connection();
										Statement st = con.createStatement();
										ResultSet res = st.executeQuery("select DISTINCT bhaji1, bhaji2, roti, rice, sweet from menu ");
									while(res.next()){
								%>
								<option value="<%= res.getString("rice") %>" style="color:#000;"><%= res.getString("rice") %></option>
								<%
									}%>
									
									<% 
									}catch (Exception ex) {
										System.out.println(ex);
									}finally{
										
									}
								%>

							</select>
						</div>
					</div>


					<div class="row" style="color: #fff; margin: 2% 20%">

						<div class="col-6">Sweet</div>
						<div class="col-6">
							<select name="sweet" id="cars" style="width: 100%">

								<%
									try {
										Connection con = DBConnection.connection();
										Statement st = con.createStatement();
										ResultSet res = st.executeQuery("select DISTINCT bhaji1, bhaji2, roti, rice, sweet from menu ");
									while(res.next()){
								%>

								<option value="<%= res.getString("sweet") %>" style="color:#000;"><%= res.getString("sweet") %></option>
								<%
									}%>
									
									<% 
									}catch (Exception ex) {
										System.out.println(ex);
									}finally{
										
									}
								%>

							</select>
						</div>
					</div>

					<div class="row" style="color: #fff; margin: 2% 20%">

						<div class="col-6">Quantity</div>
						<div class="col-6">
							<select name="quantity" id="cars" style="width: 100%">

								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>

							</select>
						</div>
					</div>




					<button>Place Order</button>
				</form>
			</div>

		</div>
	</div>
</body>
</html>