<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBProfesor.aspx.cs" Inherits="EscuelaWeb.Vistas.frmBProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
     <title>Profesor</title>
     <!--<link rel="stylesheet" href="../../css/Profesor/BProfesor.css"/>-->
     <link rel="stylesheet" href="../../css/Profesor/CuentaProfesor.css"/>
</head>
<body onload="startclock()">
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
                  <li><a href="#">Cambiar contraseña</a></li>
                  <li><a href="../index.aspx">Salir</a></li>
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
           <li><asp:LinkButton ID="lbtnInicio" runat="server" >Inicio</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnRegCalificaciones" runat="server" >Registrar Calificaciones</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnAvisos" runat="server">Avisos</asp:LinkButton></li>   
               <li><asp:LinkButton ID="lbtnVerAvisosG" runat="server" CssClass="avisos">Ver Generales</asp:LinkButton></li>
               <li><asp:LinkButton ID="LinkButton1" runat="server" CssClass="avisos">Realizar aviso</asp:LinkButton></li>
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
                        <asp:Calendar ID="Calendario" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="255px" NextPrevFormat="ShortMonth" Width="309px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
                        <asp:Label ID="RELOJLABEL" runat="server" Text="Label"></asp:Label>
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
