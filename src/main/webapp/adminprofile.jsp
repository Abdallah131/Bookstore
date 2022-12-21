<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="Images/mainlogo.png" type="image/x-icon">
</head>
<body>
    <div class="dashboardcontainer">
        <div class="leftnavbar">
            <div class="leftnavbaritem">
                <div class="leftnavbarheader" style="width: 100px;">
                    <p style="color:white;margin-left: 20px">Hello<br>${adminusername}</p>
                </div>
            </div>
            <div class="leftnavbaritem">
                <a href="loginsuccessadmin.jsp">
                    <span class="las la-home"></span><br>
                    <small>Dashboard</small>
                </a>
            </div>
            <div class="leftnavbaritem">
                <a href="adminprofile.jsp">
                    <span class="las la-user-alt"></span><br>
                    <small>Profile</small>
                </a>
            </div>
            <div class="leftnavbaritem">
                <a href="">
                    <span class="las la-shopping-cart"></span><br>
                    <small>Statistics</small>
                </a>
            </div>
        </div>
        <div class="dashboardtopnavbar">
            <div class="topnavbarbars">
                <label for="navtoggle">
                    <span class="las la-bars" id="toggbars"></span>
                </label>
            </div>
            <div class="topnavbarlogout">
                <a href="index.jsp">
                    <span class="las la-power-off"></span>
                    <span>Logout</span>
                </a>
            </div>
        </div>
        <div class="maindashboardcomp">
            <div class="undermaindash" style="width:2000px;">
                <form action="/Bookstore/Addadmin" method="post">
                    <div class="undermaindashform" style="top:10%; left:20%; position: absolute;">
                        <div class="undermaintitle">
                            <h1>Add new admin</h1>
                        </div>
                        <div class="firstandlastname">
                            <label for="">Username</label>
                            <input type="text" name="newadminusername" id="firstname" placeholder="Username"><br>
                            <label for="">Email</label>
                            <input type="email" name="newadminemail" id="lastname"  placeholder="Email">
                        </div>
                        <div class="emailcon">
                            <label for="">Password</label>
                            <input type="password" name="newadminpassword" id="email" placeholder="Password">
                        </div>
                        <div class="passwordandconfirm">
                            <label for="password">Phone Number</label>
                            <input type="text" name="newadminnumber" id="" placeholder="Phone number"><br>
                            <label for="password">Rank </label>
                            <input type="text" id="" name="newadminrank" placeholder="Rank">
                    </div>
                    <p style="color : green">${success}</p>
                    <p style="color : red">${error}</p>
                    <div class="adminprofilebutton">
                        <button>Add</button>
                    </div>
                    
                    <div class="adminprofilepicture" style="position: absolute;top:-10.3%;right:-32%;">
                        <img src="Images/booksdash.jpg" alt="" style="border-radius:0px;">
                    </div>
                </form>
            </div>
        </div>

    </div>
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</body>
</html>