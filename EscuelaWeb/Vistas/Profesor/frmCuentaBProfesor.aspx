<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCuentaBProfesor.aspx.cs" Inherits="EscuelaWeb.Vistas.Profesor.frmCuentaBProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Bienvenido Director</title>
    <link rel="stylesheet" href="../../css/Profesor/CuentaBProfesor.css">
</head>
<body>
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
            <!--este es el menu la parte izq CON TABLA PRIMERA CELDA-->
            <ul class="Menu">        
                <li><asp:LinkButton ID="lbtnInicio" runat="server" >Inicio</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCuenta" runat="server" >Cuenta</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCerrarSesion" runat="server">Cerrar Sesion</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnRegistrarCalificaciones" runat="server" >Registrar Calificaciones</asp:LinkButton></li>
                    <li><asp:LinkButton ID="lbtnAvisos" runat="server" CssClass="parteNegra">Avisos</asp:LinkButton></li>
                    
                    
               
            </ul>
        </div>
      </div>  
        <!--PARTE   DERECHA DEL MENU IZQ-->
        <div class="ParteDerecha"> 
            <h1 style="text-align:center;color:red;">CAMBIAR CUENTA Y CONTRASEÑA</h1>
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
