package hotel

class Avaliacao {
    Integer estrelas
    String comentario
    String titulo
    String data
    static belongsTo = [cliente:Cliente,hotel:Hotel]
    static constraints = {
        estrelas(min:1,max:5,blank:false,nullable:false)
        comentario(blank:false,nullable:false,maxSize:200)
        titulo(blank:false,nullable:false,maxSize:20)
        data(blank:false,nullable:false)
    }
}
