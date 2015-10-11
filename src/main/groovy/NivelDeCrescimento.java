package sc;
public enum NivelDeCrescimento {
	APOSTOLO("Apostolo"), 
	PRESBITERO("Presbitero"), 
	DIACONO("Diacono"), 
	DISCIPULADOR("Discipulador"), 
	INICIANDO_COMPANHEIRISMO("Iniciando Companheirismo"),
	NOVO_EM_FUNDAMENTOS("Novo em Fundamentos"),
	ANTIGO_EM_FUNDAENTOS("Antigo em Fundamentos");
	
	private String nome;
	
	private NivelDeCrescimento(String nome) {
		this.nome = nome;
		
	}
}
