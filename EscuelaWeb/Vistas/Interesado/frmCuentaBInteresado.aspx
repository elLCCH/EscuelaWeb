<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCuentaBInteresado.aspx.cs" Inherits="EscuelaWeb.Vistas.Interesado.frmCuentaBInteresado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Bienvenido Interesado</title>
    <link rel="stylesheet" href="../../css/Interesado/CuentaBInteresado.css">
</head>
<body>
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
            <!--este es el menu la parte izq CON TABLA PRIMERA CELDA-->
            <ul class="Menu">        
                <li><asp:LinkButton ID="lbtnCuenta" runat="server">Cuenta</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCerrarSesion" runat="server">Cerrar Sesion</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCalificaciones" runat="server" >Calificaciones</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnPrimerB" runat="server" CssClass="parteNegra">Primer Bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnSegundoB" runat="server" CssClass="parteNegra">Segundo bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnTerceroB" runat="server" CssClass="parteNegra">Tercer bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCuartoB" runat="server" CssClass="parteNegra">Cuarto bimestre</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnAvisos" runat="server" >Avisos</asp:LinkButton></li>
            </ul>
        </div>
      </div>  
        <!--PARTE   DERECHA DEL MENU IZQ-->
        <div class="ParteDerecha"> 
            <h1 style="text-align:center; color:red;">MODIFICAR CUENTA Y CONTRASEÑA</h1>
            <div class="DatosPersonales">
                <div class="imagen"></div>
                <div Class="texto"><asp:Label ID="Label1" runat="server" Text="NOMBRE:" ></asp:Label></div>
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
