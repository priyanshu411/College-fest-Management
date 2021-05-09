<%@page import="java.sql.*"%>
<%@page import="databaseConnection.DbConnect"%>
<!--I disable Html error checking for this file-->
<legend>Programs</legend>  
<%
    String event = request.getParameter("event");
    DbConnect db = new DbConnect();
    Connection conn = db.openConnection();
    String query = "select (programName) from program where eventName='" + event + "';";
    ResultSet program = db.getData(conn, query);
    String erNo = (String) session.getAttribute("userName");

%>
<%    while (program.next()) {
        if (db.searchData("Select programName from participate where "
                + "enrollmentNo='" + erNo + "' and programName='" + program.getString("programName") + "';")) {
%> 
<div> <input disabled="true" class="program" type="checkbox" value="<%=program.getString("programName")%>" >* <%=program.getString("programName")%></div>
    <%
    } else {
    %>
<div> <input  class="program" type="checkbox" value="<%=program.getString("programName")%>" ><%=program.getString("programName")%></div>
    <%}
        }

    %>
    <%    conn.close();

    %>

