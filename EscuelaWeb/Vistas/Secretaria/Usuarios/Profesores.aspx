<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="EscuelaWeb.Vistas.Acciones.SecretarioAcciones.Profesores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Gestion Profesores</title>
    <link rel="stylesheet" href="../../../css/Secretaria/BSecretaria.css"/>
    <link rel="stylesheet" href="../../../css/Allfondo.css"/>
</head>
<body onLoad="startclock()">

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
                  <li><asp:LinkButton ID="lbtnCuenta" runat="server" OnClick="lbtnCuenta_Click1">Cambiar contraseña</asp:LinkButton></li>
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
                    <!--este es el menu la parte izq CON TABLA PRIMERA CELDA-->
                    <ul class="Menu">
                        <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click">Inicio</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnUsuarios" runat="server">Usuarios</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAlumnos" runat="server" CssClass="parteNegra" OnClick="lbtnAlumnos_Click">Alumnos</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnProfesores" runat="server" CssClass="parteNegra" OnClick="lbtnProfesores_Click">Profesores</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAdministrativo" runat="server" CssClass="parteNegra" OnClick="lbtnAdministrativo_Click">Administrativo</asp:LinkButton></li>
                      </ul>
                </div>
        </div>
        
        <!--PARTE   DERECHA DEL MENU IZQ-->

        <div class="ParteDerecha">
            <asp:Label ID="lblIdCurso" runat="server" Text="" CssClass="Ocultar"></asp:Label>
        <div class="CRUD_ALUMNOS" id="CProf" runat="server">


            <div style="font-size:40px; width:auto; text-align:center;">ADMINISTRATIVO</div>
                        <div Class="texto"><div Class="texto"><asp:Label ID="Label1" runat="server" Text="CI:" ></asp:Label></div></div>
                        <asp:TextBox ID="txtci" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                        <div Class="texto"><asp:Label ID="Label7" runat="server" Text="NOMBRE:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                        <div Class="texto"><asp:Label ID="Label2" runat="server" Text="AP. PATERNO:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtApPaterno" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                        <div Class="texto"><asp:Label ID="Label3" runat="server" Text="AP. MATERNO:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtApMaterno" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                        <div Class="texto"><asp:Label ID="Label6" runat="server" Text="FECHA NAC.:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtFechNac" runat="server" CssClass="CajaTexto" TextMode="DateTime"></asp:TextBox>
                        <br />
                        <div Class="texto"><asp:Label ID="Label9" runat="server" Text="DIRECCION:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        
                       <br />
                        <div Class="texto"><asp:Label ID="Label8" runat="server" Text="CELULAR:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtCelular" runat="server" CssClass="CajaTexto"></asp:TextBox>
                       <br />
                        <div Class="texto"><asp:Label ID="Label4" runat="server" Text="CONTRASEÑA:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtCOntrasenia" runat="server" CssClass="CajaTexto"></asp:TextBox>
                       <%--<br />
                        <div Class="texto"><asp:Label ID="Label5" runat="server" Text="OCUPACION:" CssClass="texto"></asp:Label></div>--%>
                       <%--<asp:DropDownList ID="cbOcupacion" runat="server" CssClass="CajaTexto">
                           <asp:ListItem>Director</asp:ListItem>
                           <asp:ListItem>Secretaria</asp:ListItem>
                        </asp:DropDownList>--%>
                       
                        
                       <div style="height: 44px; width: 214px;" class="boton">
                        <asp:Button ID="btnGuardar" CssClass="btnder" runat="server" Text="GUARDAR CAMBIOS" Height="36px" Width="212px" OnClick="btnGuardar_Click" />
                        </div>
                         <div style="height: 33px; width: 133px;" class="boton">
                       <asp:Button ID="btnCancelar" runat="server" Text="CANCELAR" CssClass="btnizq" Height="34px" Width="132px" OnClick="btnCancelar_Click"/>
                         </div>
                   </div>
           
            <br />
            <div style="font-size:40px; width:auto; text-align:center;">PLANTEL DOCENTE</div>
            <%--RELOJ--%>
