 <!--==========================
          Schedule Section
        ============================-->
    <section id="schedule" class="section-with-bg">
        <div class="container wow fadeInUp">
            <div class="section-header">
                <h2>Avaliações</h2>

                <p>Veja o que acham dos nosssos serviços!</p>
            </div>

            <ul class="nav nav-tabs" role="tablist" id="bts_estrelas">
                <li class="nav-item">
                    <g:link class="nav-link active" id="dia1" href="#day-1" role="tab" data-toggle="tab"
                            controller="Cliente" action="avaliacoes" estrelas="${1}">●</g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link" id="dia2" href="#day-2" role="tab" data-toggle="tab" controller="Cliente"
                            action="avaliacoes" estrelas="${2}">●●</g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link" id="dia3" href="#day-3" role="tab" data-toggle="tab" controller="Cliente"
                            action="avaliacoes" estrelas="${3}">●●●</g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link" id="dia4" href="#day-4" role="tab" data-toggle="tab" controller="Cliente"
                            action="avaliacoes" estrelas="${4}">●●●●</g:link>
                </li>
                <li class="nav-item">
                    <g:link class="nav-link" id="dia5" href="#day-4" role="tab" data-toggle="tab" controller="Cliente"
                            action="avaliacoes" estrelas="${5}">●●●●●</g:link>
                </li>

            </ul>

            <h3 class="sub-heading">Estes são alguns dos feeedbacks por avaliação.</h3>

            <div class="tab-content row justify-content-center" id="avaliacoes">

                <!-- Schdule Day 1 -->
                <div role="tabpanel" class="col-lg-9 tab-pane fade active show in" id="day-1">
                    <g:each in="${avaliacoesList}" var="avaliacao">
                        <div class="row schedule-item">
                            <div class="col-md-2"><time>${avaliacao.data}</time></div>

                            <div class="col-md-10">
                                <div class="speaker">
                                    <asset:image src="Usuarios/${avaliacao.cliente.email}.jpg"/>
                                </div>
                                <h4>${avaliacao.titulo} <span>${avaliacao.cliente.nome}</span></h4>

                                <p>${avaliacao.comentario}</p>
                            </div>
                        </div>
                    </g:each>
                </div>
                <!-- End Schdule Day 1 -->

                <!-- Schdule Day 2 -->
                <div role="tabpanel" class="col-lg-9 tab-pane fade" id="day-2">

                    <g:each in="${avaliacoesList}" var="avaliacao">
                        <div class="row schedule-item">
                            <div class="col-md-2"><time>${avaliacao.data}</time></div>

                            <div class="col-md-10">
                                <div class="speaker">
                                    <asset:image src="Usuarios/${avaliacao.cliente.email}.jpg"/>
                                </div>
                                <h4>${avaliacao.titulo} <span>${avaliacao.cliente.nome}</span></h4>

                                <p>${avaliacao.comentario}</p>
                            </div>
                        </div>
                    </g:each>

                </div>
                <!-- End Schdule Day 2 -->

                <!-- Schdule Day 3 -->
                <div role="tabpanel" class="col-lg-9 tab-pane fade" id="day-3">

                    <g:each in="${avaliacoesList}" var="avaliacao">
                        <div class="row schedule-item">
                            <div class="col-md-2"><time>${avaliacao.data}</time></div>

                            <div class="col-md-10">
                                <div class="speaker">
                                    <asset:image src="Usuarios/${avaliacao.cliente.email}.jpg"/>
                                </div>
                                <h4>${avaliacao.titulo} <span>${avaliacao.cliente.nome}</span></h4>

                                <p>${avaliacao.comentario}</p>
                            </div>
                        </div>
                    </g:each>
                </div>
                <!-- End Schdule Day 3 -->
                <!-- Schdule Day 4 -->
                <div role="tabpanel" class="col-lg-9 tab-pane fade" id="day-4">

                    <g:each in="${avaliacoesList}" var="avaliacao">
                        <div class="row schedule-item">
                            <div class="col-md-2"><time>${avaliacao.data}</time></div>

                            <div class="col-md-10">
                                <div class="speaker">
                                    <asset:image src="Usuarios/${avaliacao.cliente.email}.jpg"/>
                                </div>
                                <h4>${avaliacao.titulo} <span>${avaliacao.cliente.nome}</span></h4>

                                <p>${avaliacao.comentario}</p>
                            </div>
                        </div>
                    </g:each>
                </div>
                <!-- End Schdule Day 4 -->
                <!-- Schdule Day 5 -->
                <div role="tabpanel" class="col-lg-9 tab-pane fade" id="day-5">

                    <g:each in="${avaliacoesList}" var="avaliacao">
                        <div class="row schedule-item">
                            <div class="col-md-2"><time>${avaliacao.data}</time></div>

                            <div class="col-md-10">
                                <div class="speaker">
                                    <asset:image src="Usuarios/${avaliacao.cliente.email}.jpg"/>
                                </div>
                                <h4>${avaliacao.titulo} <span>${avaliacao.cliente.nome}</span></h4>

                                <p>${avaliacao.comentario}</p>
                            </div>
                        </div>
                    </g:each>
                </div>
                <!-- End Schdule Day 5 -->

            </div>

        </div>

    </section>
