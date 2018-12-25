<div class="row">
    <div class="col-md-4" style="margin: 0 auto">
        <div class="card">
            <div class="card-header">
                <strong class="card-title mb-3">Cartão de Perfil</strong>
            </div>

            <div class="card-body">
                <div class="mx-auto d-block">
                    <asset:image class="rounded-circle mx-auto d-block" src="Usuarios/${session.usuario?.foto}"/>
                    <h5 class="text-sm-center mt-2 mb-1">${session.usuario?.nome}</h5>

                    <div class="location text-sm-center"><i
                            class="fa fa-map-marker"></i> ${session.usuario?.estado}, ${session.usuario?.pais}</div>
                </div>
                <hr>

                <div class="card-text text-sm-center">
                    <a href="#"><i class="fa fa-facebook pr-1"></i></a>
                    <a href="#"><i class="fa fa-twitter pr-1"></i></a>
                    <a href="#"><i class="fa fa-linkedin pr-1"></i></a>
                    <a href="#"><i class="fa fa-pinterest pr-1"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>