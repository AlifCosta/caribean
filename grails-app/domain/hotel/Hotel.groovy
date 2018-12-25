package hotel

class Hotel {
    String CNPJ
    Integer estrelas
    String nome
    String pais
    String estado
    String cidade
    String cep
    String bairro
    String logadouro
    static hasMany=[gerentes:Gerente,avaliacoes:Avaliacao]


    static constraints = {
        CNPJ(nullable:false,blank:false,maxSize:40,unique:true)
        nome(nullable:false,blank:false,maxSize:100)
        pais(nullable:false,blank:false,maxSize:100)
        estado(nullable:false,blank:false,maxSize:100)
        cidade(nullable:false,blank:false,maxSize:100)
        cep(nullable:false,blank:false,maxSize:20)
        bairro(nullable:false,blank:false,maxSize:100)
        logadouro(nullable:false,blank:false,maxSize:100)
        estrelas(min:1,max:5)
        avaliacoes(nullable:true,blank:true)
    }
}
