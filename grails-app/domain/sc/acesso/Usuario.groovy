package sc.acesso

import sc.model.Pessoa

class Usuario {

	String login
	String senha
	String tipo
	static hasOne = [pessoa:Pessoa]

    static constraints = {
    	login  nullable :false, blank:false, unique:true
    	senha  nullable :false, blank:false
    	tipo   inList   :["admin", "igreja", "setor", "grupoCaseiro", "pessoa"]
    	pessoa nullable :true
    }
}
