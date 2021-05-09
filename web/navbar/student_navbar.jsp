<nav class="navbar">
    <div class="logo">
        <img  src="images/logo.png" alt="tsunami">
    </div>
    <div class="menu">
        <ul>
            <li><a href="studentProfile.jsp">Profile</a></li>
            <li><a href="participate.jsp">Participate</a></li>
            <li><a href="student_chaPass.jsp">Change Password</a></li>
            <li><a href="home.jsp">home</a></li>
        </ul>
    </div>
    <div class="profile">
        <%
            String StudentName = (String) session.getAttribute("user");
            //            String erNo = (String) session.getAttribute("userName");
%>
        <h1 id="name"><%=StudentName%></h1>
        <div id="logout">
            <a href="backendJsp/logout.jsp">Logout</a>
        </div>
    </div>
</nav>
