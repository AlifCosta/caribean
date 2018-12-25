package hotel

class MenuController {

    def index() {
        render view: "/index"
    }
    def inicial2(){
        render view:"/pagina-usuario"
    }

    def quartos() {
        render view: "/quartos"
    }

    def logout() {
        session.usuario = null
        session.invalidate()
        render view: "/index"
    }

    def atualizar(Object entrada) {
        if(entada instanceof Cliente){
            entrada = new Cliente(params)
        }
        else if(entrada instanceof Gerente){
            entrada = new Gerente(params)
        }
        else if(entrada instanceof Funcionarios){
            entrada = new Funcionarios(params)
        }
        entrada.update()
        session.usuario = entrada
        render view:"/"
    }
    //Gerente
    def criarGerentes(){
        render view:"/Cadastro/registro-gerentes"
    }
    def deletarGerentes(){
        render view:"/Deletar/deletar-gerentes"
    }
    def atualizarGerentes(){
        render view:"/Atualizar/atualizar-gerentes"
    }
    def atualizarGerentes2(Long id){
        respond Gerente.get(id),view:"/Atualizar/registro-gerentes"
    }

    //Clientes
    def criarClientes(){
        render view:"/Cadastro/registro-clientes"
    }
    def deletarClientes(){
        render view:"/Deletar/deletar-cliente"
    }
    def atualizarClientes(){
        render view:"/Atualizar/atualizar-cliente"
    }
    def atualizarClientes2(Long id){
        respond Cliente.get(id), view:"/Atualizar/registro-clientes"
    }

    //Funcionario

    def criarFuncionarios(){
        render view:"/Cadastro/registro-funcionarios"
    }
    def deletarFuncionarios(){
        render view:"/Deletar/deletar-funcionario"
    }
    def atualizarFuncionarios(){
        render view:"/Atualizar/atualizar-funcionario"
    }
    def atualizarFuncionarios2(Long id){
        respond Funcionarios.get(id),view:"/Atualizar/registro-funcionarios"
    }

    //Quartos

    def criarQuartos(){
        render view:"/Cadastro/registro-quarto"
    }
    def deletarQuartos(){
        render view:"/Deletar/deletar-quarto"
    }
    def atualizarQuartos(){
        render view:"/Atualizar/atualizar-quarto"
    }
    def atualizarQuartos2(Long id){
        respond Quarto.get(id), view:"/Atualizar/registro-quarto"
    }

}
