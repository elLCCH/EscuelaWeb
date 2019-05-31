<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRealizarAvisoDirector.aspx.cs" Inherits="EscuelaWeb.Vistas.Director_UE.frmRealizarAvisoDirector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta charset="utf-8"/>
    <title>Bienvenido Director</title>
    <link rel="stylesheet" href="../../../css/BDirector.css"/>
</head>
<body>
     <!--ENCABEZADO-->
    <header>
        <div class="encabezado">
            <p class="titulo">UNIDAD EDUCATIVA "CARLOS BELTRAN MORALES"</p>
        </div>
    </header>
    <form id="form1" runat="server">
    <nav class ="Navegacion">
        <ul class ="menuCuenta">
            <li><a href="#">Cuenta</a>
                <ul class="subMenu">
                  <%--<li><a href="#">Gestion de usuario</a></li>--%>
                  <li><asp:LinkButton ID="lbtnCuenta" runat="server" OnClick="lbtnCuenta_Click">Cambiar contraseña</asp:LinkButton></li>
                  <li><asp:LinkButton ID="lbtnCerrarSesion" runat="server" OnClick="lbtnCerrarSesion_Click">Salir</asp:LinkButton></li>
                  <%--<li><a href="../index.aspx">Cerrar Sesion</a></li>--%>
                </ul>
            </li>
        </ul>
    </nav> 
    
        <!--LA PARTE DE PRINCIPAL Y MENU IZQ-->
        <div class="contenedorMenu">
            <!--MENU IZQUIERDO-->
            <div class="left">
                
                    <%--<td class="auto-style1">--%>

                    <!--este es el menu la parte izq CON TABLA PRIMERA CELDA-->
                    <ul class="Menu">
                        <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click">Inicio</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnAvisos" runat="server">Avisos</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnRealizarAvisos" runat="server" CssClass="parteNegra" OnClick="lbtnRealizarAvisos_Click">RealizarAviso</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnVerAvisos" runat="server" CssClass="parteNegra" OnClick="lbtnVerAvisos_Click">Ver Avisos</asp:LinkButton></li>
                      </ul>
                    
                </div>
        </div>
        
        <!--PARTE   DERECHA DEL MENU IZQ-->
        <div class="ParteDerecha">
            <div class="RealizarAviso">
                <h1>REALIZAR AVISO</h1>
                <asp:Label ID="lblTitlulo" runat="server" Text="Titulo:"></asp:Label>
                <asp:TextBox ID="txtTitulo" runat="server" Width="475px"></asp:TextBox>
                <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion:"></asp:Label>
                <asp:TextBox ID="txtDescripcion" runat="server" Height="94px" Width="475px"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>
