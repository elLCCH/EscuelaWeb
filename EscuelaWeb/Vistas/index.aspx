<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EscuelaWeb.Vistas.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8"/>
        <title>Escuela</title>
        <link rel="stylesheet" href="../css/index.css"/>
        <link rel="stylesheet" href="../css/Allfondo.css"/>
</head>
<body>
<!--CABECERA-->
<header>
            <div class="encabezado">
                <p class="titulo">UNIDAD EDUCATIVA "CARLOS BELTRAN MORALES"</p>       
            </div>
</header>
    <%--MENU HORIZONTAL lcch--%>
        <div class="barraMenu">
            <nav>
                <ul>
                    <li><a href="index.aspx">INICIAR SESION</a></li>
                    <li><a href="Extras/MisionVision.html">MISION Y VISION</a></li>
                    <li><a href="Extras/ReglamentoInterno.html">REGLAMENTO INTERNO</a></li>
                </ul> 
            </nav>       
        </div>
    <%--FORMULARIO LOGIN--%>
            <form id="form1" runat="server" class="datosLogin">
                <div><p class="titulo_iniciar_sesion">INICIAR SESION</p></div>
                <div style="padding:20px; height:121px; width:auto">
                <img class="imgUsuario" src="../img/man-user.png" alt=""/>
                <asp:TextBox ID="txtCuenta" runat="server" CssClass="textEmail" placeholder="Escribe tu Cuenta" TextMode="Number" AutoCompleteType="Disabled"></asp:TextBox>
                <img class="imgPassword" src="../img/lock.png" alt=""/>                           
                <asp:TextBox ID="txtContrasenia" runat="server" CssClass="textPassword" placeholder="Introduzca su contraseña" TextMode="Password"></asp:TextBox>
                </div>
                <div class="checkbox" style="margin-left: 15px; left: 0px;">
                    <label style="color:#3174C1">
                    <asp:CheckBox ID="cbValidar" runat="server" Text="Validar los datos"></asp:CheckBox>
                    </label>
                </div>
                <asp:Button ID="btnIniciar" runat="server" Text="Iniciar Sesion" CssClass="boton" Font-Size="100%" OnClick="btnIniciar_Click"></asp:Button>
            </form>
</body>
</html>