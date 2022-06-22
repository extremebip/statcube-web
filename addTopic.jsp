<%@include file="helpers/adminGuard.jsp" %>
<%@include file="database/connect.jsp" %>

<%
    String courseID = request.getParameter("course");
    String courseTitle = "";

    String query = String.format("SELECT CourseTitle FROM MsCourse WHERE CourseID = %s", courseID);
    ResultSet courseRs = st.executeQuery(query);
    if (courseRs.next()) {
        courseTitle = courseRs.getString("CourseTitle");
    } else {
        con.close();
        response.sendRedirect("course.jsp");
        return;
    }

    String errTitle = null;
    if (session.getAttribute("errTitle") != null) {
        errTitle = session.getAttribute("errTitle").toString();
        session.removeAttribute("errTitle");
    }

    String prevInputTitle = "";
    if (session.getAttribute("inputTitle") != null) {
        prevInputTitle = session.getAttribute("inputTitle").toString();
        session.removeAttribute("inputTitle");
    }

    String errContent = null;
    if (session.getAttribute("errContent") != null) {
        errContent = session.getAttribute("errContent").toString();
        session.removeAttribute("errContent");
    }

    String prevInputContent = "";
    if (session.getAttribute("inputContent") != null) {
        prevInputContent = session.getAttribute("inputContent").toString();
        session.removeAttribute("inputContent");
    }

    String errImageURL = null;
    if (session.getAttribute("errImageURL") != null) {
        errImageURL = session.getAttribute("errImageURL").toString();
        session.removeAttribute("errImageURL");
    }

    String prevInputImageURL = "";
    if (session.getAttribute("inputImageURL") != null) {
        prevInputImageURL = session.getAttribute("inputImageURL").toString();
        session.removeAttribute("inputImageURL");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Add Topic</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/addTopic.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>

</head>
<body>
    <%@ include file="navbar.jsp" %>
    <div class="content container-md p-5">
        <div class="row mb-3">
            <div class="col-12 text-center">
                <h1>Add Course</h1>
            </div>
            <div class="col-12 text-center">
                <h3><%= courseTitle %></h3>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <form action="./controller/addTopicController.jsp" method="POST">
                    <input type="hidden" name="CourseID" value="<%= courseID %>">
                    <div class="form-group">
                        <h4>Topic Title</h4>
                        <input type="text" class="form-control accent-input p-4" name="Title" placeholder="Write Your Text Here" value="<%= prevInputTitle %>">
                        <p class="m-1 text-danger"><%= (errTitle != null) ? errTitle : "" %> </p>
                    </div>
                    <div class="form-group mt-3">
                        <h4>Topic Content</h4>
                        <textarea name="Content" class="form-control accent-input p-4" cols="30" rows="5" placeholder="Write Your Text Here"><%= prevInputContent %></textarea>
                        <p class="m-1 text-danger"><%= (errContent != null) ? errContent : "" %> </p>
                    </div>
                    <div class="form-group">
                        <h4>Topic Image URL</h4>
                        <input type="url" class="form-control accent-input p-4" name="ImageURL" placeholder="Write Your URL Here" value="<%= prevInputImageURL %>">
                        <p class="m-1 text-danger"><%= (errImageURL != null) ? errImageURL : "" %> </p>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-danger btn-pill w-25 mt-5">Add Topic</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>

<%
    con.close();
%>