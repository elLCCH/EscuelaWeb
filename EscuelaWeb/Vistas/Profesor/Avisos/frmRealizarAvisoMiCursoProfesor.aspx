<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRealizarAvisoMiCursoProfesor.aspx.cs" Inherits="EscuelaWeb.Vistas.Profesor.Avisos.frmRealizarAvisoMiCursoProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
    <title>Profesor</title>
    <link rel="stylesheet" href="../../../css/Profesor/Avisos/RealizarAvisoMiCursoProfesor.css"/>
</head>
<body>
    <header>
            <div class="encabezado"><p class="titulo">UNIDAD EDUCATIVA "CARLOS BELTRAN MORALES"</p></div>
    </header>
<form id="form1" runat="server">   
    <div class="contenedorMenu">
        <!--MENU IZQUIERDO-->
        <div class="left">  
            <!--ELEMENTOS DEL MENU IZQUIERDO-->
            <ul class="Menu">
               <li><asp:LinkButton ID="lbtnInicio" runat="server" >Inicio</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnCuenta" runat="server">Cuenta</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnRegCalificaciones" runat="server" >Registrar Calificaciones</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnAvisos" runat="server" CssClass="avisos">Avisos</asp:LinkButton></li>
            </ul>
        </div>
        
    </div>     
        <!--PARTE   DERECHA DEL MENU IZQ-->
        <div class="ParteDerecha">
            
        </div>
</form>    
</body>
</html>
