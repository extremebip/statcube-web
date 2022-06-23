<%@include file="./../database/connect.jsp" %>
<%
    String topicId = request.getParameter("topicId");
    String courseId = request.getParameter("courseId");

    String deleteQuery = String.format("DELETE FROM MsTopic WHERE TopicID = ('%s')", topicId);
    st.executeUpdate(deleteQuery);

    response.sendRedirect("../courseDetail.jsp?id=" + courseId);

%>