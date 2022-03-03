package br.projeto.sp.cotia.hellospring.model;

public enum TipoGenero {
	MASCULINO("Masculino"), FEMININO("Feminino");

	String gen;

	private TipoGenero(String gen) {
		this.gen = gen;
	}

	@Override
	public String toString() {
		return this.gen;
	}
}
