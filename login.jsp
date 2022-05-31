<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Login</title>
</head>
<header>
    <jsp:include page="navbar.jsp"/>
</header>
<body>
    <center>
        <p class=header>Login</p>
        <form action="action_page.php" method="post">
            
            <input type="text" class=logintext placeholder="E-mail" name="email" required>
            <br>
            <input type="password" class=logintext placeholder="Password" name="password" required>
            <br>
            <p class="logintext2">Don't have an account?<a href="#!"> Register</a></p>
            <br>
            <button class=loginbutton type="submit">Login</button>
            
        </form>
    </center>
 
</body>
</html>

<style>
    
    .header
    {
        font-size: 50px;
        font-weight: bold;
    }

    .logintext{
        width: 600px;
        padding:10px 30px;
        margin: 5px;
        font-size: 30px;
        border-radius: 40px;
        color: black;
        background-color: #849FAD;
        border-color: transparent
    }
    .logintext2{
        font-size : 30px
    }
    .loginbutton{
        width: 200px;
        padding:10px 20px;
        margin: 5px;
        font-size: 24px;
        border-radius: 40px;
        color: white;
        background-color: #CA3542;
        border-color: transparent
    }
    ::placeholder{
        color: black;
    }

</style>