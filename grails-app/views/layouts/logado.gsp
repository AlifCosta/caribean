<!doctype html>
<html lang="pt_br" class="no-js">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Inicio"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.png" type="image/x-ico"/>

    <asset:stylesheet src="vendors/bootstrap/dist/css/bootstrap.min.css"/>
    <asset:stylesheet src="vendors/font-awesome/css/font-awesome.min.css"/>
    <asset:stylesheet src="vendors/themify-icons/css/themify-icons.css"/>
    <asset:stylesheet src="vendors/flag-icon-css/css/flag-icon.min.css"/>
    <asset:stylesheet src="vendors/selectFX/css/cs-skin-elastic.css"/>
    <asset:stylesheet src="vendors/jqvmap/dist/jqvmap.min.css"/>
    <asset:stylesheet src="css/style.css"/>

    <!--Outro -->
    <!-- Favicons -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
          rel="stylesheet">

    <!-- Libraries CSS Files -->
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="venobox/venobox.css"/>
    <asset:stylesheet src="owlcarousel/assets/owl.carousel.min.css"/>

    <!-- Main Stylesheet File -->
    <asset:stylesheet src="css/style2.css"/>

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    <style type="text/css">/* Chart.js */
    @-webkit-keyframes chartjs-render-animation {
        from {
            opacity: 0.99
        }
        to {
            opacity: 1
        }
    }

    @keyframes chartjs-render-animation {
        from {
            opacity: 0.99
        }
        to {
            opacity: 1
        }
    }

    .chartjs-render-monitor {
        -webkit-animation: chartjs-render-animation 0.001s;
        animation: chartjs-render-animation 0.001s;
    }</style>

    <g:layoutHead/>
</head>

<body>
<g:render template="/layouts/painelLateral"/>
<!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">

    <!-- Header-->
    <header id="header" class="header">

        <div class="header-menu">

            <div class="col-sm-7">
                <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>

                <div class="header-left">
                    <button class="search-trigger"><i class="fa fa-search"></i></button>

                    <div class="form-inline">
                        <form class="search-form">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search ..."
                                   aria-label="Search">
                            <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                        </form>
                    </div>

                    <div class="dropdown for-notification">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="notification"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-bell"></i>
                            <span class="count bg-danger">5</span>
                        </button>

                        <div class="dropdown-menu" aria-labelledby="notification">
                            <p class="red">You have 3 Notification</p>
                            <a class="dropdown-item media bg-flat-color-1" href="#">
                                <i class="fa fa-check"></i>

                                <p>Server #1 overloaded.</p>
                            </a>
                            <a class="dropdown-item media bg-flat-color-4" href="#">
                                <i class="fa fa-info"></i>

                                <p>Server #2 overloaded.</p>
                            </a>
                            <a class="dropdown-item media bg-flat-color-5" href="#">
                                <i class="fa fa-warning"></i>

                                <p>Server #3 overloaded.</p>
                            </a>
                        </div>
                    </div>

                </div>
            </div>

            <div class="col-sm-5">
                <div class="user-area dropdown float-right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">
                        <asset:image class="user-avatar rounded-circle" src="Usuarios/${session.usuario?.foto}"/>
                    </a>

                    <div class="user-menu dropdown-menu">

                        <g:link controller="Menu" action="redirecionarAtualizar" class="nav-link" href="#"><i
                                class="fa fa-cog"></i> Configurações</g:link>

                        <g:link controller="Menu" action="logout" class="nav-link"><i
                                class="fa fa-power-off"></i> Logout</g:link>
                    </div>
                </div>

                <div class="language-select dropdown" id="language-select">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="language" aria-haspopup="true"
                       aria-expanded="true">
                        <i class="flag-icon flag-icon-us"></i>
                    </a>

                    <div class="dropdown-menu" aria-labelledby="language">
                        <div class="dropdown-item">
                            <span class="flag-icon flag-icon-fr"></span>
                        </div>

                        <div class="dropdown-item">
                            <i class="flag-icon flag-icon-es"></i>
                        </div>

                        <div class="dropdown-item">
                            <i class="flag-icon flag-icon-us"></i>
                        </div>

                        <div class="dropdown-item">
                            <i class="flag-icon flag-icon-it"></i>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </header><!-- /header -->
<!-- Header-->



<!-- Header-->

    <div class="breadcrumbs">
        <div class="col-sm-4">
            <div class="page-header float-left">
                <div class="page-title">
                    <h1>Painel de Controle</h1>
                </div>
            </div>
        </div>

        <div class="col-sm-8">
            <div class="page-header float-right">
                <div class="page-title">
                    <ol class="breadcrumb text-right">
                        <li class="active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="content mt-3">
        <g:layoutBody/>
    </div>


    <footer>

    </footer>

    <asset:javascript src="jquery-3.3.1.js"/>
    <asset:javascript src="vendors/popper.js/dist/umd/popper.min.js"/>
    <asset:javascript src="vendors/bootstrap/dist/js/bootstrap.min.js"/>
    <asset:javascript src="assets/js/main.js"/>


    <asset:javascript src="vendors/chart.js/dist/Chart.bundle.min.js"/>
    <asset:javascript src="assets/js/dashboard.js"/>
    <asset:javascript src="assets/js/widgets.js"/>
    <asset:javascript src="vendors/jqvmap/dist/jquery.vmap.min.js"/>
    <asset:javascript src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"/>
    <asset:javascript src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"/>

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
    <script>
        $("document").ready(function () {
            atualizaRelogio();
        });
        (function ($) {
            "use strict";

            jQuery('#vmap').vectorMap({
                map: 'world_en',
                backgroundColor: null,
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#1de9b6',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: ['#1de9b6', '#03a9f5'],
                normalizeFunction: 'polynomial'
            });
        })(jQuery);

        function atualizaRelogio(){
            var momentoAtual = new Date();

            var vhora = momentoAtual.getHours();
            var vminuto = momentoAtual.getMinutes();
            var vsegundo = momentoAtual.getSeconds();

            var vdia = momentoAtual.getDate();
            var vmes = momentoAtual.getMonth() + 1;
            var vano = momentoAtual.getFullYear();

            if (vdia < 10){ vdia = "0" + vdia;}
            if (vmes < 10){ vmes = "0" + vmes;}
            if (vhora < 10){ vhora = "0" + vhora;}
            if (vminuto < 10){ vminuto = "0" + vminuto;}
            if (vsegundo < 10){ vsegundo = "0" + vsegundo;}

            dataFormat = vdia + " / " + vmes + " / " + vano;
            horaFormat = vhora + " : " + vminuto + " : " + vsegundo;

            $('#data').html(dataFormat);
            $('#data').html(horaFormat);

            setTimeout("atualizaRelogio()",1000);
        }

</script>

</body>
</html>
