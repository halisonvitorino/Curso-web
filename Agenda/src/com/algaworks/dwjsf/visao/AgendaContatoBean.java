package com.algaworks.dwjsf.visao;

import java.util.ArrayList;
import java.util.List;

import javax.faces.event.ActionEvent;

import com.algaworks.dwjsf.dominio.Contato;

public class AgendaContatoBean {

	private List<Contato> contatos;
	private Contato contato;

	public AgendaContatoBean() {
		this.setContatos(new ArrayList<Contato>());
		this.setContato(new Contato());
	}

	public void incluirContato(ActionEvent event) {
		this.getContatos().add(this.getContato());
		this.setContato(new Contato());
	}

	public List<Contato> getContatos() {
		return contatos;
	}

	public void setContatos(List<Contato> contatos) {
		this.contatos = contatos;
	}

	public Contato getContato() {
		return contato;
	}

	public void setContato(Contato contato) {   
		this.contato = contato; 
	}

}
