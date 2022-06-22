<%@include file="../database/connect.jsp" %>

<%
    String courseID = request.getParameter("CourseID");
    String title = request.getParameter("Title");
    String content = request.getParameter("Content");
    String imageUrl = request.getParameter("ImageURL");

    boolean validate = true;

    // validasi title
    if(title.isEmpty()){
        session.setAttribute("errTitle", "Title must be filled");
        validate = false;
    } 

    // validasi content
    if(content.isEmpty()){
        session.setAttribute("errContent", "Content must be filled");
        validate = false;
    } else {
        content = content.trim();
        int numberOfWords = content.split("\\s+").length;
        if(numberOfWords < 10){
            session.setAttribute("errContent", "Content must have at least 10 words");
            validate = false;
        }
    }

    // validasi image URL
    if(imageUrl.isEmpty()){
        session.setAttribute("errImageURL", "Image URL must be filled");
        validate = false;
    } 

    if(validate){
        String addQuery = String.format(
            "INSERT INTO MsTopic (CourseID, TopicTitle, TopicContent, TopicThumbnail) " +
            "VALUES ('%s', '%s', '%s', '%s')", 
        courseID, title, content, imageUrl);
        st.executeUpdate(addQuery);

        response.sendRedirect("../courseDetail.jsp?id=" + courseID);
    } else {
        session.setAttribute("inputTitle", title);
        session.setAttribute("inputContent", content);
        session.setAttribute("inputImageURL", imageUrl);
        response.sendRedirect("../addTopic.jsp?course=" + courseID);
    }

    con.close();
%>