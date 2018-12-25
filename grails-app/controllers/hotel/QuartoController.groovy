package hotel

class QuartoController {

    def index() {}

    def disponiveis() {
        def disponiveis = []
        Quarto.list().each { quarto ->
            if (!quarto.cliente) {
                disponiveis << quarto
            }
        }
        respond disponiveis, view: ""
    }

    def login() {
        render view: "/pagina-usuario"
    }

    def cadastrar() {
        def quarto = new Quarto(params)
        quarto.gerentes = Gerente.list()
        quarto.hotel = Hotel.get(1)
        //Inicio codigo foto
        def a = request.getFile("arquivo")
        def nomeOriginal = params.arquivo.originalFilename
        def tamanho = nomeOriginal.length()
        def extensao = nomeOriginal.substring(tamanho - 3, tamanho)
        quarto.foto = "${((Quarto.list()).size()) + 1}.${extensao}"
        //Fim codigo foto
        quarto.save(flush: true)
        a.transferTo(new File("C:/development/Projetos/hotel/grails-app/assets/images/hotels/${Quarto.last().id}.${extensao}"))
        redirect controller: "Menu", action: "inicial2"
    }

    def deletar(Long id) {
        def quarto = Quarto.get(id)
        quarto.delete(flush: true)
        render view: "/Deletar/deletar-quarto"
    }

    def atualizar() {
        //Foto
        def a = request.getFile("arquivo")
        def nomeOriginal = params.arquivo.originalFilename
        def tamanho = nomeOriginal.length()
        def extensao = nomeOriginal.substring(tamanho - 3, tamanho)
        a.transferTo(new File("C:/development/Projetos/hotel/grails-app/assets/images/hotels/${params.id}.${extensao}"))
        //
        def quarto = Quarto.get(params.id) ?: new Quarto()
        quarto.foto = "${params.id}.${extensao}"
        bindData(quarto, params)
        quarto.save(flush: true, failOnError: true)
        render view: "/Atualizar/atualizar-quarto"


    }
    def reservar(Long id){
        def quarto = Quarto.get(id)
        quarto.cliente = session.usuario
        quarto.save(flush: true, failOnError: true)
        redirect controller:"Menu",action: "inicial2"
    }
    def saindo(){
        def quarto = Quarto.findAllByCliente(session.usuario)
        quarto.collect {it.cliente = null}
        session.usuario.conta = 0
        quarto.collect {it.save(flush: true, failOnError: true)}
        render view:"/avaliacao"
    }
}

