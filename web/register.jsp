<%@page import="databaseConnection.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/register.css">
        <title>Create account</title>
    </head>

    <body>
        <div id="register_form">
            <div  class="heading">
                <h1>Create Account</h1>
            </div>
            <h1 class="msg" id="message">All fields are required</h1>

            <div class="reg_input">
                <input id="name" type="text" placeholder="Enter Full Name" >
            </div>

            <div class="reg_input">
                <input id="er_no" type="text" placeholder="Enter Enrollment Number">
            </div>

            <div class="reg_input">
                <input id="contact" type="number" placeholder="Enter contact No">
            </div>

            <div class="reg_input">
                <input id="pass" type="password" placeholder="Enter password">
            </div>

            <div class="reg_input">
                <input id="con_pass"  type="password" placeholder="Confirm password">
            </div>
            <div>
                <button class="sub_btn" onclick="validate_reg()"> Submit</button>
            </div>
            <div>
                <a class="login" href="login.jsp">already  have an account?</a>
            </div>

        </div>

        <!--javascript-->
        <script src="js/register.js" type="text/javascript"></script>
    </body>

</html>