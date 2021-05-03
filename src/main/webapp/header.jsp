<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <nav>
        <ul>
            <li>
                <a ${param.actual eq 'Home'?'class="active"':""} href="Controller?command=home">Homepagina</a>
            </li>
            <li>
                <a ${param.actual eq 'Overview'?'class="active"':""} href="Controller?command=overview">Overzicht</a>
            </li>
            <li>
                <a ${param.actual eq 'Add'?'class="active"':""} href="Controller?command=getAdd">Voeg Toe</a>
            </li>
            <li>
                <a ${param.actual eq 'Search'?'class="active"':""} href="Controller?command=getSearch">zoekDrank</a>
            </li>
        </ul>
    </nav>
</header>
