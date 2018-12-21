<section class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="card">
                <div class="card-header">
                    <i class="fa fa-user"></i><strong class="card-title pl-2">Cartão de Perfil</strong>
                </div>
                <div class="card-body">
                    <div class="mx-auto d-block">
                        <asset:image class="rounded-circle mx-auto d-block" src="Usuarios/${session.usuario.foto}"/>
                        <h5 class="text-sm-center mt-2 mb-1">${session.usuario.nome}</h5>
                        <div class="location text-sm-center"><i class="fa fa-map-marker"></i> ${session.usuario.estado},${session.usuario.pais} </div>
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
        </div><!-- .row -->
    </div><!-- .animated -->
</section>