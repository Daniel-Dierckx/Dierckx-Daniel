<%--
  Created by IntelliJ IDEA.
  User: Daniel Dierckx
  Date: 16/03/2021
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="domain.db.model.Drank" %>
<%@ page import="java.util.ArrayList" %>
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
<jsp:include page="header.jsp">
    <jsp:param name="actual" value="Overview"/>
</jsp:include>

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
                <td>${drank.drankNaam}
                </td>
                <td>${drank.soort}
                </td>
                <td>${drank.alcohol}
                </td>
                <td>Pas aan
                </td>
                <td><a href="Controller?command=deleteConfirmation&drankNaam=${drank.drankNaam}">Verwijder</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>
