<%@include file="../database/connect.jsp" %>

<%
    String topicId = request.getParameter("topicId");
    String title = request.getParameter("title");
    String description = request.getParameter("description");
    String adminID = session.getAttribute("AdminID").toString();

    boolean validate = true;
    String err = "";

    // validasi title
    if(title.isEmpty()){
        err = err + "errTitle=Title must be filled";
        validate = false;
    } 

    // validasi content
    if(description.isEmpty()){
        if(err != "") err = err + "&";
        err = err + "errContent1=Description must be filled";
        validate = false;
    } 

    description = description.trim();
    int numberOfWords = description.split("\\s+").length;
    if(numberOfWords < 10){
        if(err != "") err = err + "&";
        err = err + "errContent2=Description must be at least 10 words";
        validate = false;
    }

    //out.println(adminID);
    //out.println(description);
    //out.println(title);
    if(validate){
        String addQuery = String.format("INSERT INTO MsCourse (AdminID, CourseTitle, CourseDescription) VALUES ('%s', '%s', '%s')", adminID, title, description);
        st.executeUpdate(addQuery);

        response.sendRedirect("../course.jsp");
    }else{
        response.sendRedirect("../addCourse.jsp?"+err);
    }
    
    con.close();

%>