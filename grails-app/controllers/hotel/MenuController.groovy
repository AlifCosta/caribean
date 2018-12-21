package hotel

class MenuController {

    def index(){
        render view: "/index"
    }

    def quartos() {
        render view: '/quartos'
    }
}
