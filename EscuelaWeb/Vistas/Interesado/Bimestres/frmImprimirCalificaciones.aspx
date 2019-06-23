<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmImprimirCalificaciones.aspx.cs" Inherits="EscuelaWeb.Vistas.Interesado.Bimestres.frmImprimirCalificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../../../css/Interesado/BInteresado.css">
    <link rel="stylesheet" href="../../../css/Allfondo.css"/>
    <title>IMPRIMIR</title>
</head>
<body>
    <!--ENCABEZADO-->
<header>
            <div class="encabezado">
                <p class="titulo">UNIDAD EDUCATIVA "CARLOS BELTRAN MORALES"</p>
            </div>
</header>
    <style>
        .ParteDerecha *{
            font-size:25px;
        }
    </style>
    <form id="form1" runat="server">
        <div class="ParteDerecha">
            <center>
            NOMBRE Y&nbsp; APELLIDO:&nbsp; <asp:Label ID="lblnombre" runat="server" Text=""></asp:Label>
            &nbsp;&nbsp; <asp:Label ID="lblapellido" runat="server" Text=""></asp:Label>
            <br />
            CARNET DE IDENTIDAD:&nbsp;&nbsp; <asp:Label ID="lblCI" runat="server" Text="Label"></asp:Label>
            <br />
            GESTION:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
            </asp:DropDownList>
            <br />
            BIMESTRE:&nbsp; <asp:Label ID="lblbimestre" runat="server" Text="Label"></asp:Label>
            &nbsp;<asp:GridView ID="gvPrimerBim" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="514px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            </center>
        </div>
    </form>
</body>
</html>
