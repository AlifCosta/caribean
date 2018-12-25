<!doctype html>

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

                <g:render template="/layouts/avaliacao"/>
            </div>
        </div>
    </div>


    <asset:javascript src="jquery-3.3.1.js"/>
    <asset:javascript src="vendors/popper.js/dist/umd/popper.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="js/main.js"/>


</body>

</html>
