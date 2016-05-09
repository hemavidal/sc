package sc.acesso

class Permissao {

	String classe
	Long classeId

	static hasMany = [usuarios:Usuario]
	static belongsTo = Usuario

    static constraints = {
    	classe inList:["Igreja", "Setor", "GrupoCaseiro", "Pessoa"], nullable: false
    	classeId nullable:false
    }
}
