<div class="card-group">
    <div class="card col-lg-2 col-md-6 no-padding no-shadow">
        <div class="card-body bg-flat-color-2">
            <div class="h1 text-muted text-right mb-4">
                <i class="fa fa-user-plus text-light"></i>
            </div>

            <div class="h4 mb-0 text-light">
                <span class="count">${(session.usuario.quartos.sevicos).size() ?: 0}</span>
            </div>

            <small class="text-uppercase font-weight-bold text-light">Serviçoes abertos</small>

            <div class="progress progress-xs mt-3 mb-0 bg-light" style="width: 40%; height: 5px;"></div>
        </div>
    </div>

    <div class="card col-lg-2 col-md-6 no-padding no-shadow">
        <div class="card-body bg-flat-color-4">
            <div class="h1 text-light text-right mb-4">
                <i class="fa fa-clock-o"></i>
            </div>

            <div class="h4 mb-0 text-light"><span id="data"></span><span id="hora"></span></div>
            <small class="text-light text-uppercase font-weight-bold">Horario</small>

            <div class="progress progress-xs mt-3 mb-0 bg-light" style="width: 40%; height: 5px;"></div>
        </div>
    </div>

    <div class="card col-lg-2 col-md-6 no-padding no-shadow">
        <div class="card-body bg-flat-color-3">
            <div class="h1 text-right mb-4">
                <i class="fa fa-cart-plus text-light"></i>
            </div>

            <div class="h4 mb-0 text-light">
                <span class="count">${session.usuario?.conta} R$</span>
            </div>
            <small class="text-light text-uppercase font-weight-bold">Conta</small>

            <div class="progress progress-xs mt-3 mb-0 bg-light" style="width: 40%; height: 5px;"></div>
        </div>
    </div>

    <div class="card col-lg-2 col-md-6 no-padding no-shadow">
        <div class="card-body bg-flat-color-1">
            <div class="h1 text-light text-right mb-4">
                <i class="fa fa-comments-o"></i>
            </div>

            <div class="h4 mb-0 text-light">
                <span class="count">${(session.usuario.avaliacoes).size()}</span>
            </div>
            <small class="text-light text-uppercase font-weight-bold">Comentarios</small>

            <div class="progress progress-xs mt-3 mb-0 bg-light" style="width: 40%; height: 5px;"></div>
        </div>
    </div>

    <div class="card col-lg-2 col-md-6 no-padding bg-flat-color-1">
        <div class="card-body">
            <div class="h1 text-muted text-right mb-4">
                <i class="fa fa-users text-light"></i>
            </div>

            <div class="h4 mb-0 text-light">
                <span class="count">${(hotel.Cliente.list()).size()}</span>
            </div>
            <small class="text-uppercase font-weight-bold text-light">Usuarios</small>

            <div class="progress progress-xs mt-3 mb-0 bg-light" style="width: 40%; height: 5px;"></div>
        </div>
    </div>
</div>