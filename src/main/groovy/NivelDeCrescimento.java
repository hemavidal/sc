package sc;
public enum NivelDeCrescimento {
	APOSTOLO("Apostolo"), 
	PRESBITERO("Presbitero"), 
	PASTOR("Pastor"), 
	DIACONO("Diacono"), 
	LIDER_DE_GRUPO_CASEIRO("Líder de Grupo Caseiro"),
	APONTA_PARA_LIDER("Aponta para Líder"),
	INTEGRANTE_DO_NUCLEO("Integrante do Núcleo"),
	DISCIPULADOR("Discipulador"), 
	INICIANDO_FRUTIFICACAO("Iniciando Frutificação"),
	INICIANDO_COMPANHEIRISMO("Iniciando Companheirismo"),
	ANTIGO_EM_FUNDAMENTOS("Antigo em Fundamentos"),
	NOVO_EM_FUNDAMENTOS("Novo em Fundamentos");

	
	private String nome;
	
	private NivelDeCrescimento(String nome) {
		this.nome = nome;
		
	}

	public String getNome() {
		return this.nome;
	}

	public static NivelDeCrescimento getNivelPeloNome(String nome) {
		for (int i = 0; i < values().length; i++) {
			if (values()[i].getNome().equalsIgnoreCase(nome)) {
				return values()[i];
			}
		}
		return values()[values().length - 1];
	}
}
