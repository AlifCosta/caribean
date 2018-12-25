package hotel

class Quarto {
    Integer capacidade
    Integer estrelas
    Float valor
    String foto
    static hasOne=[alimentacao:Alimentacao]
    static hasMany=[gerentes:Gerente,sevicos:Servicos]
    static belongsTo=[cliente:Cliente,hotel:Hotel,gerentes:Gerente]
    static constraints = {
        capacidade(min:1,max:4)
        capacidade(min:1,max:5)
        cliente(nullable: true,blank:true)
        alimentacao(nullable: true,blank:true)
        gerentes(nullable: true,blank:true)
        sevicos(nullable: true,blank:true)
        hotel(nullable: true,blank:true)
        gerentes(nullable: true,blank:true)
    }
}