<SCRIPT lang="JavaScript">
    var timerID = null;
    var timerRunning = false;
    function stopclock() {
        if (timerRunning)
            clearTimeout(timerID);
        timerRunning = false;
    }
    function showtime() {
        var now = new Date();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var seconds = now.getSeconds();
        var timeValue = "" + ((hours > 12) ? hours - 12 : hours)

        if (timeValue == "0") timeValue = 12;
        timeValue += ((minutes < 10) ? ":0" : ":") + minutes
        timeValue += ((seconds < 10) ? ":0" : ":") + seconds
        timeValue += (hours >= 12) ? " P.M." : " A.M."
        document.getElementById('RELOJLABEL').innerText = timeValue;

        timerID = setTimeout("showtime()", 1000);
        timerRunning = true;
    }
    function startclock() {
        stopclock();
        showtime();
    }
</SCRIPT>
            

            
                
            <div class="tablaUsuarios">
                <%--<div style="height: 38px" class="parteBusqueda" >
<asp:Button ID="btnBuscar" CssClass="btnizq" runat="server" Text="BUSCAR" Height="37px" Width="153px" OnClick="btnBuscar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtBusqueda" runat="server" Width="775px" Height="27px" OnTextChanged="txtBusqueda_TextChanged" ></asp:TextBox>
</div>--%>
                <div style="height: 38px">
                    <asp:Button ID="btnNuevo" runat="server" Text="NUEVO" CssClass="btnder" OnClick="btnNuevo_Click"/>
                    <asp:RadioButton ID="rbEliminar" runat="server" Text="Eliminar" GroupName="TIPO" Font-Size="15pt" />
                    <asp:RadioButton ID="rbModificar" runat="server" Checked="True" Text="Modificar" GroupName="TIPO" Font-Size="15pt" />
                </div>

                
                   <asp:GridView ID="dgProfesores" runat="server" CellPadding="3" GridLines="None" Height="284px" Width="80%" AutoGenerateColumns="False" AllowPaging="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" DataKeyNames="Ci_Profesor" DataSourceID="SqlDataSourceProfesores" OnSelectedIndexChanged="dgProfesores_SelectedIndexChanged">
                       <Columns>
                           <asp:CommandField ShowSelectButton="True" />
                           <asp:BoundField DataField="Ci_Profesor" HeaderText="Ci_Profesor" ReadOnly="True" SortExpression="Ci_Profesor" />
                           <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                           <asp:BoundField DataField="ap_Paterno" HeaderText="ap_Paterno" SortExpression="ap_Paterno" />
                           <asp:BoundField DataField="ap_Materno" HeaderText="ap_Materno" SortExpression="ap_Materno" />
                           <asp:BoundField DataField="contrasenia" HeaderText="contrasenia" SortExpression="contrasenia" />
                           <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
                           <asp:BoundField DataField="FechaNac" HeaderText="FechaNac" SortExpression="FechaNac" />
                           <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                           <asp:TemplateField HeaderText="Cursos" SortExpression="Ci_Profesor">
                               <EditItemTemplate>
                                   <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                               </ItemTemplate>
                           </asp:TemplateField>
                       </Columns>
                       <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                       <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                       <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                       <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                       <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                       <SortedAscendingHeaderStyle BackColor="#594B9C" />
                       <SortedDescendingCellStyle BackColor="#CAC9C9" />
                       <SortedDescendingHeaderStyle BackColor="#33276A" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSourceProfesores" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString %>" SelectCommand="SELECT * FROM [Profesor]"></asp:SqlDataSource>
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
        <script type="text/javascript">
            function Eliminacion() {

                var opcion = confirm("¿SEGURO QUE QUIERE ELIMINAR ESTE REGISTRO?");
                if (opcion == true) {
                    return true;
                } else {
                    return false;
                }
            }
        </script>
        <script type="text/javascript">
            function Agregacion() {

                var opcion = alert("REGISTRO AGREGADO EXITOSAMENTE");
                return true;
            }
        </script>
        <script type="text/javascript">
            function Modificacion() {

                var opcion = alert("REGISTRO MODIFICADO SATISFACTORIAMENTE");
                return true;
            }
        </script>
        <script type="text/javascript">
            function Error() {
                var opcion = alert("ERROR LA ACCION NO SE PUDO REALIZAR");
                return true;
            }
        </script>
    </form>
</body>
</html>
