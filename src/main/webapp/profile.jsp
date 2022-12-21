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
                        <a href="profile.jsp">
                            <li>Profile</li>
                        </a>
                        <a href="register.jsp">
                            <li>Cart</li>
                        </a>
                        <a href="index.jsp">
                            <li>Logout</li>
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
                    <h2 style="margin-bottom: 50px;margin-top:40px;">Personal informations</h2>
                    <form action="/Bookstore/Update" method="post">
                        <label for="">Username</label><br>
                        <input style="margin-bottom:20px;" type="text" name="inputusername" id="" placeholder="Username" value="${username}"><br>
                        <label for="">Phone number</label><br>
                        <input style="margin-bottom:30px;" type="text" name="inputphonenumber" id="" placeholder="Phone number"value="${phonenumber}"><br>
                        <label for="">Email</label><br>
                        <input style="margin-bottom:30px;" type="email" name="inputuseremail" id="" placeholder="Email" value="${email}"><br>
                        <label for="">Password</label><br>
                        <input style="margin-bottom:30px;" type="password" name="inputpassword" id="" placeholder="Password"><br>
                        <label for="">Confirm Password</label><br>
                        <input style="margin-bottom:30px;" type="password" name="" id="" placeholder="Confirm Password"><br>
                        <p style="color:green; margin-bottom:10px;margin-top:-10px">${updated}</p>
                        <button style="margin-top:10px;">Update account</button>
                    </form>
                </div>
                <div class="registerpicture">
                    <img src="Images/booksdash.jpg" alt="">
                </div>
                <div class="joinusregister" style="right: 5%;">
                    <h1 style="font-size:90px;text-align:center">Welcome <br> ${username}</h1>
                </div>
            </div>
        </div>
        <!-- ---- -->
    </div>

    <script src="index.js"></script>
</body>
</html>