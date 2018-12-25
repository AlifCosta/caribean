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
        <strong class="card-title">Listar Gerentes</strong>
    </div>

    <div class="card-body">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Capacidade</th>
                <th scope="col">Valor</th>
                <th scope="col">Cliente</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${hotel.Quarto.list()}" var="quarto">
                <tr>
                    <th scope="row"><g:link controller="Gerente"
                                            action="deletar" id="${quato.id}">${quarto.id}</g:link></th>
                    <td>
                        ${quarto.capacidade}
                    </td>
                    <td>${quarto.valor}</td>
                    <td>${quarto.cliente.email}</td>
                </tr>
            </g:each>
            </tbody>
        </table>

    </div>
</div>
</main>
</body>
</html>