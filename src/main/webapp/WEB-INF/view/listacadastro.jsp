<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style>
/* ESTATÍSTICAS */
.estatisticas {
	margin-top: 5em;
	height: 5em;
}

.periodo input {
	width: 3em;
}

.periodo {
	margin-bottom: 5em;
}
</style>

<title>Lista de Cadastro</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Endereço</th>
			<th>Telefone</th>
			<th>Email</th>
			<th>Produto de Interesse</th>
			<th>Data de Nascimento</th>
			<th>Gênero</th>
			<th>Alterar</th>
			<th>Excluir</th>

		</tr>
		<c:forEach items="${cadastros }" var="c">
			<tr>
				<td>${c.id }</td>
				<td>${c.nome }</td>
				<td>${c.endereco }</td>
				<td>${c.telefone }</td>
				<td>${c.email }</td>
				<td>${c.prodInteresse }</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy"
						value="${c.dataNascimento.time }" /></td>
				<td>${c.genero.toString() }</td>
				<td><a href="alterarCliente?idCliente=${c.id }">Alterar</a></td>
				<td><a href="excluirCliente?idCliente=${c.id }"
					onclick="return confirm('Deseja Excluir')">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>

	<!-- ESTATÍSTICAS -->
	<!-- GENÊRO -->
	<table border="1" cellpadding="10px" class="estatisticas">
		<tr>
			<th>Masculino</th>
			<th>Feminino</th>
		</tr>
		<c:forEach items="${cadastros }" var="c">
			<tr>
				<td>${c.genero.toString() }</td>
				<td>${c.genero.toString() }</td>
			</tr>
		</c:forEach>
	</table>
	<!-- FAIXA ETÁRIA -->
	<table border="1" cellpadding="10px" class="estatisticas">
		<tr>
			<th>Jovem</th>
			<th>Adulto</th>
			<th>Idoso</th>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<!-- DIA DA SEMANA -->
	<div class="dia_semana">
		<table border="1" cellpadding="10px" class="estatisticas">
			<tr>
				<th>Segunda</th>
				<th>Terça</th>
				<th>Quarta</th>
				<th>Quinta</th>
				<th>Sexta</th>
				<th>Sábado</th>
				<th>Domingo</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
	<!-- PERIODO DO DIA -->
	<table border="1" cellpadding="10px" class="estatisticas periodo">
		<tr>
			<th>Segunda</th>
			<th>Terça</th>
			<th>Quarta</th>
			<th>Quinta</th>
			<th>Sexta</th>
			<th>Sábado</th>
			<th>Domingo</th>
		</tr>
		<tr>
			<td>Manha: <input type="text"></td>
			<td>Manha: <input type="text"></td>
			<td>Manha: <input type="text"></td>
			<td>Manha: <input type="text"></td>
			<td>Manha: <input type="text"></td>
			<td>Manha: <input type="text"></td>
			<td>Manha: <input type="text"></td>
		</tr>
		<tr>
			<td>Tarde: <input type="text"></td>
			<td>Tarde: <input type="text"></td>
			<td>Tarde: <input type="text"></td>
			<td>Tarde: <input type="text"></td>
			<td>Tarde: <input type="text"></td>
			<td>Tarde: <input type="text"></td>
			<td>Tarde: <input type="text"></td>
		</tr>
		<tr>
			<td>Noite: <input type="text"></td>
			<td>Noite: <input type="text"></td>
			<td>Noite: <input type="text"></td>
			<td>Noite: <input type="text"></td>
			<td>Noite: <input type="text"></td>
			<td>Noite: <input type="text"></td>
			<td>Noite: <input type="text"></td>
		</tr>
	</table>


</body>
</html>