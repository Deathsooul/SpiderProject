<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="StyleSheet" type="text/css" href="resources/assets/css/estilos.css" media="screen" >
<link rel="StyleSheet" type="text/css" href="resources/assets/css/bootstrap.css" media="screen" >
<title>Painel</title>
</head>
<body>
	<div class="content">
		<div class="header">
			<img class="logo" src="resources/assets/images/logo-ilustrando.jpg">
		</div>
		<div class="menu-lateral">
			<ul>
				<li class="active"><a href="index.jsp">PAINEL</a></li>
				<li><a href="./ArrecadacaoDestinacaoController">ARRECADAÇÃO E DESTINAÇÃO</a></li>
				<li><a href="./ConfiguracaoController">CONFIGURAÇÕES</a></li>
				<li><a href="./FonteReceitaController">FONTE DE RECEITAS</a></li>
			</ul>
		</div>
		<div class="sub-header">
	    	<div class="sub-header-title">
	        	<p>PAINEL</p>
	    	</div>
			<div class="sub-header-total">
				<p>Arrecadação Total <span class="arrecadacao">R$ 10.000,00</span></p>
				<p>Total de Saídas <span class="saidas">R$ 7.500,00</span> </p>    
			</div>
		</div>
		<div class="sub-menu">
			<div class="row">
				<div class="col-lg-2 col-md-2 col-sm-2">
					<a href="index.jsp?MAI">
						<p> MAI/18</p>
						<strong><p class="arrecadacao">R$ 10.000,00</p></strong>
						<strong><p class="saidas">R$ 7.500,00</p></strong>
					</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2">
					<a href="index.jsp?JUN">
						<p> JUN/18</p>
						<strong><p class="arrecadacao">R$ 10.000,00</p></strong>
						<strong><p class="saidas">R$ 7.500,00</p></strong>
					</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2">
					<a href="index.jsp?JUL">
						<p> JUL/18</p>
						<strong><p class="arrecadacao">R$ 10.000,00</p></strong>
						<strong><p class="saidas">R$ 7.500,00</p></strong>
					</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2">
					<a href="index.jsp?AGO">
						<p> AGO/18</p>
						<strong><p class="arrecadacao">R$ 10.000,00</p></strong>
						<strong><p class="saidas">R$ 7.500,00</p></strong>
					</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2">
					<a href="index.jsp?SET">
						<p> SET/18</p>
						<strong><p class="arrecadacao">R$ 10.000,00</p></strong>
						<strong><p class="saidas">R$ 7.500,00</p></strong>
					</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2">
					<a href="index.jsp?OUT">
						<p> OUT/18</p>
						<strong><p class="arrecadacao">R$ 10.000,00</p></strong>
						<strong><p class="saidas">R$ 7.500,00</p></strong>
					</a>
				</div>
			</div>
			<div class="row content-details">
				<div class="col-lg-6 col-md-6 col-sm-6 content-box">
					<h4 class="arrecadacao">ARRECADAÇÃO MAI/18</h4>
   					<div class="box bg-green"> 
   						<p>R$100,00 | Sanepar</p>
   						<p>R$500,00 | Copel</p>
   						<p>R$1000,00 | Supermercado Condor</p>
   					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 content-box">
					<h4 class="saidas">DESTINAÇÃO DA VERBA MAI/18</h4>
   					<div class="box bg-red">
   						<p>R$250,00 | Água</p>
   						<p>R$500,00 | Luz</p>
   						<p>R$5000,00 | Alimentação</p> 
   					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>