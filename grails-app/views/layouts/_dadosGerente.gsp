<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="card">
            <div class="card-body">
                <div class="stat-widget-one">
                    <div class="stat-icon dib"><i class="ti-money text-success border-success"></i></div>

                    <div class="stat-content dib">
                        <div class="stat-text">Salario</div>

                        <div class="stat-digit">${session.usuario.salario}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-md-6">
        <div class="card">
            <div class="card-body">
                <div class="stat-widget-one">
                    <div class="stat-icon dib"><i class="ti-user text-primary border-primary"></i></div>

                    <div class="stat-content dib">
                        <div class="stat-text">Usuarios</div>

                        <div class="stat-digit">${(hotel.Cliente.list()).size()}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-md-6">
        <div class="card">
            <div class="card-body">
                <div class="stat-widget-four">
                    <div class="stat-icon dib">
                        <i class="ti-stats-up text-muted"></i>
                    </div>
                    <div class="stat-content">
                        <div class="text-left dib">
                            <g:set var="total" value="${0}"/>
                            <g:set var="soma" value="${(hotel.Cliente.list()).collect {total=total+it.conta}}"/>
                            <div class="stat-heading">Para receber...</div>
                            <div class="stat-text">Total: ${soma} R$</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>