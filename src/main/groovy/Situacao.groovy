package sc

public enum Situacao {
	ATIVO("Ativo"),
	AFASTADO("Afastado"),
	FALECIDO("Falecido"),
	OUTRA_COBERTURA("Outra Cobertura");
	
	private String nome
	
	private Situacao(String nome) {
		this.nome = nome
	}

	public String getNome() {
		return nome
	}

}
