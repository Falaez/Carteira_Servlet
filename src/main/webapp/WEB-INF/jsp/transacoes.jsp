<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de transacoes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
</head>
<body class="container">
	<form action="<c:url value="/transacoes"/>" method="POST">
		<div>
			<label for="ticker">Ticker</label> 
			<input id="ticker" class="form-control" name="ticker">
		</div>
		<div>
			<label for="data">Data</label> 
			<input id="data" class="form-control" name="data">
		</div>
		<div>
			<label for="preco">Preço</label> 
			<input id="preco" class="form-control" name="preco">
		</div>
		<div>
			<label for="quantidade">quantidade</label> 
			<input id="quantidade" class="form-control" name="quantidade">
		</div>
		<div>
			<label for="tipo">Tipo</label> 
			<input id="tipo" class="form-control" name="tipo">
		</div>
		
		<input type="submit" value="gravar" class="mt-2 btn-primary">
	</form>

	<h1 class="text-center">Lista de transacoes</h1>
	<table class="table table-hover table-striped table-bordered">
		<thead>
			<tr>
				<th>TICKER</th>
				<th>DATA</th>
				<th>PRECO</th>
				<th>QUANTIDADE</th>
				<th>TIPO</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${transacoes}" var="t">
				<tr>
					<td>${t.ticker}</td>
					<td>${t.data}</td>
					<td>${t.preco}</td>
					<td>${t.quantidade}</td>
					<td>${t.tipo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>