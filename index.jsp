<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%> --%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Advance coder</title>
    <script src="https://kit.fontawesome.com/2c263db564.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style1.css">
  </head>
  <body>
    <button id="myBtn" class="scrollbtn" title="Back to Top" ontouchstart="topFunction()" onclick="topFunction()"><i class="fas fa-chevron-up"></i></button>
    <div class="loggin" id="loggin" >
      <h6 onclick="loggin()">
        Log-in
        <i class="fas fa-sign-in-alt"></i>
      </h6>
    </div>
    <section id="op-popup" class="op-popup">
      <div class="form-cont">
        <span class="cancel" onclick="removePopup()">x</span>
        <br>
        <div class="button-cont">
            <form name="f1" method="post" onsubmit="return validate();" action="login.jsp">
<!--          <div class="pass">
            <input type="text" class="user-field " placeholder="Username" name="" value="" name="t1">
                <input type="text" name="t1">
          </div>
          <div class="pass">
            <input type="password" class="pass-field" placeholder="Password" name="" value="" name="t2">
<input type="password" name="t2">
          </div>
          <div class="submit">
            <button type="submit" class="submit-btn" name="button">Log-in</button>
<input type="submit" value="Login">
          </div>-->
<div class="pass">
<input class="user-field " placeholder="UserName" type="text" name="t1">
</div>
<div class="pass">
<input class="user-field" placeholder="Password" type="password" name="t2"><br>
</div>
<div class="submit">
<input type="submit" class="submit-btn" value="Login">
</div>
            </form>
          <div class="fg-pas">
            <a target="_blank" href="#">Forgot Password?</a>
          </div>
        </div>
        <div class="newuser-cont">
          <a href="registration.jsp">
            <button class="register-btn" type="button" name="button">New User? Register here</button>
          </a>
        </div>
      </div>
    </section>
    <div class="first-cont">
      <header>
        <div class="container">
          <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="#">Advance Coder</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-lg-auto">
                <li class="nav-item ">
                  <a class="nav-link" onclick="homeSection()" id="home" href="#">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" onclick="aboutSection()" id="about" href="#">About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" onclick="courseSection()" id="course" href="#">Courses</a>
                </li>
                <li class="nav-item">
                  <div class="nav-link" onclick="myFuction()" id="contact" >Contact</div>
                </li>
              </ul>
            </div>
          </nav>
        </div>
      </header>
      <hr>
    </div>
    <section id="home-cont">
      <div class="main-cont">
        <div class="content">
          <h3>Welcome Coder</h3>
          <p class="text">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, <br>
            sed do eiusmod tempor incididunt ut labore et dolore magna <br>
            aliqua aliqua eiusmod tempor incididunt ut labore et dolore <br>
            magna aliqua aliqua
          </p>
          <div class="num-cont">
            <div class="inp-num">
              <input type="text" placeholder="Enter Number" class="user-input-num" name="" value="">
            </div>
            <div class="subs-cont">
              <button type="button" class="submit-num-btn" name="button">Subscribe</button>
            </div>
          </div>
        </div>
      </div>
    </section>


    <section id="about-cont">
      <h3>Why We?</h3>
      <div class="video-text">
        <div class="ytvideo-cont">
          <iframe width="403" height="227" src="https://www.youtube.com/embed/PVxc5mIHVuQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <div class="about-content">
          <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
            magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
             consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
              Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
             magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
             consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
              Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
        </div>
      </div>
    </section>
    <section id="course-cont">
      <h2 class="cont2-head">Batches</h2>
      <div class="cont2">
        <div class="tgt">
          <div class="icon-cont">
            <i class="fas fa-laptop"></i>
          </div>
          <div class="tgt-cont">
            1 - 8
          </div>
        </div>
        <div class="tgt">
          <div class="icon-cont">
            <i class="fas fa-laptop"></i>
          </div>
          <div class="tgt-cont">
            9 - 12
          </div>
        </div>
        <div class="tgt">
          <div class="icon-cont">
            <i class="fas fa-laptop"></i>
          </div>
          <div class="tgt-cont">
            12 - UG
          </div>
        </div>
      </div>
    </section>

    <section id="contact-cont">
      <h3 style="text-align:center;">Contact us at</h3>
      <div class="cont-info">
        <div class="contact-card">
          <h5 style="margin-left:2%;color:#DC203A">Inquiry Form</h5>
          <input class="space name" placeholder="First Name" type="text" name="" value="">
          <input class="space name" placeholder="Last Name" type="text" name="" value="">
          <br>
          <input class="space mail" placeholder="Mail address" type="mail" name="" value="">
          <textarea class="space message" placeholder="Message" name="name" rows="8" cols="80"></textarea><br>
          <input type="submit" class="msg-sent" name="" value="Send">
        </div>
        <div class="addr-mail">
          <h2 style="text-align:center;">Reach us at:</h2>
          <address class="addr">
            <span class="mail-head">
              Official Address :
            </span>
            <br>
              123 jasra , go front with highway then turn right ,  211011
          </address>
          <div class="mail-addr">
            <span class="mail-head">
              <i class="fas fa-at"></i>
            </span>
            123@advancecoder.com
            <br>
            <span class="mail-head">
              <i class="fas fa-phone-square-alt"></i>
            </span>
            1234567890
          </div>
        </div>
      </div>

    </section>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
      function removePopup() {
        document.getElementById("op-popup").style.display = "none";
      }
      function loggin(){
        document.getElementById("op-popup").style.display = "block";
      }
      function myFunction() {
        var elmnt = document.getElementById("contact-cont");
        elmnt.scrollIntoView();
      }
      window.onscroll = function scrollFunction() {
        var mybutton = document.getElementById("myBtn");
         if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
           mybutton.style.display = "block";
         } else {
           mybutton.style.display = "none";
         }
       }
       function topFunction(){
         document.body.scrollTop = 0;
         document.documentElement.scrollTop = 0;
       }
    </script>
  </body>
</html>
