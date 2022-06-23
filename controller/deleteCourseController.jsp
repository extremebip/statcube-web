<%@ include file="./../database/connect.jsp" %>

<%
    String courseID = request.getParameter("id");

    String query = String.format("DELETE FROM MsCourse WHERE CourseID = ('%s')", courseID);
    st.executeUpdate(query);

    query = String.format("DELETE FROM MsRecommended WHERE CourseID = ('%s')", courseID);
    st.executeUpdate(query);

    String sendUrl = "./../course.jsp";
    response.sendRedirect(sendUrl);
%>