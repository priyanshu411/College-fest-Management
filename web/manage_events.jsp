<%@page import="java.sql.*"%>
<%@page import="databaseConnection.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Manage Events</title>
        <link href="css/manageEvents.css" rel="stylesheet" type="text/css"/>
        <link href="css/nav.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="navbar/admin_navbar.jsp"%>
        <main>

            <!-- add programs -->
            <section class="manage">
                <h1 class="heading">Add programs</h1>
                <h1 class="msg" id="msgprg" ></h1>
                <div class="select_eve">
                    <label class="my_lable" for="event">Event :</label>
                    <select name="program" id="event">
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
                <div>
                    <label class="my_lable" for="programName_1">Program :</label>
                    <input class="my_input" type="text" placeholder="Program Name" id="programName_1">
                </div>
                <div>
                    <button class="sub_btn" onclick="validate_addprg()" >Submit</button>
                </div>
            </section>

            <!-- add events -->
            <section class="manage">
                <h1 class="heading">Add Events</h1>
                <h1 class="msg" id="msgevent" ></h1>
                <div>
                    <label class="my_lable" for="eventName">Event :</label>
                    <input class="my_input" type="text" placeholder="Event Name" id="eventName">
                </div>
                <div>
                    <label class="my_lable" for="eventDate">Event Date :</label>
                    <input class="my_input" type="date" id="eventDate">
                </div>
<!--                <div>
                    <label class="my_lable" for="programName_2">Program :</label>
                    <input class="my_input" type="text" placeholder="Add at least 1 program" id="programName_2">
                </div>-->
                <div>
                    <button onclick="validate_addevent()" class="sub_btn">Submit</button>
                </div>
            </section>
        </main>
    </body>

    <!--javascript-->
    
    <script src="js/manage_event.js" type="text/javascript"></script>
</html>
