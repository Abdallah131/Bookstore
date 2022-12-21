<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel</title>
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@500&display=swap"
	rel="stylesheet">
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
				<a href="loginsuccessadmin.jsp"> <span class="las la-home"></span><br> <small>Dashboard</small>
				</a>
			</div>
			<div class="leftnavbaritem">
				<a href="adminprofile.jsp"> <span class="las la-user-alt"></span><br>
					<small>Profile</small>
				</a>
			</div>
			<div class="leftnavbaritem">
				<a href=""> <span class="las la-shopping-cart"></span><br>
					<small>Statistics</small>
				</a>
			</div>
		</div>
		<div class="dashboardtopnavbar">
			<div class="topnavbarbars">
				<label for="navtoggle"> <span class="las la-bars"
					id="toggbars"></span>
				</label>
			</div>
			<div class="topnavbarlogout">
				<a href="index.jsp"> <span class="las la-power-off"></span> <span>Logout</span>
				</a>
			</div>
		</div>
		<div class="maindashboardcomp">
			<div class="undermaindashboard" style="width:2000px;">
				<div class="undermaindashboardnavbar">
					<a href="">Welcome !</a>
				</div>
				<div class="addbookcontainer">
					<form action="/Bookstore/Books" method="post">
						<div class="undermaindashform"
							style="box-shadow: none; margin-top:-20px; height: 585px; border-radius: 0; left:1%; width: 750px;">
							<div class="undermaintitle">
								<h1>Books</h1>
							</div>
							<div>
							
								<label for="">Book name</label> <input type="text" name="bookname"
									class="newbookname" placeholder="Book Name"><br>
								<div>
									<label for="">Book Author</label> <input type="text" name="bookauthor"
										class="newbookauthor" placeholder="Book Author">
								</div>
								<div>
									<label for="">Book Price</label> <input type="text" name="bookprice"
										id="" class="newbookprice" placeholder="Book Price">

								</div>
								<div>
									<label for="">Availability</label> <input type="text" name="bookavailability"
										class="newbookavailibility" placeholder="Book Availability">
								</div>
								<div>
									<label for="">Quantity</label> <input type="number" name="bookquantity"
										class="newbookquantity" placeholder="Book Quantity">
								</div>
								<p style ="color: red">${error}</p>
								<p style ="color: red">${bug}</p>
								<p style ="color: green">${success}</p>
								<p style ="color: green">${updated}</p>
								<p style ="color: red">${booknotupdated}</p>
								<button id="addbook" class="addbookbutton" name="Submited" value="Submit" style="left: 52%;top:73%">Submit</button>
								<button  onclick=update() id="tochangebutton" name ="Submited" value="Update" style="left:20%;top:73%">Update</button>
							</div>
						</div>
					</form>
				</div>
				<div class="bookstable" style="box-shadow: none; margin-top:-7px; height: 760px; overflow: auto; left: 34%;">
					<table border="1" class="booklist">
						<tr>
							<th>Book name</th>
							<th>Book author</th>
							<th>Book price</th>
							<th>Book availability</th>
							<th>Quantity</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
						<tr>
							<td>Catch-22</td>
							<td>Jospeh Heller</td>
							<td>$12.99</td>
							<td style="color: green;">Available</td>
							<td>18</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>Beloved</td>
							<td>Toni Morrison</td>
							<td>$18.99</td>
							<td style="color: red;">Unavailable</td>
							<td>0</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>To Kill a Mockingbird</td>
							<td>Harper Lee</td>
							<td>$11.99</td>
							<td style="color: red;">Unavailable</td>
							<td>0</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>The Great Gatsby</td>
							<td>F. Scott Fitzgerald</td>
							<td>$20.99</td>
							<td style="color: green;">Available</td>
							<td>10</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>Lolita</td>
							<td>Vladimir Nabokov</td>
							<td>$17.99</td>
							<td style="color: red;">Unavailable</td>
							<td>0</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>Invisible man</td>
							<td>Ralph Ellison</td>
							<td>$20</td>
							<td style="color: green;">Available</td>
							<td>25</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>One Hundred Years of Solitude</td>
							<td>Gabriel García Márquez</td>
							<td>$13.55</td>
							<td style="color: green;">Available</td>
							<td>36</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>Ulysses</td>
							<td>James Joyce</td>
							<td>$11.20</td>
							<td style="color: green;">Available</td>
							<td>50</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>Don Quixote</td>
							<td>Miguel de Cervantes</td>
							<td>$11.20</td>
							<td style="color: green;">Available</td>
							<td>6</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>The Catcher in the Rye</td>
							<td>J. D. Salinge</td>
							<td>$18.62</td>
							<td style="color: red;">Unavailable</td>
							<td>0</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>To the Lighthouse</td>
							<td>Virginia Woolf</td>
							<td>$14.86</td>
							<td style="color: green;">Available</td>
							<td>29</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>A Light in the Flame: A Flesh and Fire Nove</td>
							<td>Jennifer L. Armentrout</td>
							<td>$13.86</td>
							<td style="color: red;">Unavailable</td>
							<td>0</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>Hamlet</td>
							<td>William Shakespeare</td>
							<td>$70.86</td>
							<td style="color: green;">Available</td>
							<td>3</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>The Lion, The witch and the Wardrobe</td>
							<td>C. S. Lewis</td>
							<td>$25.11</td>
							<td style="color: green;">Available</td>
							<td>17</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>The Color Purple</td>
							<td>Alice Walker</td>
							<td>$18.77</td>
							<td style="color: red;">Unavailable</td>
							<td>0</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>Brave New World</td>
							<td>Vintage Huxley</td>
							<td>$21.99</td>
							<td style="color: green;">Available</td>
							<td>31</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
						<tr>
							<td>The Lord Of the Rings</td>
							<td>J. R. R. Tolkien</td>
							<td>$19.99</td>
							<td style="color: green;">Available</td>
							<td>12</td>
							<td><a class="editanchor" onclick=edit(this)>Edit</a></td>
							<td><a onclick=dlt(this) class="deletebuttonlist">Delete</a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>

	</div>
	<script>
        var btn = document.querySelector(".addbookbutton")
        btn.addEventListener("click", books)
        function books(){
        var transferdata = readdata();
            insertdata(transferdata);
        }
        function readdata() {
        var book = {}
        book["bookname"] = document.querySelector(".newbookname").value;
        book["bookauthor"] = document.querySelector(".newbookauthor").value;
        book["bookprice"] = document.querySelector(".newbookprice").value;
        book["bookavailiblity"] = document.querySelector(".newbookavailibility").value;
        book["bookquantity"] =  document.querySelector(".newbookquantity").value;
        return book;
        }
        function insertdata(x) {
        var table = document.querySelector(".booklist")
        var tr = table.insertRow(table.length);
        var td1 = tr.insertCell(0);
        var td2 = tr.insertCell(1);
        var td3 = tr.insertCell(2);
        var td4 = tr.insertCell(3);
        var td5 = tr.insertCell(4);
        var td6 = tr.insertCell(5);
        var td7 = tr.insertCell(6);
        td1.innerHTML = x.bookname;
        td2.innerHTML = x.bookauthor;
        td3.innerHTML = x.bookprice;
        td4.innerHTML = "<p class='greenjs'>Available</p>";
        td5.innerHTML = x.bookquantity;
        td6.innerHTML = "<a class='editanchor' onclick=edit(this)>Edit</a>";
        td7.innerHTML = "<a onclick=dlt(this) class='deletebuttonlist'>Delete</a>"
}
function edit(y) {
            selectedtr= y.parentElement.parentElement;
            document.querySelector(".newbookname").value=selectedtr.cells[0].innerHTML;
            document.querySelector(".newbookauthor").value=selectedtr.cells[1].innerHTML;
            document.querySelector(".newbookprice").value=selectedtr.cells[2].innerHTML;
            document.querySelector(".newbookavailibility").value=selectedtr.cells[3].innerHTML;
            document.querySelector(".newbookquantity").value=selectedtr.cells[4].innerHTML; 
        }
        function update(){
            selectedtr.cells[0].innerHTML = document.querySelector(".newbookname").value;
            selectedtr.cells[1].innerHTML = document.querySelector(".newbookauthor").value;
            selectedtr.cells[2].innerHTML = document.querySelector(".newbookprice").value;
            selectedtr.cells[3].innerHTML = document.querySelector(".newbookavailibility").value;
            selectedtr.cells[4].innerHTML = document.querySelector(".newbookquantity").value;
        }
function dlt(dl) {
            var deleterow = dl.parentElement.parentElement
            deleterow.remove();
        }
    </script>
	<link rel="stylesheet"
		href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</body>
</html>