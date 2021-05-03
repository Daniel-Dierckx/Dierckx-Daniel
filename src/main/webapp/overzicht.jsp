<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<jsp:include page="header.jsp">
    <jsp:param name="actual" value="Overview"/>
</jsp:include>

<main id="container">
    <h1>Dranklijst</h1>
    <hr>
    <div class="tabel" style="overflow-x: auto">
        <c:choose>
            <c:when test="${not empty drinken}">
                <table>
                    <thead>
                    <tr>
                        <th>Naam</th>
                        <th>Soort</th>
                        <th>Alcohol%</th>
                        <th>Pas aan</th>
                        <th>verwijder</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="drank" items="${drinken}">

                        <tr>
                            <td>${drank.drankNaam}</td>
                            <td>${drank.soort}</td>
                            <td>${drank.alcohol}</td>
                            <td>
                                <a>Pas aan</a>
                            </td>
                            <td>
                                <a href="Controller?command=deleteConfirmation&drankNaam=${drank.drankNaam}">Verwijder</a>
                            </td>
                        </tr>

                    </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p>Er zijn geen dranken in de lijst</p>
            </c:otherwise>
        </c:choose>
    </div>
</main>

<jsp:include page="footer.jsp"/>


</body>
</html>
