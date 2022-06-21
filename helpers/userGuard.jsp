<%
    int LoggedUserID = -1;
    if (session.getAttribute("UserID") != null) {
        String tempUserID = session.getAttribute("UserID").toString();
        LoggedUserID = Integer.parseInt(tempUserID);
    } else {
        response.sendRedirect("./home.jsp");
    }
%>