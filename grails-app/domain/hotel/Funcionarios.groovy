package hotel

class Funcionarios {
    String nome
    String funcao
    Double salario
    String senha
    String email
    String foto
    Integer carga_horaria
    Boolean disponibilidade
    static belongsTo=[servico:Servicos,alimentacao:Alimentacao]
    static constraints = {
        nome(nullable:false,blank:false,maxSize:100)
        funcao(nullable:false,blank:false,maxSize:40)
        salario(nullable:false,blank:false)
        carga_horaria(nullable:false,blank:false)
        senha(nullable:false,blank:false,maxSize:30)
        email(nullable:false,blank:false,maxSize:200,unique:true,email:true)
        foto(nullable:false,blank:false)
        disponibilidade(nullable:true,blank:true)
        servico(nullable:true,blank:true)
        alimentacao(nullable:true,blank:true)
    }
}
