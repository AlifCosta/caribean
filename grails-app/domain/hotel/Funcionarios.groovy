package hotel

class Funcionarios {
    String nome
    String funcao
    Double salario
    Integer carga_horaria
    Boolean disponibilidade
    static belongsTo=[servico:Servicos,alimentacao:Alimentacao]
    static constraints = {
        nome(nullable:false,blank:false,maxSize:100)
        funcao(nullable:false,blank:false,maxSize:40)
        salario(nullable:false,blank:false)
        carga_horaria(nullable:false,blank:false)
    }
}
