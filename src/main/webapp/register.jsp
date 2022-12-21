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
        <!-- Register container -->
        <div class="registercontainer">
            <div class="logincontainerandpicture">
                <div class="registerform"><br>
                    <h2 style="margin-top:40px">Register</h2>
                    <form action="/Bookstore/Register" method="post">
                        <label for="">Username</label><br>
                        <input type="text" name="registername" id="" placeholder="Username" required="required"><br>
                        <label for="">Phone number</label><br>
                        <input type="text" name="registerphonenumber" id="" placeholder="Phone number" required="required"><br>
                        <label for="">Email</label><br>
                        <input type="email" name="registeremail" id="" placeholder="Email" required="required"><br>
                        <label for="">Password</label><br>
                        <input type="password" name="registerpassword" id="" placeholder="Password" required="required"><br>
                        <label for="">Confirm Password</label><br>
                        <input type="password" name="" id="" placeholder="Confirm Password" required="required"><br>
                        <p style="color : green">${success}</p>
                        <p style="color : red">${error}</p>
                        <p style="color : red">${exists}</p>
                        <button>Sign up</button>
                    </form>
                    <p>Forgot password?</p>
                    <a href="forgotpassword.jsp">Reset password</a>
                </div>
                <div class="registerpicture">
                    <img src="Images/booksstack.jpg" alt="">
                </div>
                <div class="joinusregister">
                    <h1 style="font-size:60px; margin-top:100px">JOIN US NOW!</h1>
                </div>
                <div class="fti">
                    <img src="Images/facebook.png" alt="fb">
                    <img src="Images/twittee.png" alt="twt">
                    <img src="Images/insta.png" alt="insta">
                </div>
            </div>
        </div>
        <!-- ---- -->
    </div>

    <script src="index.js"></script>
</body>
</html>