<html>
<head>
    <meta charset="UTF-8">
    <meta content="logado" name="layout">
    <title>${session.usuario?.nome}, Deseja deletar Gerentes?</title>
</head>

<body>
<main>

<div class="card">
    <div class="card-header">
        <strong class="card-title">Listar Gerentes</strong>
    </div>

    <div class="card-body">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nome</th>
                <th scope="col">Email</th>
                <th scope="col">Salario</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${hotel.Gerente.list()}" var="gerente">
                <tr>
                    <th scope="row">${gerente.id}</th>
                    <td>
                        <g:link controller="Gerente" action="deletar" id="${gerente.id}">
                            ${gerente.nome}
                        </g:link></td>
                    <td>${gerente.email}</td>
                    <td>${gerente.salario}</td>
                </tr>
            </g:each>
            </tbody>
        </table>

    </div>
</div>
</main>
</body>
</html>