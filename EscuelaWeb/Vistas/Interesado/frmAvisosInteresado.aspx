<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAvisosInteresado.aspx.cs" Inherits="EscuelaWeb.Vistas.Interesado.frmAvisosInteresado" %>

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
                  <li><a href="frmCuentaBInteresado.aspx">Cambiar Contraseña</a></li>
                  <li><a href="../index.aspx">Salir</a></li>
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
        
        <div class="ParteDerecha">
            
            <div class="RealizarAviso">
                <h1 style="text-align:center;">LISTA DE AVISOS</h1>

                <h3>AVISOS</h3>
                <asp:GridView ID="dgvAvisos" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </div>
        </div>
</form>    
</body>
</html>
