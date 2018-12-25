package hotel

class FuncionarioController {

    def index() {}

    def cadastrar() {
        def gerente = new Gerente(params)
        gerente.hotel = Hotel.get(1)
        gerente.quartos = Quarto.list()
        gerente.clientes = Cliente.list()
        //Adicionando foto
        def a = request.getFile("arquivo")
        def nomeOriginal = params.arquivo.originalFilename
        def tamanho = nomeOriginal.length()
        def extensao = nomeOriginal.substring(tamanho - 3, tamanho)
        a.transferTo(new File("C:/development/Projetos/hotel/grails-app/assets/images/Usuarios/${gerente.email}.${extensao}"))
        gerente.foto = "${gerente.email}.${extensao}"
        //Final do codigo
        gerente.save(flush: true)
    }

    def deletar(Long id) {
        def funcionario = Funcionarios.get(id)
        funcionario.delete(flush: true)
        render view: "/Deletar/deletar-funcionario"
    }

    def atualizar() {
        //Foto
        def a = request.getFile("arquivo")
        def nomeOriginal = params.arquivo.originalFilename
        def tamanho = nomeOriginal.length()
        def extensao = nomeOriginal.substring(tamanho - 3, tamanho)
        a.transferTo(new File("C:/development/Projetos/hotel/grails-app/assets/images/Usuarios/${params.email}.${extensao}"))
        //
        def funcionario = Funcionarios.get(params.id) ?: new Funcionarios()
        funcionario.foto = "${params.email}.${extensao}"
        bindData(funcionario, params)
        funcionario.save(flush: true, failOnError: true)
        render view: "/Atualizar/atualizar-funcionario"

    }

}
