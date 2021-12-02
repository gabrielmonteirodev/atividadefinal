<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="script.jsp"%>
    <script type="text/javascript">
        function login(){
            const user = document.getElementById("usuario");
            const pw = document.getElementById("senha");
            const form = document.getElementById("formulario");

            if(user.value =="professor" && pw.value =="Progweb2021"){
                formulario.submit();    // validacao do login
            }else if(user.value !=0 && pw.value !=0){
                alert("Login ou senha Invalidos.") // alertas para caso o usuario erre ou esqueca de digitar.
            }else if(user.value ==0 && pw.value !=0){
                alert("Login em branco.")
            }else if(user.value != 0 && pw.value ==0){
                alert("Senha em branco.")
            }else{
                alert("Complete os campos.")
                
 // parte de baixo em form, sao os espacos aonde o usuario ira digitar seu login e senha
            }
        }
    </script>
</head>
<body>
    <form id="formulario" action="menu.jsp" method="post">
        Usuario: <br/><input type="text" name="usuario" id="usuario" onkeypress="return soLetra();" /><br/>
        Senha: <br/><input type="password" name="senha" id="senha" /><br/>

        <input type="button" value="Login" onclick="login()"/>
    </form>
</body>
</html>