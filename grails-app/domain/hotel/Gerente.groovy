package hotel

class Gerente {
    String nome
    String email
    String senha
    Double salario
    Boolean disponibilidade
    String pais
    String estado
    String foto
    static hasOne=[hotel:Hotel]
    static belongTo=[hotel:Hotel]
    static hasMany=[quartos:Quarto,clientes:Cliente]

    static constraints = {
        nome(nullable:false,blank:false,maxSize:200)
        senha(nullable:false,blank:false,maxSize:200)
        email(nullable:false,blank:false,maxSize:50,unique:true,email:true)
        hotel(nullable:true,blank:true)
        quartos(nullable:true,blank:true)
        clientes(nullable:true,blank:true)
        disponibilidade(nullable:true,blank:true)
    }
}
