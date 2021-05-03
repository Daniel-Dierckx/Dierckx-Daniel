<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<jsp:include page="header.jsp">
    <jsp:param name="actual" value="search"/>
</jsp:include>

<main id = "container">
    <c:if test="${not empty errors}">
        <div class="error">
            <c:forEach var="error" items="${errors}">
                <ul>
                    <li>${error}</li>
                </ul>
            </c:forEach>
        </div>
    </c:if>
    <article>
        <h1>Drankhandel Dierckx</h1>

        <form action="Controller?command=search" method="POST" novalidate>
            <p class="groep ${drankNaamClass}">
            <label for="drankNaam">Drank</label>
            <input type="text" id="drankNaam" name="drankNaam" value="${prevdrankNaam}">


            <input type="submit" value="Search">
        </form>

        <c:if test="${not empty prevSearch}">
            <p>de laatset drank die je bezocht was: ${prevSearch}</p>
        </c:if>

    </article>


</main>

<jsp:include page="footer.jsp"/>


</body>
</html>
