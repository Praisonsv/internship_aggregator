<!DOCTYPE html>
<%@ page import="com.spring.reckathon.model.Internships" %>
<%@ page import="com.spring.reckathon.model.MyInterns" %>
<%@ page import="java.util.List" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="common.css" rel="stylesheet">
</head>
<body>
    <header>
        <h2>MY INTERNS</h2>
        <a class="logout-button" href="login">Logout</a>
        <nav role="navigation">
            <div id="menuToggle">
                <input type="checkbox" />

            <span></span>
            <span></span>
            <span></span>

            <ul id="menu">
                <a class="profile-button" href="profile">
                    <li><b>UPDATE PROFILE</b></li>
                </a>
                <a class="mybookings-button" href='searchinternship'>
                    <li><b>SEARCH INTERNSHIPS</b></li>
                </a>
            </ul>
        </div>
    </nav>
</header>
<% List<MyInterns> myInternsList = (List<MyInterns>) request.getAttribute("myInternsList");
	List<Internships> internships = (List<Internships>) request.getAttribute("internships");
    List<String> companyNames = (List<String>) request.getAttribute("companyNames");
    %>

<table>
    <% for (int i = 0; i < internships.size(); i++) {
    	MyInterns intern = myInternsList.get(i);
        Internships internship = internships.get(i);
        String companyName = companyNames.get(i);
        %>
        <tr>
            <td>
            	<b>Email ID:</b> <%= intern.getEmail() %><br>
                <b>Company ID:</b> <%= internship.getCompanyID() %><br>
                <b>Company Name:</b> <%= companyName %><br>
                <b>Title:</b> <%= internship.getTitle() %><br>
                <b>Description:</b> <%= internship.getDescription() %><br>
                <b>Requirements:</b> <%= internship.getRequirements() %><br>
                <b>Stipend:</b> <%= internship.getStipend() %><br>
                <b>Location:</b> <%= internship.getLocation() %><br>
            </td>
        </tr>
    <% } %>
</table>
</body>
</html>