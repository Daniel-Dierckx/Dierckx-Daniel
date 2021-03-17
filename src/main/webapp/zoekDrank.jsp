<%--
  Created by IntelliJ IDEA.
  User: Daniel Dierckx
  Date: 14/03/2021
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DrankHandel Dierckx</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/opmaak.css">

</head>
<body>
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
<main id = "container">
    <article>
        <h1>Drankhandel Dierckx</h1>

        <form action="Controller?command=search" method="POST" novalidate>
            <label for="drank-naam">Drank</label>
            <input type="text" id="drank-naam" name="drank-naam">


            <input type="submit" value="Search">
        </form>


    </article>


</main>

<footer>
    <p>©DrankHandel Dierckx</p>
</footer>

</body>
</html>
