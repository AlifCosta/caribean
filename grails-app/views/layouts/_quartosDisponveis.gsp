<!--==========================
      Hotels Section
    ============================-->
    <div class="container">
        <div class="section-header">

            <p>Quartos disponiveis</p>
        </div>

        <g:each var="quarto" in="${hotel.Quarto.findAllByCliente(null)}" status="i">
            <g:if test="${(i % 3) == 0}">
                <div class="row">
                <g:set var="stop" value="${i+3}"/>
            </g:if>
            <div class="col-lg-4 col-md-6">
                <div class="hotel">
                    <div class="hotel-img">
                        <asset:image src="hotels/${quarto.id}.jpg" class="img-fluid"/>
                    </div>

                    <h3><g:link controller="Quarto" action="reservar" id="${quarto.id}">Quarto ${quarto.id}</g:link></h3>

                    <div class="stars">
                        <g:each var="c" in="${1..(quarto.estrelas)}">
                            <i class="fa fa-star"></i>
                        </g:each>
                    </div>

                    <p>${quarto.valor} R$</p>
                </div>
            </div>
            <g:if test="${i==stop}">
                </div>
            </g:if>
        </g:each>
    </div>