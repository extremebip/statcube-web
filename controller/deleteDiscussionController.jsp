<%@ include file="./../database/connect.jsp" %>

<%
    String discussionid = request.getParameter("discussionID");
    String topicID = request.getParameter("topicID");

    String query = String.format("DELETE FROM TrDiscussion WHERE DiscussionID = ('%s')",discussionid);
    st.executeUpdate(query);
    String sendUrl = "./../discussion.jsp?topic="+ topicID;
    response.sendRedirect(sendUrl);

%>