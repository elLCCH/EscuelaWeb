<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmVerAvisosDirector.aspx.cs" Inherits="EscuelaWeb.Vistas.Director_UE.frmVerAvisosDirector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
    <title>Bienvenido Director</title>
    <link rel="stylesheet" href="../../../css/BDirector.css"/>
    <link rel="stylesheet" href="../../../css/Allfondo.css"/>
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
                  <li><asp:LinkButton ID="lbtnCerrarSesion" runat="server" OnClick="lbtnCerrarSesion_Click" OnClientClick="return MessageBoxShow();">Salir</asp:LinkButton></li>
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
                        <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click" >Inicio</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnAvisos" runat="server">Avisos</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnRealizarAvisos" runat="server" CssClass="parteNegra" OnClick="lbtnRealizarAvisos_Click">RealizarAviso</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnVerAvisos" runat="server" CssClass="parteNegra" OnClick="lbtnVerAvisos_Click">Ver Avisos</asp:LinkButton></li>
                      </ul>
                    
                </div>
        </div>
        
        <!--PARTE   DERECHA DEL MENU IZQ-->
        <div class="ParteDerecha">
            <div class="RealizarAviso">
                <h1 style="text-align:center;">LISTA DE AVISOS</h1>

                <h3>AVISOS<asp:Label ID="lblcod" runat="server"></asp:Label>
                    <asp:Button ID="bntEliminar" runat="server" OnClick="bntEliminar_Click" Text="Button" />
                </h3>
                <asp:GridView ID="dgvAvisos" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id_Avisos" DataSourceID="SqlDataSourceAvisosDirector" OnSelectedIndexChanged="dgvAvisos_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField SelectText="Selecionar" ShowSelectButton="True" />
                        <asp:BoundField DataField="id_Avisos" HeaderText="id_Avisos" InsertVisible="False" ReadOnly="True" SortExpression="id_Avisos" />
                        <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo" />
                        <asp:BoundField DataField="contenido" HeaderText="contenido" SortExpression="contenido" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceAvisosDirector" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString %>" DeleteCommand="DELETE FROM Avisos
WHERE        (id_Avisos = @Original_id_Avisos)" SelectCommand="SELECT [id_Avisos], [titulo], [contenido] FROM [Avisos]">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_id_Avisos" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </div>
        </div>
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
    </form>
</body>
</html>
