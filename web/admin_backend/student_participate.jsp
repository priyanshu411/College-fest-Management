<%@page import="databaseConnection.DbConnect"%>
<%@page import="java.sql.*"%>
<%
    String programName = request.getParameter("event");
    DbConnect db = new DbConnect();
    Connection conn = db.openConnection();
    String query ="select name,contactNo from student where enrollmentNo in (select enrollmentNo from participate where programName='"+programName +"')";
    
    ResultSet rs = db.getData(conn, query);
%>
<table>
    <tr>
        <th>SNO</th>
        <th>Student Name</th>
        <th>contact No</th>
    </tr>
    <%
        int i = 1;
        while (rs.next()) {
    %>
    <tr>
        <td><%=i%></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("contactNo")%></td>
    </tr>
    <%
            i++;
        }
    %>
    <%
        conn.close();
    %>
</table>