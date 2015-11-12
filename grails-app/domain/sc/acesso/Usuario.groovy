package sc.acesso

import sc.model.*

class Usuario {

	String login
	String senha
	String tipo
	Pessoa pessoa

    Igreja igreja
    Setor setor
    GrupoCaseiro grupoCaseiro

    static constraints = {
        login  nullable :false, blank:false, unique:true
        senha  nullable :false, blank:false
        tipo   inList   :["admin", "igreja", "setor", "grupoCaseiro", "pessoa"]
        pessoa nullable :true, blank:true
        igreja nullable :true
        setor  nullable :true
        grupoCaseiro nullable :true
    }
}
