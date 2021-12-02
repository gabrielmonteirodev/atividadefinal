<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro das Disciplina e suas Notas</title>
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
    <br/><br/>
    <h4>Cadastre sua a disciplina e nota final</h4>

    <form action="cadDisc.jsp" method="post" id="tabelaCadastro">
        Nome da Disciplina: <input id="nomeDisciplina" type="text"/><br/>
        Nota Final: <input id="notaFinal" type="text" onkeypress="return soNumero();" /><br/>
        <input type="button" id="tabelaCadastro" value="Cadastrar" onclick="cadsDisc();"/>

    </form>
    <table id="registros" border="1">
        <tr>
            <th>Nome da Disciplina</th>
            <th>Nota Final</th>       
        </tr>

        <tr>
            <td>Prog. Web</td>
            <td>8</td>
            
        </tr>
        
        <tr>
            <td>Redes</td>
            <td>9</td>
        </tr>
        
        <tr>
            <td>Proj. Integrador 4</td>
            <td>6</td>
        </tr>
        
        <tr>
            <td>Calculo</td>
            <td>4</td>
        </tr>
        
        <tr>
            <td>PSAD</td>
            <td>8</td>
        </tr>
        
    </table>
	<form action="menu.jsp">
		<input type="submit" value="Voltar ao Menu"/>
	</form>
</body>
</html>