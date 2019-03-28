<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<f:view>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Tabela de Consulta de Clientes</title>
	</head>

	<body>	
		<h:form id="frm">
			<h:commandButton value	="Consultar" actionListener="#{consultaClienteBean.consultar}"/>
			
			<h:dataTable value		="#{consultaClienteBean.clientes}" 
			             var		="item" 
			             border		="1" 
			             rendered	= "#{not empty consultaClienteBean.clientes}">
				<h:column>
					<h:outputText value="#{item.codigo}"/>
				</h:column>
				<h:column>
					<h:outputText value="#{item.nome}"/>
				</h:column>
				<h:column>
					<h:outputText value="#{item.cidade}"/>
				</h:column>
			</h:dataTable>
		
		</h:form>
	
	</body>
</f:view>
</html>