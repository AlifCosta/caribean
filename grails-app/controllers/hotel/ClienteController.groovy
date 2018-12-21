package hotel


class ClienteController {

    def index() {
        render view:'/index'
    }

    def login() {
        render view: "/page-login"
    }
    def cadastro(){
        render view: "/page-register"
    }
    def entrar(){
            def cliente = Cliente.findByEmail(params.email)
            def gerente = Gerente.findByEmail(params.email)
            if (cliente && (cliente.senha == params.senha)) {
                session.cliente = cliente
                render view: "/pagina-usuario"
            }
            else if (gerente && (gerente.senha == params.senha)) {
                redirect controller:'Gerente', action:'entrar'
            }else{
                render view: "/page-login", model: [status: 'Invalido!']
            }

    }
    def cadastrar(){
        def usuario = new Cliente(params)
        def a = request.getFile("arquivo")
        def nomeOriginal = params.arquivo.originalFilename
        def tamanho = nomeOriginal.length()
        def extensao = nomeOriginal.substring(tamanho-3, tamanho)
        a.transferTo(new File("C:/development/Projetos/hotel/grails-app/assets/images/Usuarios/${params.email}.${extensao}"))
        usuario.foto = "${params.email}.${extensao}"
        usuario.save()
        session.usuario = usuario



        render view: "/page-login", model: [texto: 'Cadastrado com sucesso!']



    }
}
