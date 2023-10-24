<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact us</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="Images/mainlogo.png" type="image/x-icon">
</head>
<body>
    <div class="contactrootcontainer">
        <!-- ------ -->
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
        <!-- Contact container -->
        <div class="contactanddesccontainer">
            <div class="contactcontainer">
                <h1 class="contactustitle" style="margin-top:50px">Contact us</h1>
                <form action="">
                    <div class="firstnamecontainer">
                        <label for="">First Name</label><span class="errorstar"> *</span><br>
                        <input type="text" name="" id="" placeholder="First name" required="required">
                        <div class="lastnamecontainer">
                            <label for="">Last Name</label><span class="errorstar"> *</span><br>
                            <input type="text" name="" id="" placeholder="Last name" required="required">
                        </div>
                    </div>
                    <div class="emailcontainer">
                        <label for="">Email</label><span> *</span class="errorstar"><br>
                        <input type="email" name="" id="" placeholder="Email" required="required">
                    </div>
                    <div class="phonecontainer">
                        <label for="">Phone number</label><span class="errorstar"> *</span><br>
                        <input type="text" name="" id="" placeholder="Phone number" required="required">
                    </div>
                    <div class="messagecontainer">
                        <label for="">Message</label><span class="errorstar"> *</span><br>
                        <textarea name="" id="" cols="67" rows="5" placeholder="Description" required="required"></textarea>
                    </div><br>
                    <button style="margin-top:40px">Send Message</button>
                </form>
            </div>
            <div class="descriptioncontainer" style="margin-left:120px; width :600px;margin-top:60px;">
                <h1 style="margin-top:90px">How Can We Help?</h1>
                <p>You've got questions, We've got answers on anything.</p>
                <p>Do not hestitate to contact us.</p>
                <hr>
                <b>Book a demo</b>
                <p>Request a demo from one of our <br> conversation specialists.</p>
                <hr>
                <b>Get Inspired</b>
                <p>Discover the many ways in which our <br>customers interact with the website.</p>
                <hr>
                <b>Become a Partner</b>
                <p>Join our Partner Program <br>and earn 25% recurring commissions.</p>
                <img src="Images/booksbackground.jpg" alt="" style="height: 800px; top: 12.5%;">
            </div>
        </div>
        <!-- ---- -->
    </div>

    <script src="index.js"></script>
</body>
</html>