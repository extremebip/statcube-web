<%@include file="database/connect.jsp" %>

<%
    Connect connect = Connect.getConnection();

    int start = 1;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="public/css/home_style.css">
</head>
<body>
    <section class="section1">
        <div>
            <p class="slogan">Making Your Learning More Enjoyable</p>
            <button class="btn-subscribe">Subscribe Now!</button>
        </div>
        <img src="public/assets/cube.png" alt="">
    </section>
    <section class="section2">
        <p><span class="red">Thousands </span>of Courses.</p>
        <p><span class="red">One </span>memberships.</p>

        <div class="card-slider">
            <%
                for(int i=start; i<start+3; i++){
            %>
                <div class="card">
                    <img src="" alt="">
                    <p>Course title - Lorem ipsum dolor sit amet consectetur adipisicing</p>
                    <p class="author">Author</p>
                </div>
            <%
                }
            %>
        </div> 
    </section>
</body>
</html>