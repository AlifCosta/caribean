package hotel

import java.text.SimpleDateFormat

class AvaliacoesController {

    def index() { }
    def salvar(){
        def sdf = new SimpleDateFormat("HH:mm:ss");
        def hora = Calendar.getInstance().getTime();
        String dataFormatada = sdf.format(hora);
        def avaliacao = new Avaliacao(params)
        avaliacao.data = dataFormatada
        avaliacao.save(flush:true)
        redirect controller:"Menu",action:"logout"
    }
}
