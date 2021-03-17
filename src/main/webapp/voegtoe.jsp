<%--
  Created by IntelliJ IDEA.
  User: Daniel Dierckx
  Date: 21/02/2021
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Overzicht Drankaanbod</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/opmaak.css">

</head>

<body>

<header>
    <nav>
        <ul>


            <li><a href="Controller?command=home">Homepagina</a></li>
            <li><a href="Controller?command=overview">Overzicht</a></li>
            <li><a href="voegtoe.jsp">Voeg Toe</a></li>
            <li><a href="zoekDrank.jsp">zoekDrank</a></li>

        </ul>
    </nav>
</header>

<main id ="container">

    <article id="invulformulier">
        <section id="eigenschappen">
            <form action="Controller?command=add" id="drankeigenschappen"  method="POST" novalidate>

                <label for="drank-naam">Naam:*</label>
                <input id="drank-naam" name="drank-naam" type="text" required>

                <label for="soort">Dranksoort:*</label>
                <select id="soort" name="soort">
                        <option value="0"></option>
                        <option value="Bier">Bier</option>
                        <option value="Wijn">Wijn</option>
                        <option value="Whiskey">Whiskey</option>
                        <option value="Jenever">Jenever</option>
                </select>

                <label for="alcohol">Alcohol %:*</label>
                <input id="alcohol" name="alcohol" type="number" step=".1" min="0" required>

                <input type="submit" value="Submit">


            </form>
        </section>
    </article>


</main>

<footer>
    <p>©DrankHandel Dierckx</p>
</footer>

</body>
</html>
