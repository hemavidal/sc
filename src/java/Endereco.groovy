package sc

class Endereco {
	String rua
	Integer numero
	String complemento
	String bairro
	
	public Endereco(String rua, Integer numero, String complemento, String bairro) {
		this.bairro = bairro;
		this.complemento = complemento;
		this.numero = numero;
		this.rua = rua;
	}
}
