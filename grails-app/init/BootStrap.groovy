import sc.acesso.*
import sc.model.*
class BootStrap {

    def init = { servletContext ->
    	def igreja1 = new Igreja (cidade: "Campina Grande", estado:"Paraiba", pais: "Brasil").save(flush:true)
    	def setor1 = new Setor (nome: "Campina Grande - 1", igreja:igreja1).save(flush:true)
    	new GrupoCaseiro (nome: "Jardim Paulistano", setor:setor1).save(flush:true)
    	
    	new Usuario(login: "admin", senha: "126366", tipo:"admin").save(flush:true)
    }
    def destroy = {
    }
}
