<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBProfesor.aspx.cs" Inherits="EscuelaWeb.Vistas.frmBProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
     <title>Profesor</title>
     <link rel="stylesheet" href="../../css/Profesor/BProfesor.css"/>
</head>
<body>
<!--ENCABEZADO-->
<header>
   <div class="encabezado">
       <p class="titulo">UNIDAD EDUCATIVA "CARLOS BELTRAN MORALES"</p>
   </div>
</header>

    <nav class ="Navegacion">
        <ul class ="menuCuenta">
            <li><a href="#">Cuenta</a>
                <ul class="subMenu">
                  <li><a href="#">Gestion de usuario</a></li>
                  <li><a href="../index.aspx">Cerrar Sesion</a></li>
                </ul>
            </li>
        </ul>
    </nav> 

<form id="frmCuerpo" runat="server">   
    <!--LA PARTE DE PRINCIPAL Y MENU IZQ-->
    <div class="contenedorMenu">
        <!--MENU IZQUIERDO-->
        <div class="left">  
            <!--este es el menu la parte izq CON TABLA PRIMERA CELDA-->
            <ul class="Menu">
            <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click">Inicio</asp:LinkButton></li>
            <li><asp:LinkButton ID="lbtnCuenta" runat="server">Cuenta</asp:LinkButton></li>
            <li><asp:LinkButton ID="lbtnRegCalificaciones" runat="server" >Registrar Calificaciones</asp:LinkButton></li>
            <li><asp:LinkButton ID="lbtnAvisos" runat="server" CssClass="avisos">Avisos</asp:LinkButton></li>
            </ul>
        </div>
    </div>     
        <!--PARTE   DERECHA DEL MENU IZQ-->
        <div class="ParteDerecha">
            <div class ="Saludo">
                <div style="font-size:40px; width:auto; text-align:center;">BIENVENIDO PROFESOR</div>
            <div class="Bienvenido">
                
                <center>
                    <div class="fecha">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                   </div>
                </center>  
                

                <%--RELOJ--%>
                <script lang ="JavaScript">
                    var timerID = null;
                    var timerRunning = false;
                    function stopclock() {
                        if (timerRunning)
                            clearTimeout(timerID);
                        timerRunning = false;
                    }
                    function showtime() {
                        var now = new Date();
                        var hours = now.getHours();
                        var minutes = now.getMinutes();
                        var seconds = now.getSeconds();
                        var timeValue = "" + ((hours > 12) ? hours - 12 : hours)

                        if (timeValue == "0") timeValue = 12;
                        timeValue += ((minutes < 10) ? ":0" : ":") + minutes
                        timeValue += ((seconds < 10) ? ":0" : ":") + seconds
                        timeValue += (hours >= 12) ? " P.M." : " A.M."
                        document.getElementById('RELOJLABEL').innerText = timeValue;

                        timerID = setTimeout("showtime()", 1000);
                        timerRunning = true;
                    }
                    function startclock() {
                        stopclock();
                        showtime();
                    }
                </script>
            </div>
            </div>
        </div>
</form>    
</body>
</html>
