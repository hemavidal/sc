package sc;

public enum Sangue {
	A_P("A+"),
	A_N("A-"),
	B_P("B+"),
	B_N("B-"),
	AB_P("AB+"),
	AB_N("AB-"),
	O_P("O+"),
	O_N("O-");

	private String nome;

	Sangue (String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}
}
