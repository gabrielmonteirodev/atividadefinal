<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<%@include file="header.jsp" %>
</head>
<body>
<br/><br/>
  	<h1>MENU</h1>
    <h2>Escolha umas das opcoes:</h2>  
    <form action="cadDisc.jsp" method="post">
        <input type="submit" value="Cadastro de Disciplinas/Notas"/>
    </form>
    <br/>

    <form action="consultDisc.jsp" method="post">
        <input type="submit" value="Consultar Disciplina e Notas"/> 
    </form>
    <br/>

    <a href="autentica.jsp">Logout</a>
<script>
// Parte de menu para o usuario poder entrar na parte de cadastro ou consulta de disc e notas.
</script>

</body>
</html>