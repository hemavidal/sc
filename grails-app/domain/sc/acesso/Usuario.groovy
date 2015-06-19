package sc.acesso

import sc.model.Pessoa

class Usuario {

	String login
	String senha
	Pessoa pessoa

    static constraints = {
    	login nullable:false, blank:false
    	senha nullable:false, blank:false
    	pessoa nullable:true
    }
}
