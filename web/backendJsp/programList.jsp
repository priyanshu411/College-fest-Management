<%@page import="databaseConnection.DbConnect"%>
<%@page import="java.sql.*"%>
<%
    String eventName = request.getParameter("event");
    String erNo = (String) session.getAttribute("userName");
    DbConnect db = new DbConnect();
    Connection conn = db.openConnection();
    String query = "";
    if (eventName.equals("All Event")) {
        query = "Select programName from participate where enrollmentNo='" + erNo + "';";
    } else {
        query = "Select programName from participate where enrollmentNo='" + erNo + "' and programName in (Select programName from program where eventName='" + eventName + "');";
    }
    ResultSet rs = db.getData(conn, query);
%>

<table>
    <tr>
        <th>SNO</th>
        <th>Program</th>
        <th>Delete</th>
    </tr>
    <%
        int i = 1;
        while (rs.next()) {
    %>
    <tr>
        <td><%=i%></td>
        <td><%=rs.getString("programName")%></td>
        <td><button onclick="deletePrg(this.value)" value="<%=rs.getString("programName")%>" >Delete</button></td>
    </tr>
    <%
            i++;
        }
    %>
    <%
        conn.close();
    %>
</table>
