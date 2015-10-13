package sc.model

class Endereco {
	String estado
	String cidade
	String bairro
	String rua
	int numero
	String complemento

	static constraints = {
		estado(nullable:true, blank:true)
		cidade(nullable:true, blank:true)
		bairro(nullable:true, blank:true)
		rua(nullable:true, blank:true)
		numero(nullable:true, blank:true)
		complemento(nullable:true, blank:true)
	}
}