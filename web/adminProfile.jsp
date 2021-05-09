<%@page import="java.sql.*"%>
<%@page import="databaseConnection.DbConnect"%>
<%
    String name = (String) session.getAttribute("user");
    String userType = (String) session.getAttribute("type");
    String adminUserName = (String) session.getAttribute("userName");
    if (name == null && userType == null && adminUserName == null) {
        response.sendRedirect("login.jsp");
    } else if (userType.equals("admin") != true) {
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Profile</title>
        <link href="css/adminProfile.css" rel="stylesheet" type="text/css"/>
        <link href="css/nav.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="navbar/admin_navbar.jsp"%>
        <h1 id="detail_heading">Student Participation Detail</h1>
        <div class="select_eve">
            <label for="event">Sort By :</label>
            <select onchange="getList(this.value);" name="program" id="event">
                <!--<option value="All Event">All Event</option>-->
                <%  DbConnect db = new DbConnect();
                    Connection conn = db.openConnection();
                    String query = "select (programName) from program order by programName asc;";
                    ResultSet data = db.getData(conn, query);
                %>
                <%
                    while (data.next()) {
                %>
                <option value="<%=data.getString("programName")%>"><%=data.getString("programName")%></option>
                <%
                    }
                %>
                <%
                    conn.close();
                %>

            </select>
        </div>
        <div id="table">

        </div>

        <!--javascript-->
        <script src="js/adminProfile.js" type="text/javascript"></script>
    </body>
</html>
