<!doctype html>

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
                        <asset:image class="align-content" src="logo2.png"/>
                    </a>
                </div>

                <g:if test='${texto}'>
                    <div class="sufee-alert alert with-close alert-success alert-dismissible show">
                        <span class="badge badge-pill badge-danger">Cadastrado!</span>
                        ${texto}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                    </div>
                </g:if>
                <g:if test='${status}'>
                    <div class="sufee-alert alert with-close alert-danger alert-dismissible show">
                          <span class="badge badge-pill badge-danger">Erro</span>
                          ${status}
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                          </button>
                    </div>
                </g:if>

                <div class="login-form">
                    <g:form controller="Cliente">
                        <div class="form-group">
                            <label>Email</label>
                            <g:textField name="email" class="form-control" placeholder="Email"/>
                        </div>
                            <div class="form-group">
                                <label>Senha</label>
                                <g:passwordField name="senha" class="form-control" placeholder="Senha"/>
                        </div>
                                <div class="checkbox">
                                    <label>
                                <input type="checkbox"> Lembre de mim
                            </label>
                                    <label class="pull-right">
                                <a href="#">Esqueceu a senha?</a>
                            </label>

                                </div>
                                <g:actionSubmit value="Entrar" action="entrar" class="btn btn-success btn-flat m-b-30 m-t-30"/>
                                <div class="social-login-content">

                                </div>
                                <div class="register-link m-t-15 text-center">
                                    <p>Não tem uma conta ? <g:link controller="Cliente" action="cadastro"> Cadastre-se aqui</g:link></p>
                                </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>


    <asset:javascript src="jquery-3.3.1.js"/>
    <asset:javascript src="vendors/popper.js/dist/umd/popper.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="js/main.js"/>


</body>

</html>
