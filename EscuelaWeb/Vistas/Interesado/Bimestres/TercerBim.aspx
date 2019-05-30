<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TercerBim.aspx.cs" Inherits="EscuelaWeb.Vistas.Interesado.Bimestres.TercerBim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
     <title>Bienvenido Interesado</title>
     <link rel="stylesheet" href="../../../css/Interesado/BInteresado.css">
    
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
                  <li><a href="../frmCuentaBInteresado.aspx">Cambiar Contraseña</a></li>
                  <li><asp:LinkButton ID="lbtnCerrarSesion" runat="server" OnClick="lbtnCerrarSesion_Click" OnClientClick="return MessageBoxShow();">Salir</asp:LinkButton></li>
                </ul>
            </li>
        </ul>
    </nav>  
 
        <!--LA PARTE DE PRINCIPAL Y MENU IZQ-->
    <div class="contenedorMenu">
        <!--MENU IZQUIERDO-->
        <div class="left">  
            <ul class="Menu">
                <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click" >Inicio</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCalificaciones" runat="server" >Calificaciones</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnPrimerB" runat="server" CssClass="parteNegra" OnClick="lbtnPrimerB_Click">Primer Bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnSegundoB" runat="server" CssClass="parteNegra" OnClick="lbtnSegundoB_Click">Segundo bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnTerceroB" runat="server" CssClass="parteNegra" OnClick="lbtnTerceroB_Click">Tercer bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnCuartoB" runat="server" CssClass="parteNegra" OnClick="lbtnCuartoB_Click">Cuarto bimestre</asp:LinkButton></li>
                <li><asp:LinkButton ID="lbtnAvisos" runat="server" OnClick="lbtnAvisos_Click" >Avisos</asp:LinkButton></li>
            </ul>
            
        </div>
    </div>

        <!--PARTE   DERECHA DEL MENU IZQ-->
        <script type="text/javascript">
                function MessageBoxShow() {
                    
                    var opcion = confirm("¿SEGURO QUE DESEA CERRAR SESION?");
                    if (opcion == true) {
                        return true;
                    } else {
                        return false;
                    }
                }
            </script>
        <div class="ParteDerecha">
            

        </div>
</form>  
</body>
</html>
