<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<f:view>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Inscreva-se</title>
	</head>
	
	<body>
		<h:form>
			<h:outputText value="#{inscricaoBean.mensagem}" rendered="#{not empty inscricaoBean.mensagem}"/>
			
			<br />
			
			<h:outputText value="Nome: " />
			<h:inputText value="#{inscricaoBean.nome}" />
			
			<br />
			
			<h:outputText value="E-mail: " />
			<h:inputText value="#{inscricaoBean.email}" />
			
			<br />
			
			<h:commandButton action="#{inscricaoBean.inscrever}" value="Inscreva-se" />
		
		</h:form>	
     </body>
     
</f:view>
</html>