<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRegistroCalificaciones.aspx.cs" Inherits="EscuelaWeb.Vistas.Profesor.frmRegistroCalificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
     <title>Bienvenido Interesado</title>
     <link rel="stylesheet" href="../../css/Profesor/RegistroCalificaciones.css">
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
            <li><asp:LinkButton ID="lbtnCuenta" runat="server">Cuenta</asp:LinkButton></li>
            <li><asp:LinkButton ID="lbtnRegCalificaciones" runat="server" >Registrar Calificaciones</asp:LinkButton></li>
            <li><asp:LinkButton ID="lbtnAvisos" runat="server" CssClass="avisos">Avisos</asp:LinkButton></li>
            </ul>
        </div>
        
    </div>     
            
       
        <!--PARTE   DERECHA DEL MENU IZQ-->
        
        <div class="ParteDerecha">
            <div style="width:auto;">
                <asp:ListBox ID="lboxLista" runat="server" style="float:left;"></asp:ListBox>
                <div class="colorDerecha">
                    <asp:Label ID="lblalumno" runat="server" Text="no hay est. seleccionado:" CssClass="separacion"></asp:Label>
                </div>
                <div class="colorDerecha">
                <asp:Button ID="bntSiguiente" runat="server" Text="Confirmar Estudiante" CssClass="separacion" BackColor="#333300" ForeColor="White"/>
                    <asp:Label ID="Label1" runat="server" Text="año:"></asp:Label>
                <asp:DropDownList ID="ddlAnio" runat="server" CssClass="separacion"></asp:DropDownList>
                    <asp:Label ID="Label2" runat="server" Text="Bimestre"></asp:Label>
                <asp:DropDownList ID="ddlBimestre" runat="server" CssClass="separacion"></asp:DropDownList>
                    <asp:Label ID="Label3" runat="server" Text="Materia:"></asp:Label>
                <asp:DropDownList ID="ddlMateria" runat="server" CssClass="separacion" ></asp:DropDownList>
                    <asp:Label ID="Label4" runat="server" Text="Nota:"></asp:Label>
                <asp:TextBox ID="txtCalificacion" runat="server" CssClass="separacion" Width="50px"></asp:TextBox>
                </div>
            </div>
            

            <div class="tabla">
                <div style="margin-left:auto; margin-right:auto;">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </div>
            </div>
            
        </div>
    
</form>    
</body>
</html>
