package sc.model

import sc.Endereco
import sc.EstadoCivil
import sc.NivelDeCrescimento
import sc.Procedencia
import sc.Sangue
import sc.Sexo
import sc.model.GrupoCaseiro
import sc.acesso.Usuario

class Pessoa {

    String nome
	String apelido
	Pessoa discipulador
	Pessoa companheiro
	NivelDeCrescimento nivelDeCrescimento
	Date nascimento
	Date integracao
	EstadoCivil estadoCivil
	Sexo sexo
	Procedencia procedencia
	Profissao profissao
	Sangue sangue
	Endereco endereco
	//List telefones
	String email
	GrupoCaseiro grupoCaseiro
	Usuario usuario

	static embedded = ['endereco']
    
    static constraints = {
		nome nullable:false, blank:false
		apelido nullable:false, blank:false
		nivelDeCrescimento nullable:false, blank:false 
		estadoCivil nullable:false, blank:false
		sexo nullable:false, blank:false
		procedencia nullable:false, blank:false
		endereco nullable:true
		profissao nullable:true
		grupoCaseiro nullable:true
		usuario nullable:true
    }

    public String toString() {
    	return nome
    }
}
