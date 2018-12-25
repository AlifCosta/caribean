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
        <strong class="card-title">Listar Cliente</strong>
    </div>

    <div class="card-body">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nome</th>
                <th scope="col">Email</th>
                <th scope="col">Conta</th>
                <th scope="col">Quartos</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${hotel.Cliente.list()}" var="cliente">
                <tr>
                    <th scope="row">${cliente.id}</th>
                    <td>
                        <g:link controller="Cliente" action="deletar" id="${cliente.id}">
                            ${cliente.nome}
                        </g:link></td>
                    <td>${cliente.email}</td>
                    <td>${cliente.conta}</td>
                    <td>${(cliente.quartos).size()}</td>
                </tr>
            </g:each>
            </tbody>
        </table>

    </div>
</div>
</main>
</body>
</html>