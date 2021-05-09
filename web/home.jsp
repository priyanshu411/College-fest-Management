<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <link rel="stylesheet" href="css/home.css">
        <title>College Fest</title>
    </head>

    <body>
        <!-- navbar start -->
        <nav class="navbar">
            <div class="logo">
                <img  src="images/logo.png" alt="logo">
            </div>
            <div class="menu">
                <ul>
                    <li><a href="#">home</a></li>
                    <li><a href="#all-event">events</a></li>
                    <li><a href="#sponser">our sponser</a></li>
                    <li><a href="#contact-about">contact us</a></li>
                    <li><a href="#contact-about">About</a></li>
                </ul>
            </div>
        </nav>
        <!-- navbar end -->

        <!-- main section start -->
        <section id="main">
            <div id="animate">
                <span id="text_animation"></span>
                <span id="cursor">|</span>
            </div>
            <p class="detail_para">
                Welcome to a colorful and memorable Fest was organized in our College.In this fest, many students took part.
                There was singing, dancing, poetry and many sports like racing,Badminton,Chess,Table tennis.Enjoy the fest with friends and win prizes
            </p>
            <div class="entry_btn">
                <ul>
                    <li><a href="login.jsp" target="_blank">login</a></li>
                    <li><a href="register.jsp" target="_blank">register now</a></li>
                </ul>
            </div>
        </section>
        <!-- main section end -->

        <!--event  section start -->
        <section id="all-event">
            <h1 class="heading">events</h1>
            <div class="event-container">
                <div class="event">
                    <h1 class="heading">sports</h1>
                    <img class="event-img" src="images/sports.png" alt="sports">
                    <ul>
                        <li>race(100m)</li>
                        <li>race(200m)</li>
                        <li>Badminton</li>
                        <li>Chess</li>
                        <li>Table tennis</li>
                    </ul>
                </div>
                <div class="event">
                    <h1 class="heading">cultural</h1>
                    <img class="event-img" src="images/dance.png" alt="">
                    <ul>
                        <li>Dance</li>
                        <li>Poetry slams</li>
                        <li>Singing</li>
                    </ul>
                </div>
                <div class="event">
                    <h1 class="heading">technical</h1>
                    <img class="event-img" src="images/coding.png" alt="technical">
                    <ul>
                        <li>Coding</li>
                        <li>Group Discussion</li>
                        <li>Penetration Testing</li>
                        <li>Quiz</li>
                        <li>Tech Project</li>
                    </ul>
                </div>
                <div class="event">
                    <h1 class="heading">other</h1>
                    <img class="event-img" src="images/dance.png" alt="other">
                    <ul>
                        <li>Art exhibition</li>
                        <li>painting</li>
                        <li>Rangoli</li>
                        <li>Sketching</li>
                    </ul>
                </div>
            </div>
        </section>
        <!--event  section end -->

        <!--guest section start -->

        <section id="sponser">

            <h1 class="heading">sponser</h1>
            <div class="sponserlist">
                <div class="sponser-img" >
                    <img src="images/cs.png" alt="other">
                    <h2>CsOnline.com</h2>
                </div>
                <div class="sponser-img" >
                    <img src="images/bisleri.png" alt="other">
                    <h2>Bisleri is veri veri extraordinari</h2>
                </div>
                <div class="sponser-img" >
                    <img  src="images/pepsi.png" alt="other">
                    <h2>Pepsi "That's What I Like”</h2>
                </div>
            </div>
        </section>

        <!--guest  section end -->

        <!--contact-about  section start -->

        <section id="contact-about">
            <div class="about">
                <h1 class="con-abh1">About</h1>
                <div class="detail">
                    <div class="logo">
                        <img  src="images/logo.png" alt="logo">
                    </div>
                    <h1>TSUNAMI 2021</h1>
                    <h1><a href="register.jsp" target="_blank">Register Here</a></h1>
                    <h1>College :Engineering college of Indore, Khandwa Road, Indore, Madhya Pradesh 452001</h1>
                    <h1>Phone : 0731 342 8158</h1>
                </div>
                <div class="links">
                    <a href="#"><img src="./images/instagram.png" alt=""></a>
                    <a href="#"> <img src="./images/facebook.png" alt=""></a>
                    <a href="#"><img src="./images/youtube.png" alt=""></a>
                </div>
            </div>

            <div class="contact">
                <h1 class="con-abh1">Contact</h1>
                <form action="#">
                    <div class="inputs">
                        <input type="text" placeholder="Enter your Name">
                    </div>
                    <div class="inputs">
                        <input type="email" placeholder="Enter your Email">
                    </div>
                    <div class="inputs">
                        <input type="number" placeholder="enter your Contact No">
                    </div>
                    <div class="inputs">
                        <textarea  cols="30" rows="10" placeholder="Message"></textarea>
                    </div>
                    <div id="btn">
                        <input type="Submit">
                    </div>
                </form>

            </div>
        </section>

        <!--contact-about  section end -->

        <!-- footer  -->
        <footer>
            <div id="footer_box">
                Copyright &copy; www.Tsunami2021.com All rights reserved!
            </div>
        </footer>

        <!-- add javascript file -->
        <script src="js/home.js"></script> 
    </body>

</html>
