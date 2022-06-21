<%@ include file="./../database/connect.jsp" %>
<%
    String role = ""; 
    role = (String)session.getAttribute("Role");
    String email = "" ;
    email = (String)session.getAttribute("Email");

    String namedb="";
    String emaildb="";
    String subsdatedb = "";
    int UserID = -1;
    int AdminID = -1;

    
    String query = String.format("Select * FROM MsUser where UserEmail like '%%%s%%'",email);
    ResultSet rs = st.executeQuery(query);
    
    while(rs.next())
    {
        emaildb = rs.getString("UserEmail");
        namedb = rs.getString("UserName");
        UserID = rs.getInt("UserID");
        subsdatedb = rs.getString("UserSubscriptionEndDate");
        
    }
%>

<%@include file="./helpers/userGuard.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Profile</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/profile.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>

</head>
<body>
    <%@ include file="navbar.jsp" %>
    <div class="content container-md p-5">
        <h1 class="title">Profile</h1>
        <div class="box">
            <% if(subsdatedb==null){ %>
                <center><img src="./public/assets/unsubscribe.png" alt=""></center>
                 <p>Haven't subscribed</p>
            <% }else{ %>
                <center><img src="./public/assets/subscribe.png" alt=""></center>
                 <p>Subscribed</p>
                <%}%>
            <div class="inline">
                <p class="bolder">Subscription End Date</p>
                <%
                if(subsdatedb==null){
                %>
                
                <p>-</p> 
                <%}%>
                <% 
                if(subsdatedb!=null){
                %>
                    <p><%= subsdatedb %></p>
                <%}%>
            </div>
        </div>
        <% if(subsdatedb==null){ %>
            <div class="button">
            <center><a class="btn-logout" href="">Subscribe Now</a></center>
            </div>
        <% } %>


        <div class="profile">
            <p class="bolder">Name</p>
            <p><%= namedb %></p>
            <p class="bolder">Email</p>
            <p><%= emaildb %></p>
            <div class="button">
                <a class="btn-change-pass" href="password.jsp">Change Password</a>
                <a class="btn-logout" href="./controller/logoutController.jsp">Logout</a>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>

<style>
    .btn-danger-2 {
        background-color: #27647B;
        border: none;
    }
</style>
