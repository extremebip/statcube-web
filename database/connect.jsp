<%@page import="java.sql.*" %>

<%
    Class.forName("com.mysql.jdbc.Driver");

    String DB_HOST = "localhost";
    String DB_NAME = "AH9w9W9dTm";
    String DB_USERNAME = "root";
    String DB_PASSWORD = "";

    String ConnectionString = String.format("jdbc:mysql://%s/%s", DB_HOST, DB_NAME);

    Connection con = DriverManager.getConnection(ConnectionString, DB_USERNAME, DB_PASSWORD);

    Statement st = con.createStatement(1004, 1008);
%>