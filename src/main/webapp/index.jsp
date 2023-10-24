<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookstore</title>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="Images/mainlogo.png" type="image/x-icon">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>
<body>
    <div class="root">
        <div class="container">
            <!-- Pre loader -->
                <div id="preloader"></div>
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
                    <a href="#hm">
                        <li>Home</li>
                    </a>
                    <a href="#rcmnd">
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
            <!-- ------- -->
            <!-- header books container-->
            <div class="bookscontainer">
                <div class="bookscontaineritems">
                    <img src="Images/catch22.jpg" alt="" class="bookscontainerimageslider">
                    <div class="bookscontainerdescpriton">
                        <b>Catch-22</b>
                        <p>By Joseph Heller</p>
                        <p>Centres on Captain John Yossarian, an American bombardier stationed on a Mediterranean island during World War II.</p>    
                        <button>See book</button>
                    </div>
                </div>
                <div class="bookscontaineritems">
                    <img src="Images/beloved.jpg" alt="" class="bookscontainerimageslider">
                    <div class="bookscontainerdescpriton">
                        <b>Beloved</b>
                        <p>By Toni Morrison</p>
                        <p>Examines the destructive legacy of slavery as it chronicles the life of a Black woman named Sethe, from her pre-Civil War days as a slave.</p>
                        <button>See book</button>
                    </div>
                </div>
                <div class="bookscontaineritems">
                    <img src="Images/tkamb.jpg" alt="" class="bookscontainerimageslider">
                    <div class="bookscontainerdescpriton">
                        <b>To Kill a Mockingbird</b>
                        <p>By Harper Lee</p>
                        <p>A young girl's coming-of-age story and a darker drama about the roots and consequences of racism and prejudice.</p>
                        <button>See book</button>
                    </div>
                </div>
                <div class="bookscontaineritems">
                    <img src="Images/the great gatsby.jpg" alt="" class="bookscontainerimageslider">
                    <div class="bookscontainerdescpriton">
                        <b>The Great Gatsby</b>
                        <p>By F. Scott Fitzgerald</p>
                        <p>Tragic story of Jay Gatsby, a self-made millionaire, and his pursuit of Daisy Buchanan, a wealthy young woman.</p>
                        <button>See book</button>
                    </div>
                </div>
                <div class="bookscontaineritems">
                    <img src="Images/lolita.jpg" alt="" class="bookscontainerimageslider">
                    <div class="bookscontainerdescpriton">
                        <b>Lolita</b>
                        <p>By Vladimir Nabokov</p>
                        <p>Middle-aged literature professor, sexually obsessed with pre-pubescent girls, and his perverse and destructive relationship.</p>
                        <button>See book</button>
                    </div>
                </div>
                <div class="bookscontaineritems">
                    <img src="Images/invisibleman.jpg" alt="" class="bookscontainerimageslider">
                    <div class="bookscontainerdescpriton">    
                        <b>Invisible Man</b>
                        <p>By Ralph Ellison</p>
                        <p>A young, college-educated black man struggling to survive and succeed in a racially divided society that refuses to see him as a human being.</p>
                        <button>See book</button>
                    </div>
                </div>
            </div>
            <!-- ------- -->
            <div class="mainpage">
                <!--main page header-->
                <div class="mainpageheader">
                    <ul class="mainpageheaderul">
                        <a href="#bsb">
                            <li>Best selling books</li>
                        </a>
                        <a href="#nac">
                            <li>New arrival</li>
                        </a>
                        <a href="#rcmnd">
                            <li>Our recommendation</li>
                        </a>
                        <a href="#dealstitlecontainer">
                            <li>Deals</li>
                        </a>
                        <a href="#ebook">
                            <li>E-books</li>
                        </a>
                    </ul>
                </div>
                <!-- ------- -->
                <!-- Best selling books -->
                <h2 class="bsbtitle" id="bsb">Best selling books</h2>
                <div class="bestsellingbookscontainer" >
                    <div class="bestsellingbooksitems">
                        <img src="Images/ohyos.jpg" alt="">
                        <hr>
                        <h3 style="color: black;">One Hundred Years of Solitude</h3>
                        <p>By Gabriel García Márquez</p>
                        <p>$13.55</p>
                    </div>
                    <div class="bestsellingbooksitems">
                        <img src="Images/Ulysses.jpg" alt="">
                        <hr>
                        <h3 style="color: black;">Ulysses</h3>
                        <p>By James Joyce</p>
                        <p>$11.20</p>
                    </div>
                    <div class="bestsellingbooksitems">
                        <img src="Images/Don Quixote.jpg" alt="">
                        <hr>
                        <h3 style="color: black;">Don Quixote</h3>
                        <p>By Miguel de Cervantes</p>
                        <p>$9.09</p>
                    </div>
                    <div class="bestsellingbooksitems">
                        <img src="Images/tctir.jpg" alt="">
                        <hr>
                        <h3 style="color: black;">The Catcher in the Rye</h3>
                        <p>By J. D. Salinge</p>
                        <p>$18.62</p>
                    </div>
                    <div class="bestsellingbooksitems">
                        <img src="Images/to the lighthouse.jpg" alt="">
                        <hr>
                        <h3 style="color: black;">To the Lighthouse</h3>
                        <p>By Virginia Woolf</p>
                        <p>$14.86</p>
                    </div>
                </div>
                <!-- ------- -->
                <!-- 3 Icons -->
                <div class="threeiconscontainer" data-aos="fade-up" data-aos-delay="350">
                    <div class="threeiconsitems">
                        <img src="Images/searchbooksecondicon.png" alt="">
                        <h3 class="iconsheader3">Research book</h3>
                        <p class="iconsparagraph">Scientific and accurate.</p>
                    </div>
                    <div class="threeiconsitems">
                        <img src="Images/bookfirsticon.png" alt="">
                        <h3 class="iconsheader3">Thousands of books</h3>
                        <p class="iconsparagraph">Available 24/7.</p>
                    </div>
                    <div class="threeiconsitems">
                        <img src="Images/ebookicon.png" alt="">
                        <h3 class="iconsheader3">Search in seconds</h3>
                        <p class="iconsparagraph">Read anytime, anywhere</p>
                    </div>
                </div>
                <!-- ------- -->
                <!-- New arrival -->
                <div class="newarrivalscontainer" id="nac">
                    <div class="newarrivalitem">
                        <img src="Images/lightintheflame.jpg" alt="">
                        <h1 style="font-size:28px">A Light in the Flame: A Flesh and Fire Novel</h1>
                        <p >By Jennifer L. Armentrout</p>
                        <h2>November 15, 2022</h2>
                        <b>New !</b>
                        <button>Buy book</button>
                    </div>
                </div>
                <!-- ------- -->
                <!-- Our recommendations -->
                <div>
                    <h1 class="recommendationtitle"></h1>
                </div>
                <div class="recommendationcontainer" id="rcmnd">
                    <h1 class="recommendationtitlee">Our Recommendation</h1>
                    <div class="recommendationcontaineritem" data-aos="fade-right" data-aos-delay="350">
                        <h3>Hamlet</h3>
                        <b style="color: white;">By William Shakespeare</b>
                        <p>It is the story of Hamlet, the Prince of Denmark who learns of the death of his father at the hands of his uncle, Claudius. Claudius murders Hamlet's father, his own brother, to take the throne of Denmark and to marry Hamlet's widowed mother.</p>
                        <button class="seemorerec">See more</button>
                        <button class="buynowrec">Buy now</button>
                    </div>
                    <div class="hamletbook" data-aos="fade-left" data-aos-delay="350">
                        <img src="Images/Hamlet.png" alt="">
                    </div>
                </div>
                <!-- ------- -->
                <!-- Deals container -->
                <h1 id="dealstitlecontainer">Deals of the week</h1>
                <div class="dealscontainer">
                    <div class="dealscontaineritems">
                        <img src="Images/lion.jpg" alt="" class="dealsbookitems">
                        <div class="bookdealdesc" id="bookdealone" style="top:375%">
                        <h3>The Lion, the Witch and the Wardrobe</h3>
                        <p>By C. S. Lewis</p>
                        <p>During the World War II bombings of London, four English siblings are sent to a country house where they will be safe.</p>
                    </div>
                    <img src="Images/bestdeal.png" alt="" class="bestdealicon" id="bestdealiconone" style="top: 365%;left: 15%">
                    </div>
                    <div class="dealscontaineritems">
                        <img src="Images/thecolorpurple.jpg" alt="" class="dealsbookitems">
                        <div class="bookdealdesc" id="bookdealtwo">
                            <h3>The Color Purple</h3>
                            <p>By Alice Walker</p>
                            <p>The Color Purple documents the traumas and gradual triumph of Celie, an African American teenager raised in rural isolation in Georgia.</p>
                        </div>
                        <img src="Images/bestdeal.png" alt="" class="bestdealicon" id="bestdealicontwo"  style="top: 365%;left: 44%">
                    </div>
                    <div class="dealscontaineritems">
                        <img src="Images/bravenewwordl.jpg" alt="" class="dealsbookitems">
                        <div class="bookdealdesc" id="bookdealthree">
                            <h3>Brave New World</h3>
                            <p>By Aldous Huxley</p>
                            <p>Brave New World is a dystopian novel by English author Aldous Huxley, written in 1931 and published in 1932.</p>
                        </div>
                        <img src="Images/bestdeal.png" alt="" class="bestdealicon" id="bestdealiconthree"  style="top: 365%;left: 72%">
                    </div>
                </div>
                <!-- ------- -->
                <!-- ebooks container -->
                <div class="ebookscontainer" id="ebook" >
                    <div class="ebookitem">
                        <div class="ebookdescp">
                            <h1>Read anytime, Anywhere</h1>
                            <p>Every month readers want a new book, but without the hassle of sorting through the thousands of available titles. We help you spend more time reading by choosing books that match your reading style.</p>
                        </div>
                        <div class="ebookpictures">
                            <img src="Images/lordoftherings.jpg" alt="" class="ebook1984" style="top:442%; right:21%;">
                            <img src="Images/iphoneframe.png" alt="" class="iphoneframe">
                        </div>
                    </div>
                    <small style="color: white;">@ Hypex All rights reserved. 2022.</small>
                </div>
                <!-- ------- -->
                <a href="#mainheader">
                    <img src="Images/toparrow.png" alt="" class="toparrow">
                </a>
            </div>
        </div>
    </div>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="index.js"></script>
</body>
</html>