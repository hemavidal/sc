package sc;

public enum Procedencia {
	CONVERTEU_SE_EM_NOSSO_MEIO("Converteu-se em nosso meio"),
	ENVOLVIMENTO_EVANGELICO_ANTES("Envolvimento evangélico antes"),
	VEIO_A_NOS_CONVERTIDO("Veio a nós convertido"),
	OUTRAS("Outras");

	private String nome;
	
	private Procedencia(String nome) {
		this.nome = nome;
		
	}

	public String getNome() {
		return this.nome;
	}

	public static Procedencia getProcedenciaPeloNome(String nome) {
		for (int i = 0; i < values().length; i++) {
			if (values()[i].getNome().equalsIgnoreCase(nome)) {
				return values()[i];
			}
		}
		return values()[values().length - 1];
	}
}
