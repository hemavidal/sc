package sc.acesso

import sc.model.Pessoa

class Usuario {

	String login
	String senha
	Pessoa pessoa
	String tipo

    static constraints = {
    	login nullable:false, blank:false, unique:true
    	senha nullable:false, blank:false
    	pessoa nullable:true
    	tipo inList:["Admin", "Igreja", "Setor", "Grupo Caseiro", "Pessoa"]
    }
}
