<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Script</title>
</head>
	<script type="text/javascript">
		var dcGlobal = "anything";
		var noteGlobal = 0;
		
		function soNumero(evt){
	        var theEvent = evt  window.event;
	        var key = theEvent.keyCode  theEvent.which;
	        key = String.fromCharCode(key);
	        var regex = /^[0-9.,]+$/;
	        if(!regex.test(key)){
	            theEvent.returnValue = false;
	            if(theEvent.preventDefault) theEvent.preventDefault();
	        }
	    }
	
	    function soLetra(evt) {
	        evt = (evt) ? evt : event;
	        var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
	            ((evt.which) ? evt.which : 0));
	        if (charCode > 31 && (charCode < 65  charCode > 90) &&
	           	(charCode < 97  charCode > 122)) {
	
	            return false;
	        }
	        return true;
	    }

	    function cadsDisc(){

            var nDisc = document.getElementById("Nome da Disciplina").value;
            var nFinal = document.getElementById("Nota Final").value;

            var tabela = document.getElementById("registros");


            var novaLinha = tabela.insertRow(-1);
            var novoCadastroNome = novaLinha.insertCell(0);
            var novoCadastroNota = novaLinha.insertCell(1);

            novoCadastroNome.innerHTML = nDisc;
            novoCadastroNota.innerHTML = nFinal;

            dcGlobal = nDisc;
            noteGlobal = nFinal;
	    	
            if(nFinal >= 5){
            	alert("Aprovado em: "+ nDisc)
            }else{
            	alert("Reprovado em: "+ nDisc)
            }
	    	
	    	
	    }
	</script>
<body>

</body>
</html>