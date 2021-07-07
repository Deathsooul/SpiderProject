<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="StyleSheet" type="text/css"
	href="resources/assets/css/estilos.css" media="screen">
<link rel="StyleSheet" type="text/css"
	href="resources/assets/css/bootstrap.css" media="screen">
<title>Fonte de Receitas</title>
</head>
<body>
	<div class="content">
		<div class="header">
			<img class="logo" src="resources/assets/images/logo-ilustrando.jpg">
		</div>
		<div class="menu-lateral">
			<ul>
				<li><a href="index.jsp">PAINEL</a></li>
				<li><a href="./ArrecadacaoDestinacaoController">ARRECADAÇÃO E
						DESTINAÇÃO</a></li>
				<li><a href="./ConfiguracaoController?action=list">CONFIGURAÇÕES</a></li>
				<li class="active"><a href="./FonteReceitaController">FONTE
						DE RECEITAS</a></li>
			</ul>
		</div>
		<div class="sub-header">
			<div class="sub-header-title">
				<p>PAINEL</p>
			</div>
			<!--  <div class="sub-header-total">
				<button class="btn-blue">Salvar</button>
			</div>-->
		</div>
		<div class="sub-menu inner">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 content-details">
					<div class="content-box">
						<h4>CONTRIBUINTES</h4>
						<div class="box inner-box bg-white">
							<form name="contribuinte"
								action="./FonteReceitaController?action=salvarContribuinte"
								method="post">
								<div class="row">
									<div class=" col-lg-8 col-md-8 col-sm-8">
										<p>Insira o Nome dos Contribuintes</p>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-8 col-md-8 col-sm-8"
										style="margin-bottom: 15px;">
										<input name="nomeContribuinte" class="form-control input-box"
											placeholder="Nome do Contribuinte" type="text">
									</div>
								</div>
								<div class="row">
									<div class="col-lg-8 col-md-8 col-sm-8"
										style="margin-bottom: 15px;">
										<button type="submit" class="btn-blue">Salvar</button>
									</div>
								</div>
							</form>
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8"
									style="margin-bottom: 15px;">

									<c:if test="${erroContribuinte != ''}">
										<c:out value="${erroContribuinte}"></c:out>
									</c:if>

									<c:if test="${sucessoContribuinte!= ''}">
										<c:out value="${sucessoContribuinte}"></c:out>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>