<%--
  Created by IntelliJ IDEA.
  User: Daniel Dierckx
  Date: 14/03/2021
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Drankhandel confirm</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/opmaak.css">

</head>
<body class="delete">
<header >
    <nav>
        <ul>
            <li><a href="Controller?command=home">Homepagina</a></li>
            <li><a href="Controller?command=overview">Overzicht</a></li>
            <li><a href="voegtoe.jsp">Voeg Toe</a></li>
            <li><a href="zoekDrank.jsp">zoekDrank</a></li>
        </ul>
    </nav>
</header>

<main class="container">
    <h1>Bevesteging</h1>
    <hr>
    <div class="popup">
        <p>Ben je zeker dat je  <%= request.getParameter("drank-naam") %> wilt verwijderen van de lijst?</p>
        <form action="Controller?command=delete&drank-naam=<%= request.getParameter("drank-naam") %>" method="POST">
            <input type="submit" value="Confirm"/>
        </form>
        <p><a href="Controller?command=overview">Cancel</a> Als je
             <%= request.getParameter("drank-naam") %>
            niet wilt verwijderen van de lijst. </p>
    </div>
</main>

<footer>
    <p>©DrankHandel Dierckx</p>
</footer>

</body>
</html>
