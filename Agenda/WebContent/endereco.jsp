<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<f:view>
<body>


<h:form id="frm">
	<h:panelGrid columns="2">
		<h:outputText value="Estado: "/>
			<h:selectOneMenu value="#{enderecoBean.estado}" 
							  valueChangeListener="#{enderecoBean.estadoAlterado}" 
							  onchange= "submit();">
				<f:selectItems value="#{enderecoBean.estados}"/>
			</h:selectOneMenu>	
		
		<h:outputText value="Cidade: "/>
			<h:selectOneMenu value="#{enderecoBean.cidade}">
				<f:selectItems value="#{enderecoBean.cidades}"/>
			</h:selectOneMenu>
		
		<h:outputText/>
		<h:commandButton value="Enviar" actionListener="#{enderecoBean.enviar}"/>
	</h:panelGrid>
</h:form>


</body>
</f:view>
</html>