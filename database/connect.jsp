<%@page import="java.sql.*" %>

<%
    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com/AH9w9W9dTm", "AH9w9W9dTm", "Ebw0x1YTul");

    Statement st = con.createStatement(1004, 1008);
%>