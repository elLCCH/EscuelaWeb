<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmVerAvisosDirector.aspx.cs" Inherits="EscuelaWeb.Vistas.Director_UE.frmVerAvisosDirector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
    <title>Bienvenido Director</title>
    <link rel="stylesheet" href="../../../css/BDirector.css"/>
    <link rel="stylesheet" href="../../../css/Allfondo.css"/>
    <style type="text/css">


table {
    font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    font-size: 12px;
    margin: 0px 45px 45px 45px;
    width: 718px;
    text-align: center;
    /*border-collapse: collapse;*/
    position: relative;
    /*left:0%;*/
    right:34px;
    top: 7px;
}


td {
    padding: 8px;
    background: #e8edff;
    border-bottom: 1px solid #fff;
    color: #669;
    border-top: 1px solid transparent;
}

    </style>
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

                <h3>AVISOS</h3>
                 <div>
                     <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                         <AlternatingItemTemplate>
                             <li style="background-color: #FFF8DC;">TITULO:
                                 <asp:Label ID="TITULOLabel" runat="server" Text='<%# Eval("TITULO") %>' />
                                 <br />
                                 CONTENIDO:
                                 <asp:Label ID="CONTENIDOLabel" runat="server" Text='<%# Eval("CONTENIDO") %>' />
                                 <br />
                                 PUBLICADO POR:
                                 <asp:Label ID="PUBLICADO_PORLabel" runat="server" Text='<%# Eval("[PUBLICADO POR]") %>' />
                                 <br />
                             </li>
                         </AlternatingItemTemplate>
                         <EditItemTemplate>
                             <li style="background-color: #008A8C;color: #FFFFFF;">TITULO:
                                 <asp:TextBox ID="TITULOTextBox" runat="server" Text='<%# Bind("TITULO") %>' />
                                 <br />
                                 CONTENIDO:
                                 <asp:TextBox ID="CONTENIDOTextBox" runat="server" Text='<%# Bind("CONTENIDO") %>' />
                                 <br />
                                 PUBLICADO POR:
                                 <asp:TextBox ID="PUBLICADO_PORTextBox" runat="server" Text='<%# Bind("[PUBLICADO POR]") %>' />
                                 <br />
                                 <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                 <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                             </li>
                         </EditItemTemplate>
                         <EmptyDataTemplate>
                             No se han devuelto datos.
                         </EmptyDataTemplate>
                         <InsertItemTemplate>
                             <li style="">TITULO:
                                 <asp:TextBox ID="TITULOTextBox" runat="server" Text='<%# Bind("TITULO") %>' />
                                 <br />
                                 CONTENIDO:
                                 <asp:TextBox ID="CONTENIDOTextBox" runat="server" Text='<%# Bind("CONTENIDO") %>' />
                                 <br />
                                 PUBLICADO POR:
                                 <asp:TextBox ID="PUBLICADO_PORTextBox" runat="server" Text='<%# Bind("[PUBLICADO POR]") %>' />
                                 <br />
                                 <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                 <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                             </li>
                         </InsertItemTemplate>
                         <ItemSeparatorTemplate>
                             <br />
                         </ItemSeparatorTemplate>
                         <ItemTemplate>
                             <li style="background-color: #DCDCDC;color: #000000;">TITULO:
                                 <asp:Label ID="TITULOLabel" runat="server" Text='<%# Eval("TITULO") %>' />
                                 <br />
                                 CONTENIDO:
                                 <asp:Label ID="CONTENIDOLabel" runat="server" Text='<%# Eval("CONTENIDO") %>' />
                                 <br />
                                 PUBLICADO POR:
                                 <asp:Label ID="PUBLICADO_PORLabel" runat="server" Text='<%# Eval("[PUBLICADO POR]") %>' />
                                 <br />
                             </li>
                         </ItemTemplate>
                         <LayoutTemplate>
                             <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                 <li runat="server" id="itemPlaceholder" />
                             </ul>
                             <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                             </div>
                         </LayoutTemplate>
                         <SelectedItemTemplate>
                             <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">TITULO:
                                 <asp:Label ID="TITULOLabel" runat="server" Text='<%# Eval("TITULO") %>' />
                                 <br />
                                 CONTENIDO:
                                 <asp:Label ID="CONTENIDOLabel" runat="server" Text='<%# Eval("CONTENIDO") %>' />
                                 <br />
                                 PUBLICADO POR:
                                 <asp:Label ID="PUBLICADO_PORLabel" runat="server" Text='<%# Eval("[PUBLICADO POR]") %>' />
                                 <br />
                             </li>
                         </SelectedItemTemplate>
                     </asp:ListView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString %>" SelectCommand="SELECT  titulo AS TITULO, contenido AS CONTENIDO,CONCAT ( (SELECT CONCAT(nombre,' ', ap_Paterno,' ',ap_Materno) FROM Profesor WHERE Ci_Profesor=CONCAT(a.Ci_Profesor,a.Ci_Administrativo)) , (SELECT CONCAT(nombre,' ', ap_Paterno,' ',ap_Materno) FROM Administrativo WHERE Ci_Administrativo=CONCAT(a.Ci_Profesor,a.Ci_Administrativo))) AS 'PUBLICADO POR'
FROM  Avisos a "></asp:SqlDataSource>
                 </div>
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
