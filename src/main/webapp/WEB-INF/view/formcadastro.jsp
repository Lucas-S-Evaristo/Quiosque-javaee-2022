<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="estilo_quiosque.css">
<meta charset="ISO-8859-1">
<title>Cadastro de Cliente</title>
</head>
<body>
<body>
	<div class="principal">
		<header>
			<div class="totais">
				<ul>
					<li id="liTotGeral"><label id="labelTotalGeral">Total
							Geral:</label><input type="text" id="inputTotalGeral" disabled></li>
					<li id="liTotDia"><label id="labelTotalDia">Total do
							Dia:</label><input type="text" id="inputTotalDia" disabled></li>
				</ul>
			</div>
			<nav>
				<ul>
					<li id="home">home</li>
					<li id="estatisticas">estatísticas</li>
				</ul>
			</nav>
			<img src="logo.png" class="logo">
		</header>
		<div class="formulario">
			<form action="salvarCadastro">
				<input type="hidden" name="id" value="${cadastro.id }">
				<section>
					<input type="text" name="nome" required placeholder="NOME"
						class="inputs_form" value="${cadastro.nome }">
				</section>
				<br> <br>
				<section>
					<input type="email" name="email" required placeholder="EMAIL"
						class="inputs_form" value="${cadastro.email }">
				</section>
				<br> <br>
				<section>
					<input type="number" name="telefone" required placeholder="CELULAR"
						class="inputs_form" value="${cadastro.telefone }">
				</section>
				<br> <br>
				<section>
					<input type="text" name="endereco" required placeholder="ENDEREÇO"
						class="inputs_form" value="${cadastro.endereco }">
				</section>
				<br> <br>
				<section class="section_genero">
					<select name="genero">
						<c:forEach items="${tipos }" var="t">
							<option <c:if test="${cadastro.genero == t }">selected</c:if>
								value="${t }">${t.toString() }</option>
						</c:forEach>
					</select>
				</section>
				<br> <br>
				<section>
					<input type="date" name="dataNascimento" required
						value="<fmt:formatDate pattern="yyyy-MM-dd" value="${cadastro.dataNascimento.time }"/>">
				</section>
				<br> <br>
				<section>
					<input type="text" name="prodInteresse" required
						placeholder="PRODUTO DE INTERESSE" class="inputs_form"
						value="${cadastro.prodInteresse }">
				</section>

				<button type="submit" id="botao_cadastrar">CADASTRAR</button>
			</form>
		</div>
	</div>
	<!-- fechamento da div principal -->
</body>
</html>