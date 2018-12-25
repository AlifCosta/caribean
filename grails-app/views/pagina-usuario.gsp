<html>
<head>
    <meta charset="UTF-8">
    <meta content="logado" name="layout">
    <title>Bem vindo, ${session.usuario?.nome}!</title>
</head>

<body>
<div>
    <g:render template="/layouts/dadosUsuario"/>
    <g:if test="${session.usuario instanceof hotel.Cliente}">
        <g:render template="/layouts/cartoes"/>
    </g:if>
    <g:if test="${session.usuario instanceof hotel.Gerente}">
        <g:render template="/layouts/dadosGerente"/>
    </g:if>
    <section id="hotels" class="section-with-bg fadeInUp">
        <div class="section-header">
            <h2>QUARTOS</h2>
        </div>
        <g:render template="/layouts/quartosDisponveis"/>
        <g:if test="${session.usuario instanceof hotel.Cliente}">
            <g:render template="/layouts/seusQuartos"/>
        </g:if>
    </section>
</div>
</main>
</body>
</html>