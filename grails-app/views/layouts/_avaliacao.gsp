<div class="row">
    <div class="col-md-12">
        <section class="card" style="background-color: white;color: darkgray">
            <div class="twt-feed blue-bg">
                <div class="corner-ribon black-ribon">
                    <i class="fa fa-twitter"></i>
                </div>

                <div class="fa fa-twitter wtt-mark"></div>

                <div class="media">
                    <a href="#">
                        <asset:image class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;"
                                     src="Usuarios/${session.usuario?.foto}"/>
                    </a>

                    <div class="media-body">
                        <h2 class="text-light text-center">${session.usuario.nome}</h2>

                        <p class="text-light text-center"><g:if test="${session.usuario instanceof hotel.Gerente}">
                            Gerente
                        </g:if></p>
                    </div>
                </div>

            </div>

            <div class="weather-category twt-category">
                <ul>
                    <li class="active">
                        <h5>${(session.usuario?.avaliacoes).size()}</h5>
                        Avaliações
                    </li>
                </ul>
            </div>

            <div class="twt-write col-sm-12">
                <g:uploadForm controller="Avaliacoes">
                    <label for="titulo">Titulo</label>
                    <g:textField name="titulo" placeholder="Escreva seu titulo" rows="1"
                                 class="form-control t-text-area"/>
                    <label style="color: darkgray">Avaliação</label>
                    <fieldset style="border: 2px dotted darkgray;">
                        <g:radioGroup name="estrelas" labels="['1', '2', '3', '4', '5']"
                                      values="[1, 2, 3, 4, 5]">
                            <label>
                                <span class="radioSpan">${it.radio}</span>
                                ${it.label}
                            </label>
                        </g:radioGroup>
                    </fieldset>
                    <label for="comentario">Mensagem</label><g:textArea name="comentario" rows="5" class="form-control t-text-area"
                                placeholder="Digite seu comentario"/>
                    <g:actionSubmit value="Enviar" action="salvar"/>
                </g:uploadForm>
            </div>
            <footer class="twt-footer">
                <a href="#"><i class="fa fa-camera"></i></a>
                <a href="#"><i class="fa fa-map-marker"></i></a>
                ${session.usuario?.estado}, ${session.usuario?.pais}
            </footer>
        </section>
    </div>
</div>