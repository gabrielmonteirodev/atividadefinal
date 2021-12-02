<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Header</title>
</head>

<script>
function bemvindo(){
    document.getElementById("bv").innerHTML = "Seja Bem-vindo, professor!";
}
function arrayData(elementos){
    this.length = elementos;
}
    var mesA = new arrayData(12);
    mesA[0] = "Janeiro";
    mesA[1] = "Fevereiro";
    mesA[2] = "Marco";
    mesA[3] = "Abril";
    mesA[4] = "Maio";
    mesA[5] = "Junho";
    mesA[6] = "Julho";
    mesA[7] = "Agosto";
    mesA[8] = "Setembro";
    mesA[9] = "Outubro";
    mesA[10] = "Novembro";
    mesA[11] = "Dezembro";

function attdataHora(dia, mes, ano, hora){
    dh = dia + "/"+ mes +"/" + ano + " " + "as" + " "+ hora;
    document.getElementById("dh").innerHTML = dh;
}

function getME(mes){
    return this.mesA[mes];
}

function dataHora(){ 
    data = new Date();                                  
    dia = data.getDate();
    mes = data.getMonth()+1;
    ano = data.getFullYear();
    hora = data.getHours();
    min = data.getMinutes();
    seg = data.getSeconds();

    
    exibhora = hora + ":" + min + ":" + seg;
    attdataHora(dia, mes, ano, exibhora);
    bemvindo();
    setTimeout("dataHora()", 1000);
}
</script>
<body onload="dataHora()" onpageshow="Bem-vindo()">
<b id="bv"></b> 
<div id="dh"></div>
</body>
</html>