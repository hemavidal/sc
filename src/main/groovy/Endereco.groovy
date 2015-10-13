package sc

class Endereco {
	String estado
	String cidade
	String bairro
	String rua
	Integer numero
	String complemento

	
	public Endereco(String estado, String cidade, String rua, Integer numero, String complemento, String bairro) {
		this.estado = estado;
		this.cidade = cidade;
		this.bairro = bairro;
		this.complemento = complemento;
		this.numero = numero;
		this.rua = rua;
	}
}
