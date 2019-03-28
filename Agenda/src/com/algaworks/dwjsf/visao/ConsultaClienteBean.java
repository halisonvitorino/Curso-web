package com.algaworks.dwjsf.visao;

import java.util.ArrayList;
import java.util.List;

import javax.faces.event.ActionEvent;

import com.algaworks.dwjsf.dominio.Cliente;

public class ConsultaClienteBean {

	private List<Cliente> clientes = new ArrayList<Cliente>();

	public void consultar(ActionEvent event) {

		this.getClientes().clear();
		this.getClientes().add(new Cliente(1, "Halison", "Brasilia"));
		this.getClientes().add(new Cliente(2, "Karla", "Goiania"));
		this.getClientes().add(new Cliente(3, "Cristina Melo", "São Paulo"));
		this.getClientes().add(new Cliente(6, "Sebastião Cardoso", "Belo Horizonte"));
		this.getClientes().add(new Cliente(7, "Francisco Borges", "Uberlândia"));
		this.getClientes().add(new Cliente(10, "Juliano Messias", "Rio de Janeiro"));
		this.getClientes().add(new Cliente(11, "Maria Helena", "Uberlândia"));
	}
	
	public List<Cliente> getClientes() {
		return this.clientes;
	}

}
