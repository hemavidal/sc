package sc.model

class GrupoCaseiro {

	String nome
	
	static hasMany = [pessoas:Pessoa]
	static belongsTo = [setor:Setor]
	
    static constraints = {
    }

    public String toString() {
    	return nome
    }
}
