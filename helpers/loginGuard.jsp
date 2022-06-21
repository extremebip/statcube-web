<%
    if (session.getAttribute("UserID") == null && session.getAttribute("AdminID") == null) {
        response.sendRedirect("./login.jsp");
        return;
    }
%>