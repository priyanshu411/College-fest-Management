<nav class="navbar">
    <div class="logo">
        <img  src="images/logo.png" alt="tsunami">
    </div>
    <div class="menu">
        <ul>
            <li><a href="adminProfile.jsp">Profile</a></li>
            <li><a href="manage_events.jsp">Manage Events</a></li>
            <li><a href="admin_chaPass.jsp">Change Password</a></li>
            <li><a href="home.jsp">home</a></li>
        </ul>
    </div>
    <div class="profile">
        <%
            String adminName = (String) session.getAttribute("user");
//                    String adminUserName = (String) session.getAttribute("userName");
        %>
        <h1 id="name"><%=adminName%></h1>
        <div id="logout">
            <a href="backendJsp/logout.jsp">Logout</a>
        </div>
    </div>
</nav>
