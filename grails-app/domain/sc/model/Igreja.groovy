package sc.model

class Igreja {

    String cidade
	String estado
	String pais
	
	static hasMany = [setores:Setor]
	
    static constraints = {
		cidade(nullable:false, blank: false)
		estado(nullable:false, blank: false)
		pais(nullable:false, blank: false)
		
    }

    public String toString() {
    	return cidade
    }
}
