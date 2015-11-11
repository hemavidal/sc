package sc.model
import sc.acesso.Usuario

class GrupoCaseiro {

	String nome
	
	static hasMany = [pessoas:Pessoa, usuarios:Usuario]
	static belongsTo = [setor:Setor]
	
    static constraints = {
    }

    public String toString() {
    	return nome
    }
}
