package sc.model
import sc.acesso.Usuario

class Setor {

    String nome
	static hasMany = [gruposCaseiros:GrupoCaseiro, usuarios:Usuario]
	static belongsTo = [igreja:Igreja]
	
    static constraints = {
		nome(nullable:false, blank:false)
    }

    public String toString() {
    	return nome
    }
}
