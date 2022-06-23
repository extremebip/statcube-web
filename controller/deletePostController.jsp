<%@include file="./../database/connect.jsp" %>
<%
    String discussionId = request.getParameter("id");
    String postid = request.getParameter("PostID");
    int adminid = (Integer)session.getAttribute("AdminID");
    //out.println(adminid);out.println(postid);
    String deleteQuery = String.format("UPDATE TrPost SET AdminID=('%d') WHERE PostID = ('%s')", adminid, postid);
    st.executeUpdate(deleteQuery);

    response.sendRedirect("../discussionDetail.jsp?id=" + discussionId);

%>