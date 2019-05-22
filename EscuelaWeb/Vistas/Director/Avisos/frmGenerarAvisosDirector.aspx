<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmGenerarAvisosDirector.aspx.cs" Inherits="EscuelaWeb.Vistas.Director.Avisos.frmGenerarAvisosDirector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Bienvenido Secretario</title>
    <link rel="stylesheet" href="../../../css/Director/Avisos/GenerarAvisosDirector.css">
</head>
<body onLoad="startclock()">
    
    <!--ENCABEZADO-->
    <header>
        <div class="encabezado">
            <p class="titulo">UNIDAD EDUCATIVA "CARLOS BELTRAN MORALES"</p>
        </div>
    </header>


    <form id="form1" runat="server">
        <!--LA PARTE DE PRINCIPAL Y MENU IZQ-->
        <div class="contenedorMenu">
            <!--MENU IZQUIERDO-->
            <div class="left">
                
                    <%--<td class="auto-style1">--%>

                    <!--este es el menu la parte izq CON TABLA PRIMERA CELDA-->
                    <ul class="Menu">


                        <%--<li><a href="#">Cuenta</a></li>--%>
                        <li><asp:LinkButton ID="lbtnInicio" runat="server" >Inicio</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnCuenta" runat="server" >Cuenta</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnCerrarSesion" runat="server" >Cerrar Sesion</asp:LinkButton></li>
                        
                        <li><asp:LinkButton ID="lbtnUsuarios" runat="server">Usuarios</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAlumnos" runat="server" CssClass="parteNegra" >Alumnos</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnProfesores" runat="server" CssClass="parteNegra" >Profesores</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAdministrativo" runat="server" CssClass="parteNegra" >Administrativo</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnAvisos" runat="server">Avisos</asp:LinkButton></li>
                      </ul>
                    
                </div>
        </div>
        
        <!--PARTE   DERECHA DEL MENU IZQ-->

        <div class="ParteDerecha">
            <br />
            <div class="Reloj"><asp:Label id="RELOJLABEL" runat="server" /></div>
            <h1 style="text-align:center;">REALIZAR AVISO</h1>
  
            <div class="separacion">
            <asp:Label ID="Label1" runat="server" Text="">Titulo Aviso:</asp:Label>
            <asp:TextBox ID="txtTituloAviso" runat="server" CssClass="CajaTitulo" Width="294px"></asp:TextBox>
            </div>
            <div class="separacion">
            <div><asp:Label ID="Label2" runat="server" Text="">Descripcion:</asp:Label></div>
            <asp:TextBox ID="txtDescripcion" runat="server" CssClass="CajaDescripcion" OnTextChanged="txtDescripcion_TextChanged" Height="255px" Width="379px"></asp:TextBox>
                <asp:DropDownList ID="ddlTipoPublicacion" runat="server" CssClass="CajaConfirmacion"></asp:DropDownList>
            <asp:Button ID="btnPublicar" runat="server" Text="Publicar" CssClass="CajaConfirmacion"/>
            </div>
            
  
            <%--RELOJ--%>
                <SCRIPT Language="JavaScript">
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
                </SCRIPT>
                

            
                

        </div>
    </form>
</body>

</html>
