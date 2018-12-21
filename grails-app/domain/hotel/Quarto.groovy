package hotel

class Quarto {
    Integer capacidade
    Float valor
    static hasOne=[alimentacao:Alimentacao]
    static hasMany=[gerentes:Gerente,sevicos:Servicos]
    static belongsTo=[cliente:Cliente,hotel:Hotel,gerentes:Gerente]
    static constraints = {
        recursos(nullable:false,blank:false,maxSize:100)
        capacidade(min:1,max:4)
        cliente(nullable: true,blank:true)
    }
}
