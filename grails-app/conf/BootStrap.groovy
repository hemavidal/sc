import sc.acesso.Usuario

class BootStrap {

    def init = { servletContext ->

    	new Usuario(login: "admin", senha: "126366").save(flush:true)
    }
    def destroy = {
    }
}
