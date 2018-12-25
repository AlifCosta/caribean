package hotel

class Alimentacao {
    String comidas
    Double preco
    static hasOne=[funcionario:Funcionarios]
    static belongsTo=[quarto:Quarto]

    static constraints = {
        comidas(blank:false,nullable:false,masSize:300)
    }
}
