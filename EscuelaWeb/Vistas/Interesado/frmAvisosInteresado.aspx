﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAvisosInteresado.aspx.cs" Inherits="EscuelaWeb.Vistas.Interesado.frmAvisosInteresado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
     <title>Bienvenido Interesado</title>
     <link rel="stylesheet" href="../../css/Interesado/BInteresado.css">
    
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
<form id="form1" runat="server">   
        <!--LA PARTE DE PRINCIPAL Y MENU IZQ-->
    <div class="contenedorMenu">
        <!--MENU IZQUIERDO-->
        <div class="left">  
            <ul class="Menu">
                <li><asp:LinkButton ID="lbtnCuenta" runat="server">Cuenta</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCalificaciones" runat="server" >Calificaciones</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnPrimerB" runat="server" CssClass="parteNegra">Primer Bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnSegundoB" runat="server" CssClass="parteNegra">Segundo bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnTerceroB" runat="server" CssClass="parteNegra">Tercer bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCuartoB" runat="server" CssClass="parteNegra">Cuarto bimestre</asp:LinkButton></li>
                <li class="activado"><a href="#">Avisos</a></li>
            </ul>
            
        </div>
    </div>

        <!--PARTE   DERECHA DEL MENU IZQ-->
        
        <div class="ParteDerecha">
            <div class="avisos">
                <h1 style="text-align:center; color:#000000;">AVISOS</h1>
                <h1>AVISOS PROFESOR</h1>
                <asp:ListBox ID="lboxAvisosProfesor" runat="server"  Width="80%"></asp:ListBox>
            </div>
            <div class="avisos">
                <h1>AVISOS DIRECTOR</h1>
                <asp:ListBox ID="lboxAvisosDirector" runat="server"  Width="80%"></asp:ListBox>
            </div>
        </div>
</form>    
</body>
</html>
