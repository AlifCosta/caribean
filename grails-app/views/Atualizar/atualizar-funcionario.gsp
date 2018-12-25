<html>
<head>
    <meta charset="UTF-8">
    <meta content="logado" name="layout">
    <title>${session.usuario?.nome}, Deseja deletar Gerentes?</title>
</head>

<body>
<main

<div class="card">
    <div class="card-header">
        <strong class="card-title">Listar Funcionarios</strong>
    </div>

    <div class="card-body">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nome</th>
                <th scope="col">Função</th>
                <th scope="col">Salario</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${hotel.Funcionarios.list()}" var="funcionario">
                <tr>
                    <th scope="row">${funcionario.id}</th>
                    <td><g:link controller="Menu" action="atualizarFuncionarios2" id="${funcionario.id}">
                        ${funcionario.nome}
                    </g:link></td>
                    <td>${funcionario.funcao}</td>
                    <td>${funcionario.salario}</td>
                </tr>
            </g:each>
            </tbody>
        </table>

    </div>
</div>
</main>
</body>
</html>