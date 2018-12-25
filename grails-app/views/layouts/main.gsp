<!doctype html>
<html lang="pt_br" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Inicio"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link href="https://fonts.googleapis.com/css?family=Fredoka+One" rel="stylesheet">
    <asset:link rel="icon" href="favicon.png" type="image/x-ico"/>
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="cubeportfolio.css"/>
    <asset:stylesheet src="ihover.css"/>
    <asset:stylesheet src="photostack.css"/>
    <asset:stylesheet src="superslides.css"/>
    <asset:stylesheet src="fullpage-menu.css"/>
    <asset:stylesheet src="ionicons/css/ionicons.min.css"/>
    <asset:stylesheet src="venobox/venobox.css"/>
    <asset:stylesheet src="owlcarousel/assets/owl.carousel.min.css"/>
    <asset:stylesheet src="owlcarousel/assets/owl.theme.default.min.css"/>
    <asset:stylesheet src="owlcarousel/assets/owl.theme.green.min.css"/>
    <asset:stylesheet src="vendors/themify-icons/css/themify-icons.css"/>
    <asset:stylesheet src="vendors/flag-icon-css/css/flag-icon.min.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="css/style.css"/>
    <asset:stylesheet src="layout.css"/>
    <g:layoutHead/>
</head>

<body>
<header>
    <div class="container-fluid">
        <table class="table-condensed login pull-right">
            <tr>
                <td>
                    <g:link controller="Cliente" action="login"><button type="button"
                                                                        class="btn btn-outline-primary btn-lg">Entrar</button></g:link>
                </td>
                <td>
                    <g:link controller="Cliente" action="cadastro"><button type="button"
                                                                           class="btn btn-outline-primary btn-lg">Cadastrar-se</button></g:link>
                </td>
            </tr>
        </table>
    </div>
    <asset:image src="Logo.png" id="logo"/>
    <g:render template="/layouts/menu"/>
</header>

<g:layoutBody/>

<footer>
    <div class="container centered ptb">
        <div class="col-md-6 col-md-offset-3">
            <h3>CARIBEAN</h3>

            <p class="branco">O nosso hotel sempre estará<br/> de portas abertas para você!</p>

            <p class="mt">
                <a href="#"><i class="fa fa-dribbble"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
            </p>

            <p class="branco">Copyright &copy; - <strong>Caribean</strong> Todos os direitos reservados.</p>

            <div class="credits">
                <span class="branco">Criado com template Polaroyd feito por <a href="https://templatemag.com/">
                </span>TemplateMag</a>
            </div>
        </div>
    </div>

</footer>
<asset:javascript src="jquery-3.3.1.js"/>
<asset:javascript src="interatividade.js"/> <asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="wow.min.js"/>
<asset:javascript src="venobox.min.js"/>
<asset:javascript src="superfish.min.js"/>
<asset:javascript src="owl.carousel.min.js"/>

<!-- JavaScript Libraries -->
<asset:javascript src="modernizr.min.js"/>
<asset:javascript src="validate.js"/>
<asset:javascript src="easing.min.js"/>
<asset:javascript src="cubeportfolio.js"/>
<asset:javascript src="classie.js"/>
<asset:javascript src="fullpage-menu.js"/>
<asset:javascript src="photostack.js"/>
<asset:javascript src="superslides.js"/>

<!-- Outros-->
<asset:javascript src="anime.js"/>
<asset:javascript src="bounce.js"/>

<!-- Template Main Javascript File -->
<asset:javascript src="main.js"/>
<asset:javascript src="main2.js"/>

</body>
</html>
