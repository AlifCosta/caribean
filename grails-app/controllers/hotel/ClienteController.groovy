package hotel


class ClienteController {

    def index() {
        render view: '/index'
    }

    def cadastro() {
        render view: "/Cadastro/registro-clientes"
    }

    def entrar() {
        def cliente = Cliente.findByEmail(params.email)
        def gerente = Gerente.findByEmail(params.email)
        if (cliente && (cliente.senha == params.senha)) {
            session.usuario = cliente
            render view: "/pagina-usuario"
        } else if (gerente && (gerente.senha == params.senha)) {
            session.usuario = gerente
            render view: "/pagina-usuario"
        } else {
            render view: "/page-login", model: [status: 'Invalido!']
        }

    }

    def login() {
        render view: "/page-login"
    }
    def cadastrar() {
        def a = request.getFile("arquivo")
        def nomeOriginal = params.arquivo.originalFilename
        def tamanho = nomeOriginal.length()
        def extensao = nomeOriginal.substring(tamanho - 3, tamanho)
        a.transferTo(new File("C:/development/Projetos/hotel/grails-app/assets/images/Usuarios/${params.email}.${extensao}"))
        def cliente = new Cliente(params)
        cliente.conta = 0
        cliente.foto = "${params.email}.${extensao}"
        cliente.save(flush: true)

        render view: "/page-login", model: [texto: 'Cadastrado com sucesso!']


    }
    def avaliacoes(Long estrelas) {
        def avaliacoes = Avaliacao.findAllByEstrelas(estrelas)
        respond avaliacoes,view: "/avaliacao"
    }
    def deletar(Long id){
        def cliente = Cliente.get(id)
        cliente.delete(flush:true)
        render view: "/Deletar/deletar-cliente"
    }
    def atualizar(){
        //Foto
        def a = request.getFile("arquivo")
        def nomeOriginal = params.arquivo.originalFilename
        def tamanho = nomeOriginal.length()
        def extensao = nomeOriginal.substring(tamanho - 3, tamanho)
        a.transferTo(new File("C:/development/Projetos/hotel/grails-app/assets/images/Usuarios/${params.email}.${extensao}"))
        //
        def cliente = Cliente.get(params.id) ?: new Cliente()
        cliente.conta = 0
        cliente.foto = "${params.email}.${extensao}"
        bindData(cliente, params)
        cliente.save(flush: true, failOnError: true)
        render view: "/Atualizar/atualizar-cliente"

    }
}
