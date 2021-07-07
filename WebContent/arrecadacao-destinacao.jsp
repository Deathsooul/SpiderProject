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
<title>Arrecadação e Destinação</title>
</head>
<body>
	<div class="content">
		<div class="header">
			<img class="logo" src="resources/assets/images/logo-ilustrando.jpg">
		</div>
		<div class="menu-lateral">
			<ul>
				<li><a href="index.jsp">PAINEL</a></li>
				<li class="active"><a href="./ArrecadacaoDestinacaoController">ARRECADAÇÃO
						E DESTINAÇÃO</a></li>
				<li><a href="./ConfiguracaoController">CONFIGURAÇÕES</a></li>
				<li><a href="./FonteReceitaController">FONTE DE RECEITAS</a></li>
			</ul>
		</div>
		<div class="sub-header">
			<div class="sub-header-title">
				<p>ARRECADAÇÃO E DESTINAÇÃO DE VERBA</p>
			</div>
			<div class="sub-header-total">
				<button class="btn-blue">Salvar</button>
			</div>
		</div>
		<div class="sub-menu inner">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 content-details">
					<div class="content-box">
						<h4 class="arrecadacao">ARRECADAÇÃO</h4>
						<div class="box inner-box bg-green">
							<div class="row">
								<div class=" col-lg-4 col-md-4 col-sm-4">
									<p>Valor</p>
								</div>
								<div class=" col-lg-4 col-md-4 col-sm-4">
									<p>Fonte</p>
								</div>
								<div class=" col-lg-4 col-md-4 col-sm-4">
									<p>Mês/Ano</p>
								</div>
							</div>
							<div class="row">
								<form name="item"
									action="./ArrecadacaoDestinacaoController?action=salvarArrecadacao"
									method="post">
									<div class=" col-lg-4 col-md-4 col-sm-4">
										<input name="valorArrecadacao" class="form-control input-box"
											placeholder="R$" type="number">
									</div>
									<div class=" col-lg-4 col-md-4 col-sm-4">
										<div class="form-group">
											<select name="idContribuinte" class="form-control input-box">
												<option value="0">Escolha a Fonte</option>
												<c:forEach items="${contribuintes}" var="contribuinte">
													<option value="${contribuinte.id}">${contribuinte.nome}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class=" col-lg-4 col-md-4 col-sm-4">
										<select name="mesArrecadacao" class="form-control input-box">
											<option value="">Mês/Ano</option>
											<option value="2018-05-01">MAI/2018</option>
											<option value="2018-06-01">JUN/2018</option>
											<option value="2018-07-01">JUL/2018</option>
											<option value="2018-08-01">AGO/2018</option>
											<option value="2018-09-01">SET/2018</option>
											<option value="2018-10-01">OUT/2018</option>
											<option value="2018-11-01">NOV/2018</option>
											<option value="2018-12-01">DEZ/2018</option>
										</select>
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

										<c:if test="${erroArrecadacao != ''}">
											<c:out value="${erroArrecadacao}"></c:out>
										</c:if>

										<c:if test="${sucessoArrecadacao != ''}">
											<c:out value="${sucessoArrecadacao}"></c:out>
										</c:if>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 content-details">
					<div class="content-box">
						<h4 class="saidas">DESTINAÇÃO DA VERBA</h4>
						<div class="box inner-box bg-red">
							<div class="row">
								<div class=" col-lg-4 col-md-4 col-sm-4">
									<p>Valor</p>
								</div>
								<div class=" col-lg-4 col-md-4 col-sm-4">
									<p>Saída</p>
								</div>
								<div class=" col-lg-4 col-md-4 col-sm-4">
									<p>Mês/Ano</p>
								</div>
							</div>
							<div class="row">
								<form name="item"
									action="./ArrecadacaoDestinacaoController?action=salvarDestinatario"
									method="post">
									<div class=" col-lg-4 col-md-4 col-sm-4">
										<input name="valorDestinatario" class="form-control input-box"
											placeholder="R$" type="number">
									</div>
									<div class=" col-lg-4 col-md-4 col-sm-4">
										<div class="form-group">
											<select name="idItem" class="form-control input-box">
												<option value="0">Escolha o item</option>
												<c:forEach items="${itens}" var="item">
													<option value="${item.id}">${item.nomeItem}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class=" col-lg-4 col-md-4 col-sm-4">
										<select name="mesDestinatario" class="form-control input-box">
											<option value="">Mês/Ano</option>
											<option value="2018-05-01">MAI/2018</option>
											<option value="2018-06-01">JUN/2018</option>
											<option value="2018-07-01">JUL/2018</option>
											<option value="2018-08-01">AGO/2018</option>
											<option value="2018-09-01">SET/2018</option>
											<option value="2018-10-01">OUT/2018</option>
											<option value="2018-11-01">NOV/2018</option>
											<option value="2018-12-01">DEZ/2018</option>
										</select>
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

										<c:if test="${erroDestinatario != ''}">
											<c:out value="${erroDestinatario}"></c:out>
										</c:if>

										<c:if test="${sucessoDestinatario != ''}">
											<c:out value="${sucessoDestinatario}"></c:out>
										</c:if>
									</div>
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