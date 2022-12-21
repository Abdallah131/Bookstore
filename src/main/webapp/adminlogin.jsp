<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="Images/mainlogo.png" type="image/x-icon">
</head>
<body>
    <div class="root">
        <!-- Navigation bar-->
        <div class="navbarcontainer" id="mainheader">
            <a href="index.jsp">
                <img src="Images/mainlogo.png" alt="Logo">
            </a>
            <div class="searchbox">
                <input type="search" name="" id="" placeholder="Search..">
                <img src="Images/searchicon.png" alt="searchicon" id="hm">
            </div>
            <ul class="itemlist">
                <a href="index.jsp#hm">
                    <li>Home</li>
                </a>
                <a href="index.jsp#rcmnd">
                    <li>Our products</li>
                </a>
                <a href="contact.jsp">
                    <li>Contact</li>
                </a>
                <img src="Images/barsicon.png" alt="" class="dropdownbars">
                <div class="dropdowncontent">
                    <ul>
                        <p class="closetag">X</p>
                        <a href="login.jsp">
                            <li>Login</li>
                        </a>
                        <a href="register.jsp">
                            <li>Register</li>
                        </a>
                    </ul>
                </div>
            </ul>
        </div>
        <!-- ------ -->
        <!-- Admin Login container -->
        <div class="Logincontainer">
            <div class="logincontainerandpicture">
                <div class="adminlogin">
                    <a href="login.jsp">
                        <img src="Images/adminpic.png" alt="" class="adminpiclogin">
                    </a>
                </div>
                <div class="adminloginform"><br>
                    <h2 style="margin-top:40px">Admin Login</h2>
                    <form action="/Bookstore/Adminlogin" method="post">
                        <label for="">Email</label><br>
                        <input type="email" name="adminemail" id="" placeholder="Email" required="required"><br>
                        <label for="">Password</label><br>
                        <input type="password" name="adminpassword" id="" placeholder="Password" required="required"><br>
                         <p style="color : red;margin-bottom: -20px">${error}</p>
                        <button>Sign in</button>
                    </form>
                </div>
                <div class="loginpicture">
                    <img src="Images/manybooks.jpg" alt="">
                </div>
            </div>
        </div>
        <!-- ---- -->
    </div>
    <script src="index.js"></script>
</body>
</html>