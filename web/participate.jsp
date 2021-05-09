<%@page import="java.sql.*"%>
<%@page import="databaseConnection.DbConnect"%>
<%
    String name = (String) session.getAttribute("user");
    String userType = (String) session.getAttribute("type");
    if (name == null && userType == null) {
        response.sendRedirect("login.jsp");
    } else if (userType.equals("student") != true) {
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Participate</title>
        <link href="css/participate.css" rel="stylesheet" type="text/css"/>       
        <link href="css/nav.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="navbar/student_navbar.jsp"%>
        <main>
            <div class="entry">
                <h1 class="heading">Participate</h1>
                <h1 id="message"></h1>
                <div class="select_eve">
                    <label for="event">Event :</label>
                    <select onchange="getProgram(this.value)" name="program" id="event">
                        <option value="Select Event">Select Event</option>
                        <%  DbConnect db = new DbConnect();
                            Connection conn = db.openConnection();
                            String query = "select (eventName) from event order by eventName asc;";
                            ResultSet data = db.getData(conn, query);
                        %>
                        <%
                            while (data.next()) {
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
                <fieldset id="program">      
                    <legend>Programs</legend>      

                </fieldset> 
                <div>
                    <button id="sub_btn" onclick="validate()">Submit</button>
                </div>
            </div>
        </main>

        <!--javascript-->

        <script src="js/participate.js" type="text/javascript"></script>

    </body>
</html>