package com.algaworks.dwjsf.visao;

import java.util.ArrayList;
import java.util.List;
import javax.faces.component.UIInput;
import javax.faces.event.ActionEvent;
import javax.faces.event.ValueChangeEvent;
import javax.faces.model.SelectItem;

public class EnderecoBean {

	private List<SelectItem> estados = new ArrayList<SelectItem>();
	private List<SelectItem> cidades = new ArrayList<SelectItem>();
	private String estado;
	private String cidade;

	public EnderecoBean() {
		this.estados.add(new SelectItem(null, "Selecione"));
		this.estados.add(new SelectItem("MG", "Minas Gerais"));
		this.estados.add(new SelectItem("SP", "Sao Paulo"));
	}

	public void estadoAlterado(ValueChangeEvent event) {
		String novoEstado = (String) event.getNewValue();
		this.cidade = null;
		this.cidades.clear();
		this.cidades.add(new SelectItem(null, "Selecione"));

		if (novoEstado != null && novoEstado.contentEquals("MG")) {
			this.cidades.add(new SelectItem("UDI", "Uberlandia"));
			this.cidades.add(new SelectItem("BH", "Belo Horizonte"));
		} else if (novoEstado != null && novoEstado.contentEquals("SP")) {
			this.cidades.add(new SelectItem("SP", "São Paulo"));
			this.cidades.add(new SelectItem("RIB", "Ribeirão Preto"));
			this.cidades.add(new SelectItem("CAM", "Campinas"));
		}
	}
	
	public void enviar(ActionEvent event) {
		System.out.println("Estado selecionado: " + this.getEstado() + " - Cidade selecionada: " + this.getCidade());
		
	}

	public List<SelectItem> getEstados() {
		return estados;
	}

	public void setEstados(List<SelectItem> estados) {
		this.estados = estados;
	}

	public List<SelectItem> getCidades() {
		return cidades;
	}

	public void setCidades(List<SelectItem> cidades) {
		this.cidades = cidades;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

}
