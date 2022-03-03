package br.projeto.sp.cotia.hellospring.model;

import java.util.Calendar;

import org.springframework.format.annotation.DateTimeFormat;

public class Cadastro {
	private Long id;
	private String nome;
	private String endereco;
	private String telefone;
	private String email;
	private String prodInteresse;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Calendar dataNascimento;
	private TipoGenero genero;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProdInteresse() {
		return prodInteresse;
	}

	public void setProdInteresse(String prodInteresse) {
		this.prodInteresse = prodInteresse;
	}

	public Calendar getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public boolean isNascido() {
		return Calendar.getInstance().after(dataNascimento);
	}

	public TipoGenero getGenero() {
		return genero;
	}

	public void setGenero(TipoGenero genero) {
		this.genero = genero;
	}
}
