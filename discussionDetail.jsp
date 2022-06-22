<%@include file="database/connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>

<%
    String query = String.format("SELECT * FROM TrDiscussion JOIN MsUser ON MsUser.UserID=TrDiscussion.UserID WHERE DiscussionID LIKE %s", request.getParameter("id"));
    ResultSet result = st.executeQuery(query);
    result.next();

    SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forum</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/discussionDetail.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <section>
        <p class="title">Discussion</p>
        <div class="box">
            <table>
                <tr>
                    <td class="bolder label">Title</td>
                    <td class="bolder">:</td>
                    <td><%= result.getString("DiscussionTitle") %></td>
                </tr>
                <tr>
                    <td class="bolder label">Name</td>
                    <td class="bolder">:</td>
                    <td><%= result.getString("UserName") %></td>
                </tr>
                <tr>
                    <td class="bolder label">Date</td>
                    <td class="bolder">:</td>
                    <td><%= formatter.format(result.getDate("DiscussionDate")) %></td>
                </tr>
            </table>
            <p class="bolder label">Content</p>
            <p><%= result.getString("DiscussionContent") %></p>
        </div>
        <div>
            <p class="title2">Forum</p>
            <form name="formAddComment" action="./controller/addPostController.jsp" onsubmit="return(validateComment())">
                <div class="inline">
                    <input type="hidden" name="DiscussionID" value="<%= request.getParameter("id") %>" id="">
                    <textarea name="post" id="" placeholder="Write forum comment here. Min 5 words."></textarea>
                    <button><img src="./public/assets/btn-send.png" alt=""></button>
                </div>
                <p id="errMsg">Forum comment minimal 5 words.</p>
            </form>
            <div class="posts">
                <%
                    query = String.format("SELECT * FROM TrPost JOIN MsUser ON MsUser.UserID=TrPost.UserID WHERE DiscussionID LIKE %s", request.getParameter("id"));
                    ResultSet postResult = st.executeQuery(query);
                    while(postResult.next()){
                %>
                        <div class="post">
                            <p class="post-name"><%= postResult.getString("UserName") %></p>
                            <p class="post-date"><%= formatter.format(postResult.getDate("PostDate")) %></p>
                            <p class="post-content"><%= postResult.getString("PostContent") %></p>
                        </div>
                <%
                    }
                %>
            </div>
        </div>
    </section>
    <%@ include file="footer.jsp" %>

    <script>
        function validateComment(){
            let comment = document.forms['formAddComment']['post'].value;
            let validate = true;

            let err = document.getElementById('errMsg');

            // ilangin space didepan dan belakang
            comment = comment.replace(/(^\s*)|(\s*$)/gi,"");
            // pastiin gk ad space double
            comment = comment.replace(/[ ]{2,}/gi," ");
            comment = comment.replace(/\n /,"\n");
            let numberOfWords = comment.split(' ').length;
            if(numberOfWords < 5){
                err.style.display = 'block';
                validate = false;
            } else err.style.display = 'none';

            return validate;
        }
    </script>
</body>
</html>
<%
    con.close();
%>