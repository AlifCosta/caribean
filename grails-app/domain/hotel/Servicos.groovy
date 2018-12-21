package hotel

class Servicos {
    String tipo
    String preco
    static hasOne=[funcionario:Funcionarios]
    static hasMany=[quartos:Quarto]
    static belongsTo=[quartos:Quarto]

    static constraints = {
        tipo(blank:false,nullable:false,unique:true)
        preco(blank:false,nullable:false)
    }
}
