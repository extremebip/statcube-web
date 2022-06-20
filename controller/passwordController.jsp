<%@page import="java.sql.*" %>
<%@ include file="./../database/connect.jsp" %>

<%!
public static final class PasswordValidator {
    private static String checkLength(String password) {
        if (password == null) {
            return "Password must be filled";
        }

        if (password.isEmpty()) {
            return "Password must be filled";
        }

        if (password.length() < 6) {
            return "Password must have at least 6 characters";
        }

        return null;
    }

    private static String checkAlphanumeric(String password) {
        boolean hasAlpha = false;
        boolean hasNumeric = false;
        int stringLen = password.length();
        for (int i = 0; i < stringLen; i++) {
            char c = password.charAt(i);
            if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))
            {
                hasAlpha = true;
            }
            if (c >= '0' && c <= '9')
            {
                hasNumeric = true;
            }
        }

        if (!hasAlpha) {
            return "Password must contain at least one alphabet";
        } else if (!hasNumeric) {
            return "Password must contain at least one number";
        }
        return null;
    }

    public static String checkAll(String password) {
        String errMessage = checkLength(password);
        if (errMessage != null) {
            return errMessage;
        }
        errMessage = checkAlphanumeric(password);
        return errMessage;
    }
}
%>

<%

    String oldPassword = request.getParameter("txtOldPassword");
    String newPassword = request.getParameter("txtNewPassword");
    String confirmPassword = request.getParameter("txtNewPassword2");

    String email = "";
    if (session.getAttribute("Email") == null) {
        response.sendRedirect("./../login.jsp");
        return;
    } else {
        email = session.getAttribute("Email").toString();
    }
    String role="";
    role = (String)session.getAttribute("Role");

    int id=0;
    String dbPassword = "";
    if(role.equals("User"))
    {
        String query = String.format("SELECT * FROM MsUser WHERE UserEmail = '%s'", email);
        ResultSet rs = st.executeQuery(query);
        if (rs.next()) {
            dbPassword = rs.getString("UserPassword");
            id = rs.getInt("UserID");
        } 
    }
    else if(role.equals("Admin"))
    {
        String query = String.format("SELECT * FROM MsAdmin WHERE AdminEmail = '%s'", email);
        ResultSet rs = st.executeQuery(query);
        if (rs.next()) {
            dbPassword = rs.getString("AdminPassword");
            id = rs.getInt("AdminID");
        } 
    }

    boolean isValid = true;
    
    if (oldPassword == null) {
        session.setAttribute("txtOldPassword", "Old Password must not be empty");
        isValid = false;
    } else if (oldPassword.isEmpty()) {
        session.setAttribute("txtOldPassword", "Old Password must not be empty");
        isValid = false;
    } else if (!dbPassword.equals(oldPassword)) { 
        session.setAttribute("txtOldPassword", "Old Password does not match");
        isValid = false;
    }

    String passwordValid = PasswordValidator.checkAll(newPassword);
    if (passwordValid != null) {
        session.setAttribute("txtNewPassword", "New " + passwordValid);
        isValid = false;
    }

    if (!isValid) {
        response.sendRedirect("./../password.jsp");
        return;
    }

    if (!newPassword.equals(confirmPassword)) {
        session.setAttribute("txtConfirmPassword", "Confirm Password does not match");
        response.sendRedirect("./../password.jsp");
        return;
    }



    if(role.equals("User"))
    {
        String updateQuery = String.format("UPDATE MsUser SET UserPassword = '%s' WHERE UserID = %d", newPassword, id);
        st.executeUpdate(updateQuery);
        response.sendRedirect("./../password.jsp"); 
    }
    else if(role.equals("Admin"))
    {
        String updateQuery = String.format("UPDATE MsAdmin SET AdminPassword = '%s' WHERE AdminID = %d", newPassword, id);
        st.executeUpdate(updateQuery);
        response.sendRedirect("./../password.jsp"); 
    }

%>