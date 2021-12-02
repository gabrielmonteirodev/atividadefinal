<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consulta Disciplinas/Notas</title>
<%@include file="script.jsp"%>
<%@include file="header.jsp" %>
<script type="text/javascript">

    nDisc = dcGlobal;
    nFinal = noteGlobal;
    var tabela = document.getElementById("registros");


    var novaLinha = tabela.insertRow(-1);
    var novoCadastroNome = novaLinha.insertCell(0);
    var novoCadastroNota = novaLinha.insertCell(1);

    novoCadastroNome.innerHTML = nDisc;
    novoCadastroNota.innerHTML = nFinal;
</script>
</head>
<body>
    <h3>Consulte suas notas e disciplinas</h3>
    <table id="registros" border="1">
        <tr>
            <th>Nome da Disciplina</th>
            <th>Nota Final</th>
            <th>AP/RP</th>
        </tr>

        <tr>
            <td>Prog. Web</td>
            <td>8</td>
            <td>AP</td>
        </tr>
        
        <tr>
            <td>Redes</td>
            <td>9</td>
            <td>AP</td>
        </tr>
        
        <tr>
            <td>Proj.Integrador 4</td>
            <td>6</td>
            <td>AP</td>
        </tr>
        
        <tr>
            <td>Calculo</td>
            <td>4</td>
            <td>RP</td>
        </tr>
        
        <tr>
            <td>PSAD</td>
            <td>8</td>
            <td>RP</td>
        </tr>
    </table>
    <form action="menu.jsp">
		<input type="submit" value="Voltar ao Menu"/>
	</form>
</body>
</html>