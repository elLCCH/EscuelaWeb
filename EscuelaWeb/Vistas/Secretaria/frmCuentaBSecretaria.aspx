<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCuentaBSecretaria.aspx.cs" Inherits="EscuelaWeb.Vistas.CuentaPerfil.frmCuentaBSecretaria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="utf-8">
<title>Bienvenido Secretario</title>
<link rel="stylesheet" href="../../css/Secretaria/CuentaBSecretaria.css">
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
                <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click">Inicio</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCuenta" runat="server" OnClick="lbtnCuenta_Click">Cuenta</asp:LinkButton></li>
                
                <li><asp:LinkButton ID="lbtnUsuarios" runat="server" >Usuarios</asp:LinkButton></li>
                
                    <li><asp:LinkButton ID="lbtnAlumnos" runat="server" CssClass="parteNegra">Alumnos</asp:LinkButton></li>
                    <li><asp:LinkButton ID="lbtnProfesores" runat="server" CssClass="parteNegra">Profesores</asp:LinkButton></li>
                    <li><asp:LinkButton ID="lbtnAdministrativo" runat="server" CssClass="parteNegra">Administrativo</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnAvisos" runat="server" >Avisos</asp:LinkButton></li>
            </ul>

        </div>
      </div>  
        <!--PARTE   DERECHA DEL MENU IZQ-->
        
        <div class="ParteDerecha">
            
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
