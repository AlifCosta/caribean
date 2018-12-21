package hotel

class Alimentacao {
    List <String> tipos = new ArrayList()
    Double preco
    static hasOne=[funcionario:Funcionarios]
    static belongsTo=[quarto:Quarto]

    static constraints = {
    }
}
