import sc.acesso.*
import sc.model.*
class BootStrap {

	def importCSVService

    def init = { servletContext ->
        importCSVService.importCampinaGrande(servletContext.getRealPath(""))
    	
    	new Usuario(login: "admin", senha: "126366", tipo:"admin").save(flush:true)


    }
    def destroy = {
    }
}
