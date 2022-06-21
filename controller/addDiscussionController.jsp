<%@include file="../database/connect.jsp" %>

<%
    String topicId = request.getParameter("topicId");
    String userId = session.getAttribute("UserID").toString();
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    boolean validate = true;
    String err = "";

    // validasi title
    if(title.isEmpty()){
        err = err + "errTitle=Title must be filled";
        validate = false;
    } 

    // validasi content
    if(content.isEmpty()){
        if(err != "") err = err + "&";
        err = err + "errContent1=Content must be filled";
        validate = false;
    } 

    content = content.trim();
    int numberOfWords = content.split("\\s+").length;
    if(numberOfWords < 5){
        if(err != "") err = err + "&";
        err = err + "errContent2=Content must be at least 5 words";
        validate = false;
    }


    if(validate){
        String addQuery = String.format("INSERT INTO TrDiscussion (TopicID, UserID, DiscussionTitle, DiscussionContent, DiscussionDate) VALUES ('%s', '%s', '%s', '%s', CURRENT_TIMESTAMP)", topicId, userId, title, content);
        st.executeUpdate(addQuery);

        response.sendRedirect("../discussion.jsp?topic="+ topicId);
    }else{
        response.sendRedirect("../addDiscussion.jsp?id=" + topicId + '&' + err);
    }
    
    con.close();

%>