<!DOCTYPE HTML>
<!--
	Retrospect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
    <title>Promos x Puntos - Modulo de Cliente</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <asset:stylesheet src="template.css"/>
</head>
<body>

<!-- Header -->
<header id="header">
    <h1><a href="">Promos x Puntos</a></h1>
    <a>${session.customer.nickname}</a>
    <a href="#nav">Menu</a>
</header>

<!-- Nav -->
<nav id="nav">
    <ul class="links">
        <li><a href="${createLink(controller:'customer', action:'logOut')}" class="button special">Cerrar Sesion</a></li>
        <li><a href="/promosxpuntosapp/profileCustomer/createEstablishment">Crear establecimiento</a></li>
        <li><a href="#">Listar establecimientos</a></li>
    </ul>
</nav>

<!-- Main -->
<section id="main" class="wrapper">
    <div class="container">

        <header class="major special">
            <h2>Bienvenido</h2>
            <p> ${session.customer.name}</p>
            <g:uploadForm controller="customer" action="logOut" method="post">
                <ul class="actions">
                    <a href="/promosxpuntosapp/profileCustomer/createEstablishment" class="button special">Crear establecimiento</a>
                    <a href="${createLink(controller:'customer', action:'establecimientos', params:[nickname:session.customer?.nickname])}" class="button special">Listar establecimientos</a>
                    <g:submitButton name="summit" type="submit" value="Cerrar Sesión" class="special" tabindex="-1"></g:submitButton>
                </ul>
            </g:uploadForm>
        </header>


        <h2>Datos de Usuario</h2>
        <span class="image right">
            <img src="${createLink(controller:'customer', action:'displayPicture', params: [nickname:session.customer.nickname])}" width="150px" height="200px" class="rigth">
        </span>
        <div class="table-wrapper">
            <table>
                <tr><th> NIT:</th> <th>${session.customer.identification}</th></tr>
                <tr><th> Nombres:</th> <th>${session.customer.name}</th></tr>
                <tr><th> Correo electrónico:</th> <th>${session.customer.email}</th></tr>
                <tr><th> Nombre de usuario de cliente:</th> <th>${session.customer.nickname}</th></tr>
            </table>
        </div>
    </div>
</section>

<!-- Footer -->
<footer id="footer">
    <div class="inner">
        <ul class="icons">
            <li><a href="#" class="icon fa-facebook">
                <span class="label">Facebook</span>
            </a></li>
            <li><a href="#" class="icon fa-twitter">
                <span class="label">Twitter</span>
            </a></li>
            <li><a href="#" class="icon fa-instagram">
                <span class="label">Instagram</span>
            </a></li>
            <li><a href="#" class="icon fa-linkedin">
                <span class="label">LinkedIn</span>
            </a></li>
        </ul>
        <ul class="copyright">
            <li>&copy; PromosXPuntos.</li>
            <li>IngeSoft II.</li>
            <li>Unal.edu.co.</li>
        </ul>
    </div>
</footer>

<!-- Scripts -->
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="skel.min.js"/>
<asset:javascript src="util.js"/>
<asset:javascript src="main.js"/>

</body>
</html>