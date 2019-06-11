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
            <br />
            <div style="font-size:40px; width:auto; text-align:center;">ESTUDIANTES</div> 
           <div class="SGestionUsuarios" style="width:99%; height: 583px;">
                   <div class="CRUD_ALUMNOS">
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
                       <br />
                        <div Class="texto"><asp:Label ID="Label5" runat="server" Text="CURSO:" CssClass="texto"></asp:Label></div>
                       <asp:DropDownList ID="cbCurso" runat="server" CssClass="CajaTexto" DataSourceID="SqlDataSourceCurso" DataTextField="Curso" DataValueField="Curso"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCurso" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString1 %>" SelectCommand="SELECT [Curso] FROM [Curso]"></asp:SqlDataSource>
                       <br />
                        <div Class="texto"><asp:Label ID="Label10" runat="server" Text="PARALELO:" CssClass="texto"></asp:Label></div>
                       <asp:DropDownList ID="cbParalelo" runat="server" CssClass="CajaTexto" DataSourceID="SqlDataSourceParalelo" DataTextField="Paralelo" DataValueField="Paralelo"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceParalelo" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString1 %>" SelectCommand="SELECT [Paralelo] FROM [Curso]"></asp:SqlDataSource>
                       <div style="height: 37px" class="boton">
                        <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" CssClass="btnizq" OnClick="btnEliminar_Click"/>
                       </div>
                        <div style="height: 37px" class="boton">
                        <asp:Button ID="btnGuardar" CssClass="btnder" runat="server" Text="GUARDAR CAMBIOS" Height="37px" Width="203px" OnClick="btnGuardar_Click" />
                        </div>
                           
                        <div style="height: 38px" class="boton">
                        <asp:Button ID="btnNuevo" runat="server" Text="NUEVO" CssClass="btnizq" OnClick="btnNuevo_Click"/></div>
                       <div style="height: 38px" class="boton">
                        <asp:Button ID="btnBuscar" CssClass="btnder" runat="server" Text="BUSCAR" Height="37px" Width="203px" />
                        </div>
                   </div>
               <div class="tablaUsuarios">
                   <asp:SqlDataSource ID="SqlDataSourceAlumnos" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString1 %>" SelectCommand="SELECT e.Ci_Estudiante, e.Nombre, e.Ap_Paterno, e.Ap_Materno, e.FechaNac, e.Celular, e.Direccion, c.Curso, c.Paralelo, e.Contrasenia FROM Estudiante AS e INNER JOIN Curso AS c ON e.Id_Curso = c.Id_Curso"></asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
               
                   <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="284px" Width="80%" AutoGenerateColumns="False" DataKeyNames="Ci_Estudiante" DataSourceID="SqlDataSourceAlumnos">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:BoundField DataField="Ci_Estudiante" HeaderText="Ci_Estudiante" InsertVisible="False" ReadOnly="True" SortExpression="Ci_Estudiante" />
                           <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                           <asp:BoundField DataField="Ap_Paterno" HeaderText="Ap_Paterno" SortExpression="Ap_Paterno" />
                           <asp:BoundField DataField="Ap_Materno" HeaderText="Ap_Materno" SortExpression="Ap_Materno" />
                           <asp:BoundField DataField="FechaNac" HeaderText="FechaNac" SortExpression="FechaNac" />
                           <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                           <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                           <asp:BoundField DataField="Curso" HeaderText="Curso" SortExpression="Curso" />
                           <asp:BoundField DataField="Paralelo" HeaderText="Paralelo" SortExpression="Paralelo" />
                           <asp:BoundField DataField="Contrasenia" HeaderText="Contrasenia" SortExpression="Contrasenia" />
                       </Columns>
                       <EditRowStyle BackColor="#2461BF" />
                       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#EFF3FB" />
                       <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F5F7FB" />
                       <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                       <SortedDescendingCellStyle BackColor="#E9EBEF" />
                       <SortedDescendingHeaderStyle BackColor="#4870BE" />
                   </asp:GridView>
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
