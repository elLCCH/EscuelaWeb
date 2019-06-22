<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAvisosInteresado.aspx.cs" Inherits="EscuelaWeb.Vistas.Interesado.frmAvisosInteresado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
     <title>Bienvenido Interesado</title>
     <link rel="stylesheet" href="../../css/Interesado/BInteresado.css">
    <link rel="stylesheet" href="../../css/Allfondo.css"/>
    
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
                  <li><a href="frmCuentaBInteresado.aspx">Cambiar Contraseña</a></li>
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
        
        <div class="ParteDerecha">
            
            <div class="RealizarAviso">
                <h1 style="text-align:center;">LISTA DE AVISOS</h1>

                <h3>AVISOS</h3>
                <p>
                    <asp:ListView ID="ListViewAvisos" runat="server" >
                        <AlternatingItemTemplate>
                            <li style="background-color: #FFF8DC;">titulo:
                                <asp:Label ID="tituloLabel" runat="server" Text='<%# Eval("titulo") %>' />
                                <br />
                                contenido:
                                <asp:Label ID="contenidoLabel" runat="server" Text='<%# Eval("contenido") %>' />
                                <br />
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #008A8C;color: #FFFFFF;">titulo:
                                <asp:TextBox ID="tituloTextBox" runat="server" Text='<%# Bind("titulo") %>' />
                                <br />
                                contenido:
                                <asp:TextBox ID="contenidoTextBox" runat="server" Text='<%# Bind("contenido") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No se han devuelto datos.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">titulo:
                                <asp:TextBox ID="tituloTextBox0" runat="server" Text='<%# Bind("titulo") %>' />
                                <br />
                                contenido:
                                <asp:TextBox ID="contenidoTextBox0" runat="server" Text='<%# Bind("contenido") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Borrar" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="background-color: #DCDCDC;color: #000000;">titulo:
                                <asp:Label ID="tituloLabel0" runat="server" Text='<%# Eval("titulo") %>' />
                                <br />
                                contenido:
                                <asp:Label ID="contenidoLabel0" runat="server" Text='<%# Eval("contenido") %>' />
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
                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">titulo:
                                <asp:Label ID="tituloLabel1" runat="server" Text='<%# Eval("titulo") %>' />
                                <br />
                                contenido:
                                <asp:Label ID="contenidoLabel1" runat="server" Text='<%# Eval("contenido") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    
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
