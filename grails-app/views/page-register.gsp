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


    <asset:stylesheet src="bootstrap.min.css" />
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
                        <asset:image class="align-content" src="logo2.png" />
                    </a>
                </div>
                <div class="login-form">
                    <g:uploadForm controller="Cliente">
                        <div class="form-group">
                            <label>Nome</label>
                            <g:textField name="nome" class="form-control" placeholder="Nome"/>
                        </div>
                            <div class="form-group">
                                <label>Email</label>
                                <g:textField name="email" class="form-control" placeholder="Email"/>
                        </div>
                                <div class="form-group">
                                    <label>Senha</label>
                                    <g:passwordField name="senha" class="form-control" placeholder="Senha"/>
                        </div>
								<div class="form-group">
                                    <label>Telefone</label>
                                    <g:textField name="telefone" class="form-control" placeholder="Telefone"/>
                        </div>
                        <div class="form-group">
                               <label>Estado</label>
                                <g:textField name="estado" class="form-control" placeholder="Estado"/>
                         </div>
                         <div class="form-group">
                                <label>Pais</label>
                                <g:textField name="pais" class="form-control" placeholder="País"/>
                        </div>
                        <div class="form-group">
                              <label>Foto</label>
                              <input type="file" name="arquivo" accept=".jpg, .jpeg, .png    " data-max-size="120000" class="form-control"/>
                        </div>
                        <div class="checkbox">
                                        <label>
                                <input type="checkbox"> Aceito os termos e políticas
                            </label>
                                    </div>
                                    <g:actionSubmit value="Cadastrar" action="cadastrar" class="btn btn-primary btn-flat m-b-30 m-t-30"/>
                                    <div class="social-login-content">
                                        <div class="social-button">

                                        </div>
                                    </div>
                                    <div class="register-link m-t-15 text-center">
                                        <p>Já possui uma conta ? <g:link controlller="Cliente" action="login"> Entre</g:link></p>
                                    </div>
                    </g:uploadForm>
                </div>
            </div>
        </div>
    </div>


    <asset:javascript src="jquery-3.3.1.js"/>
    <asset:javascript src="vendors/popper.js/dist/umd/popper.min.js"/>
    <asset:javascript src="vendors/bootstrap/dist/js/bootstrap.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="js/main.js"/>


</body>

</html>