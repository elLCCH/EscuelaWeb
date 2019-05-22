<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCuentaProfesor.aspx.cs" Inherits="EscuelaWeb.Vistas.Profesor.frmCuentaProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
    <title>Profesor</title>
    <link rel="stylesheet" href="../../css/Profesor/CuentaProfesor.css"/>
</head>
<body>
    <header>
            <div class="encabezado"><p class="titulo">UNIDAD EDUCATIVA "CARLOS BELTRAN MORALES"</p></div>
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
            <div class="DatosPersonales">
                <div class="imagen"></div>
                <div class="texto"><asp:Label ID="Label1" runat="server" Text="NOMBRE:" ></asp:Label></div>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="CajaTexto"></asp:TextBox>

                <br />
                <asp:Label ID="Label2" runat="server" Text="APELLIDOS:" CssClass="texto"></asp:Label>
                <asp:TextBox ID="txtApellidos" runat="server" CssClass="CajaTexto"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="CONTRASEÑA:" CssClass="texto"></asp:Label>
                <asp:TextBox ID="txtContrasenia" runat="server" CssClass="CajaTexto"></asp:TextBox>
                <br />
                <asp:Button ID="btnGuardarCambios" runat="server" Text="Guardar Cambios" Height="37px" Width="187px" />
            </div>
        </div>
</form>  
</body>
</html>
