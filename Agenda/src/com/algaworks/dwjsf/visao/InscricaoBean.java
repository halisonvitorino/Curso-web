package com.algaworks.dwjsf.visao;

public class InscricaoBean {
	
	private String nome;
	private String email;
	private String mensagem;
	
	public String inscrever() {
		
		if(nome == null || nome.length() < 10 || "".equals(email.trim())) {
			
			this.setMensagem("Informe corretamente o nome e email");
			return null;
		}
		
		boolean duplicado = false;
		if (duplicado) {
			
			return "duplicado";
		}
		
		else return "sucesso";
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

}
