import sc.acesso.Usuario
class BootStrap {

    def init = { servletContext ->
    	new Usuario(login: "admin", senha: "126366", tipo:"admin").save(flush:true)
    }
    def destroy = {
    }
}
