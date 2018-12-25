<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sufee Admin - HTML5 Admin Template</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <asset:stylesheet src="vendors/bootstrap/dist/css/bootstrap.min.css"/>
    <asset:stylesheet src="vendors/font-awesome/css/font-awesome.min.css"/>
    <asset:stylesheet src="vendors/themify-icons/css/themify-icons.css"/>
    <asset:stylesheet src="vendors/flag-icon-css/css/flag-icon.min.css"/>
    <asset:stylesheet src="vendors/selectFX/css/cs-skin-elastic.css"/>

    <asset:stylesheet src="css/style2.css"/>


</head>

<body class="bg-dark">

<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <div class="login-content">
            <div class="login-logo">
                <a href="index.html">
                    <asset:image class="align-content" src="logo2.png"/>
                </a>
            </div>
            <h1>Cliente: ${cliente.nome}(${cliente.id})</h1>
            <div class="login-form">
                <g:uploadForm controller="Cliente" action="atualizar">
                    <g:hiddenField name="id" value="${cliente.id}" />
                    <div class="form-group">
                        <label>Nome</label>
                        <g:textField name="nome" class="form-control" placeholder="${cliente.nome}"/>
                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        <g:textField name="email" class="form-control" placeholder="${cliente.email}"/>
                    </div>

                    <div class="form-group">
                        <label>Senha</label>
                        <g:passwordField name="senha" class="form-control" placeholder="${cliente.senha}"/>
                    </div>

                    <div class="form-group">
                        <label>Telefone</label>
                        <g:textField name="telefone" class="form-control" placeholder="${cliente.telefone}"/>
                    </div>

                    <div class="form-group">
                        <label>Estado</label>
                        <g:textField name="estado" class="form-control" placeholder="${cliente.estado}"/>
                    </div>

                    <div class="form-group">
                        <label>Pais</label>
                        <g:textField name="pais" class="form-control" placeholder="${cliente.pais}"/>
                    </div>

                    <div class="form-group">
                        <label>Foto</label>
                        <input type="file" name="arquivo" accept=".jpg, .jpeg, .png" data-max-size="120000"
                               class="form-control"/>
                    </div>

                    <g:actionSubmit value="Atualizar" class="btn btn-primary btn-flat m-b-30 m-t-30"/>
                    <div class="social-login-content">
                        <div class="social-button">

                        </div>
                    </div>
                </g:uploadForm>
            </div>
        </div>
    </div>
</div>


<asset:javascript src="vendors/jquery/dist/jquery.min.js"/>
<asset:javascript src="vendors/bootstrap/dist/js/bootstrap.min.js"/>
<asset:javascript src="vendors/popper.js/dist/umd/popper.min.js"/>
<asset:javascript src="assets/js/main.js"/>


<asset:javascript src="vendors/chart.js/dist/Chart.bundle.min.js"/>
<asset:javascript src="assets/js/dashboard.js"/>
<asset:javascript src="assets/js/widgets.js"/>

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

</body>

</html>
