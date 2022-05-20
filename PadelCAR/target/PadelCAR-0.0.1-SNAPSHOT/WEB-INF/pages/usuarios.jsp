<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>

<head>
<link href="<c:url value='/PadelCAR/static/css/estilosApp.css' />"
	rel="stylesheet"></link>
<link
	href="<c:url value='https://fonts.googleapis.com/css?family=Abril+Fatface|Macondo'/>"
	rel="stylesheet" />
<link href="/PadelCAR/static/css/bootstrap.css" rel="stylesheet"
	media="screen" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/PadelCAR/static/js/bootstrap.js"></script>
<script src="/PadelCAR/static/js/funcionesApp.js"></script>
</head>



<body>
	<div class="container">
		<header>
			<div id="titulos">
				<div id="encabezado" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#encabezado" data-slide-to="0" class="active"></li>
						<li data-target="#encabezado" data-slide-to="1"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="/PadelCAR/static/img/pista.jpg" alt="Pista"
								style="min-height: 5em; max-height: 16em; margin-left: auto; margin-right: auto;">
							<div class="carousel-caption">
								<h3>Padel CAR</h3>
								<p>Controla las pistas de p�del</p>
							</div>
						</div>

						<div class="item">
							<img src="/PadelCAR/static/img/raqueta.jpg" alt="Raqueta"
								style="min-height: 5em; max-height: 16em; margin-left: auto; margin-right: auto;">
							<div class="carousel-caption">
								<h3>Padel CAR</h3>
								<p>Selecciona la pista que deseas</p>
							</div>
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#encabezado"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Anterior</span>
					</a> <a class="right carousel-control" href="#encabezado"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Siguiente</span>
					</a>
				</div>
			</div>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="/PadelCAR" title="Inicio"><span
							class="glyphicon glyphicon-home"></span></a>
					</div>
					<ul class="nav navbar-nav">
						<li><a href="clientes">NUEVO USUARIO</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">RESERVAS <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="pagEnConstruccion">NUEVA RESERVA</a></li>
								<li><a href="pagEnConstruccion">MODIFICAR RESERVA</a></li>
							</ul></li>
						<li><a href="pagEnConstruccion">VENTAJAS DEL CLUB</a></li>
						<li><a href="pagEnConstruccion">CONTACTO</a></li>
						
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login"><span
								class="glyphicon glyphicon-log-in"></span> Inicia sesi�n</a></li>
					</ul>
				</div>
			</nav>

		</header>


		<spring:url value="cliente/add" var="addURL" />
		<a href="${addURL }" class="btn btn-success"> NUEVO USUARIO </a>


		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Apellido 1</th>
						<th>Email</th>
						<th colspan="2"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="cliente">
						<tr>
							<td>${cliente.nombre}</td>
							<td>${cliente.apellido1}</td>
							<td>${cliente.mail}</td>
							<td><spring:url value="/cliente/update/${cliente.id }"
									var="updateURL" /> <a href="${updateURL }"> <span
									class="glyphicon glyphicon-refresh simboloColor"> </span>
							</a></td>
							<td><spring:url value="/cliente/delete/${cliente.id }"
									var="deleteURL" /> <a href="${deleteURL }"> <span
									class="glyphicon glyphicon-trash simboloColor"> </span></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>



		<footer
			style="position: relative; text-align: center; background-color: #333; color: #848484;">
			<div>
				<small> - Carlos, Alfredo y Rafaela - </small> <br> <small>
					*Copyright &copy; 2022. All rights reserved.* </small>
			</div>
		</footer>

	</div>
</body>
</html>


