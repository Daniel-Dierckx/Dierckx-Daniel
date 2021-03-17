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
<main id="container">
    <article>
        <h1>Drankhandel Dierckx</h1>
        <p>Welkom bij drankhandel Dierckx. Wij hebben een ruim aanbod aan alcoholische dranken. Van Bier tot jenever. Ons bedrijf staat
           bekend voor een vertrouwen en een eerlijke prijs. Ons magazijn staat in in de kempische stad Turnhout.  </p>

        <p>een bestelling kan worden geplaats. bel gerust nummer 0487888989. </p>
    </article>

    <h3>drank met hoogste percentage: <%=request.getAttribute("strongestDrank")%>
    </h3>
</main>

<footer>
    <p>©DrankHandel Dierckx</p>
</footer>

</body>
</html>