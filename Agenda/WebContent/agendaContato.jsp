<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<f:view>
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agenda de Contatos</title>
	</head>

	<body>
		<h:form>
			<h:outputText value="Nome: " />
			<h:inputText value="#{agendaContatoBean.contato.nome}" />
			
			<br />
			
			<h:outputText value="Endereço: " />			
			<h:inputText value="#{agendaContatoBean.contato.endereco}" />
			
			<br />
			
			<h:outputText value="Sexo: " />
			<h:inputText value="#{agendaContatoBean.contato.sexo}" />
			
			<br />
			
			<h:commandButton actionListener="#{agendaContatoBean.incluirContato}" value="Incluir" />
			
			<br />
			<br />			
			
			<h:dataTable var="obj" value="#{agendaContatoBean.contatos}" border="3" width="50%">
				<h:column>
					<f:facet name="header">
						<h:outputText value="Nome" />
					</f:facet>
					<h:outputText value="#{obj.nome}" />
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<h:outputText value="Endereço" />
					</f:facet>
					<h:outputText value="#{obj.endereco}" />
				</h:column>
				
				<h:column>
					<f:facet name="header">
						<h:outputText value="Sexo" />
					</f:facet>
					<h:outputText value="#{obj.sexo}" />
				</h:column>				
			</h:dataTable>
		</h:form>
	</body>
</f:view>
</html>