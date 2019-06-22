<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmVerAvisoGeneralProfesor.aspx.cs" Inherits="EscuelaWeb.Vistas.Profesor.Avisos.frmVerAvisoGeneralProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
    <title>Profesor</title>
    <!--<link rel="stylesheet" href="../../../css/Profesor/Avisos/VerAvisoGeneralProfesor.css"/>-->
    <link rel="stylesheet" href="../../../css/Profesor/CuentaProfesor.css"/>
    <link rel="stylesheet" href="../../../css/Allfondo.css"/>
</head>
<body>
    <header>
            <div class="encabezado"><p class="titulo">UNIDAD EDUCATIVA "CARLOS BELTRAN MORALES"</p></div>
    </header>
    <form id="form1" runat="server">
    <nav class ="Navegacion">
        <ul class ="menuCuenta">
            <li><a href="#">Cuenta</a>
                <ul class="subMenu">
                  <li><a href="../frmCuentaProfesor.aspx">Gestion de usuario</a></li>
                  <li><asp:LinkButton ID="lbtnCerrarSesion" runat="server" OnClick="lbtnCerrarSesion_Click" OnClientClick="return MessageBoxShow();">Salir</asp:LinkButton></li>
                </ul>
            </li>
        </ul>
    </nav> 
       
    <div class="contenedorMenu">
        <!--MENU IZQUIERDO-->
        <div class="left">  
            <!--ELEMENTOS DEL MENU IZQUIERDO-->
            <ul class="Menu">
               <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click" >Inicio</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnRegCalificaciones" runat="server" OnClick="lbtnRegCalificaciones_Click" >Registrar Calificaciones</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnAvisos" runat="server">Avisos</asp:LinkButton></li>   
               <li><asp:LinkButton ID="lbtnVerAvisosG" runat="server" CssClass="avisos" OnClick="lbtnVerAvisosG_Click">Ver Generales</asp:LinkButton></li>
               <li><asp:LinkButton ID="LinkButton1" runat="server" CssClass="avisos" OnClick="LinkButton1_Click">Realizar aviso</asp:LinkButton></li>
            </ul>
        </div> 
    </div>     
        <!--PARTE   DERECHA DEL MENU IZQ-->
        <div class="ParteDerecha">
            <div class="RealizarAviso">
                <h1 style="text-align:center;">LISTA DE AVISOS</h1>

                <h3>AVISOS</h3>

                <div>
                    <asp:ListView ID="ListViewAvisos" runat="server" DataSourceID="SqlDataSourceAvisosProfesor" >
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
                    <asp:SqlDataSource ID="SqlDataSourceAvisosProfesor" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString %>" SelectCommand="SELECT  a.titulo AS TITULO, a.contenido AS CONTENIDO, CONCAT('LIC. ', adm.nombre,' ', adm.ap_Paterno,' ',adm.ap_Materno) AS 'PUBLICADO POR'
FROM  Avisos a, Administrativo adm
WHERE a.Ci_Administrativo = adm.Ci_Administrativo"></asp:SqlDataSource>
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
