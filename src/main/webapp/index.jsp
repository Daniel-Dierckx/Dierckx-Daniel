
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
    <jsp:param name="actual" value="Home"/>
</jsp:include>

<main id="container">
    <article>
        <h1>Drankhandel Dierckx</h1>
        <p>Welkom bij drankhandel Dierckx. wij hebben een ruim aanbod aan alcoholische dranken. Van Bier tot jenever. Ons bedrijf staat
           bekend voor een vertrouwen en een eerlijke prijs. Ons magazijn staat in in de kempische stad Turnhout.  </p>

        <p>een bestelling kan worden geplaats. bel gerust nummer 0487888989. </p>
    </article>

    <h3>drank met hoogste percentage: ${strongestDrank.drankNaam}
    </h3>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>