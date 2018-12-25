package hotel

class BootStrap {

    def init = { servletContext ->
        def gerente  = new Gerente(nome:"ADMIN",email:"admin@admin.com",senha:"admin")
        gerente.save(flush:true)
    }
    def destroy = {
    }
}
