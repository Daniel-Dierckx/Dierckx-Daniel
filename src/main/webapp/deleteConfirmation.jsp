<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Drankhandel confirm</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/opmaak.css">

</head>
<body class="delete">

<jsp:include page="header.jsp"/>

<main class="container">
    <h1>Bevesteging</h1>
    <hr>
    <div class="popup">
        <p>Ben je zeker dat je ${param.drankNaam} wilt verwijderen van de lijst?</p>
        <form action="Controller?command=delete&drankNaam=${param.drankNaam}" method="POST">
            <input type="submit" value="Confirm"/>
        </form>
        <p><a href="Controller?command=overview">Cancel</a> Als je
            ${param.drankNaam}
            niet wilt verwijderen van de lijst. </p>
    </div>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>
