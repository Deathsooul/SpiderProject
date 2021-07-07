<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="StyleSheet" type="text/css" href="resources/assets/css/estilos.css" media="screen" >
<link rel="StyleSheet" type="text/css" href="resources/assets/css/bootstrap.css" media="screen" >
<title>Configurações</title>
</head>
<body>
	<div class="content">
		<div class="header">
			<img class="logo" src="resources/assets/images/logo-ilustrando.jpg">
		</div>
		<div class="menu-lateral">
			<ul>
				<li><a href="index.jsp">PAINEL</a></li>
				<li><a href="./ArrecadacaoDestinacaoController">ARRECADAÇÃO E DESTINAÇÃO</a></li>
				<li class="active"><a href="./ConfiguracaoController">CONFIGURAÇÕES</a></li>
				<li><a href="./FonteReceitaController">FONTE DE RECEITAS</a></li>
			</ul>
		</div>
		<div class="sub-header">
	    	<div class="sub-header-title">
	        	<p>PAINEL</p>
	    	</div>
			<!-- <div class="sub-header-total">
				<button class="btn-blue">Salvar</button>
			</div>  -->
		</div>
		<div class="sub-menu inner">			
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 content-details">
					<div class="content-box">
					<h4>CATEGORIAS</h4>
						<div class="box inner-box bg-white">
							<div class="row">
								<div class=" col-lg-8 col-md-8 col-sm-8">
									<p>Nome da Categoria</p>
								</div>
							</div>
							<form name="categoria" action="./ConfiguracaoController?action=salvarCategoria" method="post">
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8" style="margin-bottom: 15px;">
									<input name="nomeCategoria" class="form-control input-box" placeholder="Nome da Categoria" type="text">
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8" style="margin-bottom: 15px;">
									<button type="submit" class="btn-blue">Salvar</button>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8" style="margin-bottom: 15px;">
									
									<c:if test="${erroCategoria != ''}">
										<c:out value="${erroCategoria}"></c:out> 
									</c:if>
									
									<c:if test="${sucessoCategoria != ''}">
										<c:out value="${sucessoCategoria}"></c:out>
									</c:if>
								</div>
							</div>
							</form>
	   					</div>
					</div>   					
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 content-details">
					<div class="content-box">
						<h4>ITENS</h4>
	   					
	   					<div class="box inner-box bg-white">
	   						<form name="item" action="./ConfiguracaoController?action=salvarItem" method="post">
							<div class="row">
								<div class=" col-lg-6 col-md-6 col-sm-6">
									<p>Nome do Item</p>
								</div>
								<div class=" col-lg-6 col-md-6 col-sm-6">
									<p>Categoria</p>
								</div>
							</div>
							<div class="row">
								<div class=" col-lg-6 col-md-6 col-sm-6">
									<input name="nomeItem" class="form-control input-box" placeholder="Informe o Item" type="text">
								</div>
								<div class=" col-lg-6 col-md-6 col-sm-6">
									<div class="form-group">
									  <select name="idCategoria" class="form-control input-box">
									  	
									  	<option value="0">Selecione..</option>
									  	 <c:forEach items="${categorias}" var="categoria">
									  		<option value="${categoria.id}">${categoria.nome}</option>
									     </c:forEach>
									  </select>
									</div>
								</div>						
							</div>
							
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8" style="margin-bottom: 15px;">
									<button type="submit" class="btn-blue">Salvar</button>
								</div>
							</div>
							</form>
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8" style="margin-bottom: 15px;">
									
									<c:if test="${erroItem != ''}">
										<c:out value="${erroItem}"></c:out> 
									</c:if>
									
									<c:if test="${sucessoItem != ''}">
										<c:out value="${sucessoItem}"></c:out>
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