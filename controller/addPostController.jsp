<%@ include file="./../database/connect.jsp" %>
<%@page import="java.sql.*" %>
<%
    String DiscussionID = request.getParameter("DiscussionID");
    String UserID = session.getAttribute("UserID").toString();
    String PostContent = request.getParameter("post");

    String query = String.format("INSERT INTO TrPost (DiscussionID, UserID, PostContent, PostDate) VALUES (%s, %s, '%s', CURRENT_TIMESTAMP)", DiscussionID, UserID, PostContent);
    st.executeUpdate(query);
    response.sendRedirect("./../discussionDetail.jsp?id=" + DiscussionID); 
%>