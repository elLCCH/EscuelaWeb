<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="EscuelaWeb.Vistas.Acciones.SecretarioAcciones.Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Bienvenido Secretario</title>
    <link rel="stylesheet" href="../../../css/Secretaria/BSecretaria.css"/>
    <link rel="stylesheet" href="../../../css/Allfondo.css"/>
</head>
<body onload="startclock()">
    
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
                
                    <%--<td class="auto-style1">--%>

                    <!--este es el menu la parte izq CON TABLA PRIMERA CELDA-->
                    <ul class="Menu">


                        <%--<li><a href="#">Cuenta</a></li>--%>
                        <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click">Inicio</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnUsuarios" runat="server" OnClick="lbtnUsuarios_Click">Usuarios</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAlumnos" runat="server" CssClass="parteNegra" OnClick="lbtnAlumnos_Click">Alumnos</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnProfesores" runat="server" CssClass="parteNegra" OnClick="lbtnProfesores_Click">Profesores</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAdministrativo" runat="server" CssClass="parteNegra" OnClick="lbtnAdministrativo_Click">Administrativo</asp:LinkButton></li>
                      </ul>
                    
                </div>
        </div>
        
        <!--PARTE   DERECHA DEL MENU IZQ-->

        <div class="ParteDerecha">
            <asp:Label ID="lblIdCurso" runat="server" Text="" CssClass="Ocultar"></asp:Label>
        <div class="CRUD_ALUMNOS" id="CAlumnos" runat="server">


            <div style="font-size:40px; width:auto; text-align:center;">ESTUDIANTES</div>
                        <div Class="texto"><div Class="texto"><asp:Label ID="Label1" runat="server" Text="CI:" ></asp:Label></div></div>
                        <asp:TextBox ID="txtci" runat="server" CssClass="CajaTexto" OnTextChanged="txtci_TextChanged"></asp:TextBox>
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
                       <br />
                        <div Class="texto"><asp:Label ID="Label5" runat="server" Text="CURSO:" CssClass="texto"></asp:Label></div>
                       <asp:DropDownList ID="cbCurso" runat="server" CssClass="CajaTexto">
                           <asp:ListItem>PRIMERO</asp:ListItem>
                           <asp:ListItem>SEGUNDO</asp:ListItem>
                           <asp:ListItem>TERCERO</asp:ListItem>
                           <asp:ListItem>CUARTO</asp:ListItem>
                           <asp:ListItem>QUINTO</asp:ListItem>
                           <asp:ListItem>SEXTO</asp:ListItem>
                        </asp:DropDownList>
                       
                       <br />
                        <div Class="texto"><asp:Label ID="Label10" runat="server" Text="PARALELO:" CssClass="texto"></asp:Label></div>
                       <asp:DropDownList ID="cbParalelo" runat="server" CssClass="CajaTexto" >
                           <asp:ListItem>A</asp:ListItem>
                        </asp:DropDownList>
                        
                       <div style="height: 44px; width: 214px;" class="boton">
                        <asp:Button ID="btnGuardar" CssClass="btnder" runat="server" Text="GUARDAR CAMBIOS" Height="36px" Width="212px" OnClick="btnGuardar_Click" />
                        </div>
                         <div style="height: 33px; width: 133px;" class="boton">
                       <asp:Button ID="btnCancelar" runat="server" Text="CANCELAR" CssClass="btnizq" Height="34px" Width="132px" OnClick="btnCancelar_Click"/>
                         </div>
                   </div>
           
            <br />
            <div style="font-size:40px; width:auto; text-align:center;">ESTUDIANTES</div>
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
                    <asp:TextBox ID="txtBuscar" runat="server" CssClass="Busqueda"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="BUSCAR" CssClass="Busqueda"/>
               
                </div>

                
                   <asp:GridView ID="dgEstudiantes" runat="server" CellPadding="3" GridLines="None" Height="284px" Width="80%" AutoGenerateColumns="False" AllowPaging="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" DataKeyNames="Ci_Estudiante" DataSourceID="SqlDataSourceAlumnos" OnSelectedIndexChanged="dgEstudiantes_SelectedIndexChanged">
                       <Columns>
                           <asp:CommandField SelectText="SELECCIONAR" ShowSelectButton="True" />
                           <asp:BoundField DataField="Ci_Estudiante" HeaderText="Ci_Estudiante" ReadOnly="True" SortExpression="Ci_Estudiante" />
                           <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                           <asp:BoundField DataField="Ap_Paterno" HeaderText="Ap_Paterno" SortExpression="Ap_Paterno" />
                           <asp:BoundField DataField="Ap_Materno" HeaderText="Ap_Materno" SortExpression="Ap_Materno" />
                           <asp:BoundField DataField="Contrasenia" HeaderText="Contrasenia" SortExpression="Contrasenia" />
                           <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                           <asp:BoundField DataField="FechaNac" HeaderText="FechaNac" SortExpression="FechaNac" />
                           <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                           <asp:BoundField DataField="curso" HeaderText="curso" SortExpression="curso" />
                           <asp:BoundField DataField="paralelo" HeaderText="paralelo" SortExpression="paralelo" />
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
                   <asp:SqlDataSource ID="SqlDataSourceAlumnos" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString %>" SelectCommand="SELECT Estudiante.Ci_Estudiante, Estudiante.Nombre, Estudiante.Ap_Paterno, Estudiante.Ap_Materno, Estudiante.Contrasenia, Estudiante.Celular, Estudiante.FechaNac, Estudiante.Direccion, Curso.curso, Curso.paralelo FROM Curso INNER JOIN Estudiante ON Curso.Id_Curso = Estudiante.Id_Curso"></asp:SqlDataSource>
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
