<%
    String role2 = ""; 
    role2 = (String)session.getAttribute("Role");
    String name = "" ;
    name = (String)session.getAttribute("Name");
%>
<nav class="navbar navbar-expand-lg navbar-light">
    <a href="home.jsp" class="navbar-brand">
        <img src="./public/assets/logo small.png" alt="" height="55">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-content">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbar-content">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a href="home.jsp" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
                <a href="about_us.jsp" class="nav-link">About Us</a>
            </li>
            <li class="nav-item">
                <a href="course.jsp" class="nav-link">Courses</a>
            </li>
        </ul>
        <%
            if(role2=="User" || role2==("Admin"))
            {
        %>
            <a class="userbox" href="profile.jsp"><%= name %></a>
        <%         
            } else {
        %>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="login.jsp" class="nav-link">Login</a>
            </li>
            <li class="nav-item">
                <a href="register.jsp" class="nav-link">Register</a>
            </li>
        </ul>
        <%}%>
    </div>
</nav>

<script>
    $(document).ready(function () {
        const currLocation = location.pathname.replace(/\<%= request.getContextPath() %>>\//gm, '');
        $('.nav-link').each(function () {
            let linkHref = $(this).prop('href');
            if (linkHref.includes(currLocation)) {
                $(this).parent().addClass('active');
            }
        });

        $('.nav-link').click(function (e) {
            let linkHref = $(this).prop('href');
            if (linkHref.includes(currLocation)) {
                e.preventDefault();
            }
        });
    });
</script>

<style>
.userbox, .userbox:hover{
    background-color: #27647B;
    text-decoration: none;
    color: white;
    font-weight :bold;
    font-size: calc(16px + 0.4vw);
    max-width: calc(700px + 2vw);
    text-align: center;
    padding: 5px 10px;
    border-radius: 15px;
}

</style>