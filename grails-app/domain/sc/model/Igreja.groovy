package sc.model
import sc.acesso.Usuario

class Igreja {

    String cidade
	String estado
	String pais
	
	static hasMany = [setores:Setor, usuarios:Usuario]
	
    static constraints = {
		cidade(nullable:false, blank: false)
		estado(nullable:false, blank: false)
		pais(nullable:false, blank: false)
		setores(nullable:true)
		
    }

    public String toString() {
    	return cidade
    }
}
