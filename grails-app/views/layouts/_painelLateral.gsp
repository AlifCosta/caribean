<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">

        <div class="navbar-header">
            <a class="navbar-brand" href="./"><asset:image src="Llogo.png"/></a>
            <a class="navbar-brand hidden" href="./"><asset:image src="logo2.png"/></a>
        </div>

        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <g:link controller="Menu" action="inicial2"><i class="menu-icon fa fa-dashboard"></i>Home</g:link>
                </li>

                <g:if test="${session.usuario instanceof hotel.Cliente}">
                    <h3 class="menu-title">Area do Cliente</h3><!-- /.menu-title -->
                    <li class="active">
                        <g:link controller="Quarto" action="saindo" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false"><i class="menu-icon fa fa-bar-chart"></i>Check-out</g:link>
                    </li>
                </g:if>
                <g:if test="${session.usuario instanceof hotel.Gerente}">
                    <h3 class="menu-title">Area do Gerente</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false"><i class="menu-icon fa fa-bar-chart"></i>Gerentes</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-line-chart"></i><g:link controller="Menu" action="criarGerentes">Criar</g:link></li>
                            <li><i class="menu-icon fa fa-area-chart"></i><g:link controller="Menu" action="deletarGerentes">Deletar</g:link></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false"><i class="menu-icon fa fa-th"></i>Quartos</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i><g:link controller="Menu" action="criarQuartos">Criar</g:link></li>
                            <li><i class="menu-icon fa fa-th"></i><g:link controller="Menu" action="atualizarQuartos">Atualizar</g:link></li>
                            <li><i class="fa fa-table"></i><g:link controller="Menu" action="deletarQuartos">Deletar</g:link></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false"><i class="menu-icon fa fa-table"></i>Usuarios</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i><g:link controller="Menu" action="criarClientes">Criar</g:link></li>
                            <li><i class="menu-icon fa fa-th"></i><g:link controller="Menu" action="atualizarClientes">Atualizar</g:link></li>
                            <li><i class="fa fa-table"></i><g:link controller="Menu" action="deletarClientes">Deletar</g:link></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false"><i class="menu-icon fa fa-table"></i>Funcionarios</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i><g:link controller="Menu" action="criarFuncionarios">Criar</g:link></li>
                            <li><i class="menu-icon fa fa-th"></i><g:link controller="Menu" action="atualizarFuncionarios">Atualizar</g:link></li>
                            <li><i class="fa fa-table"></i><g:link controller="Menu" action="deletarFuncionarios">Deletar</g:link></li>
                        </ul>
                    </li>
                </g:if>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside>