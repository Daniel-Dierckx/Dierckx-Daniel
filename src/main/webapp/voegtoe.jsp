<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<jsp:include page="header.jsp">
    <jsp:param name="actual" value="add"/>
</jsp:include>

<main id="container">
    <h1>Titel</h1>
    <div class="Econtainer">
        <c:if test="${not empty errors}">
        <div class="error">
            <c:forEach var="error" items="${errors}">
                <ul>
                    <li>${error}</li>
                </ul>
            </c:forEach>
        </div>
        </c:if>

        <article id="invulformulier">
            <section id="eigenschappen">
                <form action="Controller?command=add" method="POST" novalidate>

                    <p class="groep ${drankNaamClass}">
                        <label for="drankNaam">drank naam*</label>
                        <input type="text" id="drankNaam" name="drankNaam" required>
                    </p>

                    <p class="groep ${soortClass}">
                        <label for="soort">Dranksoort:*</label>
                        <select id="soort" name="soort">
                            <option value="Bier">Bier</option>
                            <option value="Wijn">Wijn</option>
                            <option value="Whiskey">Whiskey</option>
                            <option value="Jenever">Jenever</option>
                        </select>
                    </p>

                    <p class="form-group ${alcoholClass}">
                        <label for="alcohol">Alcohol %:*</label>
                        <input id="alcohol" name="alcohol" type="number" step=".1" min="0"
                               required>

                        <input type="submit" value="Submit">
                </form>
            </section>
        </article>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>
