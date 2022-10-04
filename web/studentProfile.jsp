<%
    String name = (String) session.getAttribute("user");
    String userType = (String) session.getAttribute("type");
    String erNo = (String) session.getAttribute("userName");
    if (name == null && userType == null && erNo == null)
    {
        response.sendRedirect("login.jsp");
    }
    else if (userType.equals("student") != true)
    {
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="databaseConnection.DbConnect"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Profile</title>
        <link href="css/studentProfile.css" rel="stylesheet" type="text/css"/>
        <link href="css/nav.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="navbar/student_navbar.jsp"%>
        <h1 id="detail_heading">Program List</h1>
        <div class="select_eve">
            <label for="event">Sort By :</label>
            <select onchange="getList(this.value);" name="program" id="event">
                <option value="All Event">All Event</option>
                <%  DbConnect db = new DbConnect();
                    Connection conn = db.openConnection();
                    String query = "select (eventName) from event order by eventName asc;";
                    ResultSet data = db.getData(conn, query);
                %>
                <%
                    while (data.next())
                    {
                %>
                <option value="<%=data.getString("eventName")%>"><%=data.getString("eventName")%></option>
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

        <script src="js/studentProfile.js" type="text/javascript"></script>
    </body>
</html>