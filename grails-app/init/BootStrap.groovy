import sc.acesso.*
import sc.model.*
class BootStrap {

	def importCSVService

    def init = { servletContext ->
        //importCSVService.importCampinaGrande(servletContext.getRealPath(""))
    	
    	//new Usuario(login: "admin", senha: "126366", isAdmin:true).save(flush:true)

    	// def igreja1 = new Igreja(cidade:"Campina Grande", estado:"Paraiba", pais:"Brasil").save()
	    // 	def setor1 = new Setor(nome:"Campina Grande - Setor 1", igreja:igreja1).save()
	    // 		new GrupoCaseiro(nome:"Campina Grande - Setor 1 - GrupoCaseiro 1", setor:setor1).save()
	    // 		new GrupoCaseiro(nome:"Campina Grande - Setor 1 - GrupoCaseiro 2", setor:setor1).save()
	    // 	def setor2 = new Setor(nome:"Campina Grande - Setor 2", igreja:igreja1).save()
	    // 		new GrupoCaseiro(nome:"Campina Grande - Setor 2 - GrupoCaseiro 1", setor:setor2).save()
	    // 		new GrupoCaseiro(nome:"Campina Grande - Setor 2 - GrupoCaseiro 2", setor:setor2).save()

    	// def igreja2 = new Igreja(cidade:"Garanhuns", estado:"Pernambuco", pais:"Brasil").save()
    	// 	def setor3 = new Setor(nome:"Garanhuns - Setor 1", igreja:igreja2).save()
	    // 		new GrupoCaseiro(nome:"Garanhuns - Setor 1 - GrupoCaseiro 1", setor:setor3).save()
	    // 		new GrupoCaseiro(nome:"Garanhuns - Setor 1 - GrupoCaseiro 2", setor:setor3).save()
	    // 	def setor4 = new Setor(nome:"Garanhuns - Setor 2", igreja:igreja2).save()
	    // 		new GrupoCaseiro(nome:"Garanhuns - Setor 2 - GrupoCaseiro 1", setor:setor4).save()
	    // 		new GrupoCaseiro(nome:"Garanhuns - Setor 2 - GrupoCaseiro 2", setor:setor4).save()

    }
    def destroy = {
    }
}
