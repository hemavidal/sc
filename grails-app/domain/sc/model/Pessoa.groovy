package sc.model

import sc.EstadoCivil
import sc.NivelDeCrescimento
import sc.Procedencia
import sc.Sangue
import sc.Sexo
import sc.Situacao
import sc.model.GrupoCaseiro
import sc.acesso.Usuario

class Pessoa {

    String nome
	String apelido
	Pessoa discipulador
	Pessoa companheiro
	Pessoa conjuge
	NivelDeCrescimento nivelDeCrescimento
	Date nascimento
	Date integracao
	EstadoCivil estadoCivil
	Sexo sexo
	Procedencia procedencia
	Profissao profissao
	Sangue sangue
	List telefones
	String email
	GrupoCaseiro grupoCaseiro
	Situacao situacao
	boolean batizado = true

	Endereco endereco

	static embedded = ['endereco', 'telefones']

	static hasMany = [telefones:String]
    
    static constraints = {
		nome nullable:false, blank:false
		nivelDeCrescimento nullable:false, blank:false 
		estadoCivil nullable:false, blank:false
		sexo nullable:false, blank:false
		procedencia nullable:false, blank:false
		apelido nullable:true, blank:true
		email nullable:true, blank:true
		profissao nullable:true, blank:true
		sangue nullable:true, blank:true
		endereco nullable:true, blank:true
		telefones nullable:true, blank:true
		situacao nullable:false, blank:false
    }

    public String toString() {
    	return nome
    }
}
