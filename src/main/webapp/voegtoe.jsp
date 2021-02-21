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
    <link rel="stylesheet" href="css/opmaak.css">
    <link rel="stylesheet" href="css/reset.css">
</head>

<body>

<header>
    <nav>
        <ul>


            <li><a href="index.jsp">Homepagina</a></li>
            <li><a href="overzicht.jsp">Overzicht</a></li>
            <li><a href="voegtoe.jsp">Voeg Toe</a></li>

        </ul>
    </nav>
</header>

<main>

    <article id="invulformulier">
        <section id="eigenschappen">
            <form id="drankeigenschappen" action="#" novalidate>
                <ul>
                    <li>
                        <label for="Naam">
                            Naam:*
                            <input id="Naam" type="text" required>
                        </label>
                    </li>
                </ul>


                <li>

                    <label for="dranksoort">Dranksoort:*</label>
                    <select id="dranksoort" name="Dranksoort">
                        <option value="0"></option>
                        <option value="1">Bier</option>
                        <option value="2">Wijn</option>
                        <option value="3">Whiskey</option>
                        <option value="4">jenever</option>


                    </select>
                </li>

                <li>
                    <label for="AlcohoP">
                        Alcohol %:*
                        <input id="AlcohoP" type="number" step=".1" min="0" required>
                    </label>
                </li>

                <li>
                    <input type="submit" value="Verstuur">
                </li>


            </form>
        </section>
    </article>


</main>

<footer>
    <p>©DrankHandel Dierckx</p>
</footer>

</body>
</html>
