package hotel

class Cliente {
    String nome
    String telefone
    String senha
    String email
    String foto
    String estado
    String pais
    Double conta
    static hasMany=[quartos:Quarto,avaliacoes:Avaliacao,gerentes:Gerente]
    static belongsTo=[gerentes:Gerente]
    static constraints = {
        nome(nullable:false,blank:false,maxSize:200)
        telefone(nullable:false,blank:false,maxSize:13,unique:true)
        senha(nullable:false,blank:false,maxSize:30)
        email(nullable:false,blank:false,maxSize:200,unique:true,email:true)
        foto(nullable:false,blank:false)
        estado(nullable:false,blank:false,maxSize:200)
        pais(nullable:false,blank:false,maxSize:200)
        conta(nullable: true,blank:true)
        quartos(nullable:true,blank:true)
        avaliacoes(nullable:true,blank:true)
        gerentes(nullable:true,blank:true)
    }
}
