<%--
  Created by IntelliJ IDEA.
  User: Daniel Dierckx
  Date: 16/03/2021
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="domain.db.model.Drank" %>
<%@ page import="java.util.ArrayList" %>
<%ArrayList<Drank> drankList = (ArrayList<Drank>) request.getAttribute("drinken");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Drank drank = (Drank) request.getAttribute("drank"); %>
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

<main class="container">
    <article >
        <p class="vraagnaar">Dit zijn de gegevens waar u naar vroeg. </p>
    </article>
    <div id="tabel" >
        <table>
            <thead>
            <tr>
                <th>Drank</th>
                <th>Soort</th>
                <th>Alcohol %</th>
                <th>Pas aan</th>
                <th>Verwijder</th>
            </tr>
            </thead>
            <tbody>

            <tr>
                <td><%=drank.getDrankNaam()%>
                </td>
                <td><%=drank.getSoort()%>
                </td>
                <td><%=drank.getAlcohol()%>
                </td>
                <td>Pas aan
                </td>
                <td><a href="Controller?command=deleteConfirmation&drank-naam=<%=drank.getDrankNaam()%>">Verwijder</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</main>

<footer>
    <p>©DrankHandel Dierckx</p>
</footer>


</body>
</html>
