package hotel

import javax.servlet.ServletException

class GerenteController {

    def index() { }
    def entrar(){
        try {
            def gerente = Gerente.findByEmail(params.email)
            if (gerente && (gerente.senha == params.senha)) {
                session.gerente = gerente
                render view: "/pagina-usuario"
            }
        }
        catch(ServletException e){
            respond null,view: '/page-login', model:[status:"Email ou senha estão incorretos!"]
        }

    }
}
