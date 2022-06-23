<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Add Discussion</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/addDiscussion.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>

</head>
<body>
    <%@ include file="navbar.jsp" %>
    <div class="content container-md p-5">
        <div class="row">
            <div class="col-12 text-center">
                <h1>Add Discussion</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <form action="controller/addDiscussionController.jsp" class="mt-3 medium-form" method="post">
                    <input type="hidden" name="topicId" value="<%= request.getParameter("id")%>">
                    <div class="form-group">
                        <h4>Title</h4>
                        <input type="text" class="form-control accent-input p-4" name="title">
                        <p class="m-1 text-danger"><% if(request.getParameter("errTitle") != null) out.println(request.getParameter("errTitle")); %> </p>
                    </div>
                    <div class="form-group mt-3">
                        <h4>Content</h4>
                        <textarea name="content" class="form-control accent-input p-4" cols="30" rows="10"></textarea>
                        <p class="m-1 text-danger"><% if(request.getParameter("errContent1") != null) out.println(request.getParameter("errContent1")); %> </p>
                        <p class="m-1 text-danger"><% if(request.getParameter("errContent2") != null) out.println(request.getParameter("errContent2")); %> </p>
                    </div>
                    
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-danger btn-pill w-25 mt-5">Post</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>