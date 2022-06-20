<%
    int LoggedAdminID = -1;
    if (session.getAttribute("AdminID") != null) {
        String tempAdminID = session.getAttribute("AdminID").toString();
        LoggedAdminID = Integer.parseInt(tempAdminID);
    } else {
        response.sendRedirect("./home.jsp");
    }
%>