<%
    String name = (String) session.getAttribute("user");
    String userType = (String) session.getAttribute("type");
    String erNo = (String) session.getAttribute("userName");
    if (name == null && userType == null && erNo == null) {
        response.sendRedirect("login.jsp");
    } else if (userType.equals("student") != true) {
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>Change Password</title>
        <link href="css/changePassword.css" rel="stylesheet" type="text/css"/>
        <link href="css/nav.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="navbar/student_navbar.jsp"%>
        <main>
            <section class="change_pass">
                <h1 class="heading">Change Password</h1>
                <h1 id="msg"></h1>
                <div>
                    <input class="my_input" type="Password" placeholder="Enter Old Password" id="oldpass">
                </div>
                <div>  
                    <input class="my_input" type="password"  placeholder="Enter New Password" id="newpass">
                </div>
                <div>
                    <button onclick="validateCha()" class="sub_btn">Save Changes</button>
                </div>
            </section>
        </main>

     <!--javascript-->
     
     <script src="js/student_chanPass.js" type="text/javascript"></script>
     
    </body>
</html>
