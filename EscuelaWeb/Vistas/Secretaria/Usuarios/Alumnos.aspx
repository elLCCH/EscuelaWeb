<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="EscuelaWeb.Vistas.Acciones.SecretarioAcciones.Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Bienvenido Secretario</title>
    <link rel="stylesheet" href="../../../css/Secretaria/Usuarios/Alumnos.css">
    
</head>
<body onLoad="startclock()">
    
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
                
                    <%--<td class="auto-style1">--%>

                    <!--este es el menu la parte izq CON TABLA PRIMERA CELDA-->
                    <ul class="Menu">


                        <%--<li><a href="#">Cuenta</a></li>--%>
                        <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click">Inicio</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnCuenta" runat="server" OnClick="lbtnCuenta_Click">Cuenta</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnCerrarSesion" runat="server" OnClick="lbtnCerrarSesion_Click">Cerrar Sesion</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnUsuarios" runat="server" OnClick="lbtnUsuarios_Click">Usuarios</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAlumnos" runat="server" CssClass="parteNegra" OnClick="lbtnAlumnos_Click">Alumnos</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnProfesores" runat="server" CssClass="parteNegra" OnClick="lbtnProfesores_Click">Profesores</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAdministrativo" runat="server" CssClass="parteNegra" OnClick="lbtnAdministrativo_Click">Administrativo</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnAvisos" runat="server" OnClick="lbtnAvisos_Click">Avisos</asp:LinkButton></li>
                      </ul>
                    
                </div>
        </div>
        
        <!--PARTE   DERECHA DEL MENU IZQ-->

        <div class="ParteDerecha">
            <br />
            <div class="Reloj"><asp:Label id="RELOJLABEL" runat="server" /></div>
            <div style="font-size:40px; width:auto; text-align:center;">ESTUDIANTES</div>
            <%--RELOJ--%>
<SCRIPT Language="JavaScript">
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
           <div class="SGestionUsuarios" style="width:98%; height: 513px;">
               
                   <div class="CRUD_ALUMNOS">
                       <div Class="texto"><asp:Label ID="Label4" runat="server" Text="CUENTA:" ></asp:Label></div>
                        <asp:TextBox ID="txtCuenta" runat="server" CssClass="CajaTexto"></asp:TextBox>

                        <br />
                        <div Class="texto"><asp:Label ID="Label5" runat="server" Text="CONTRASEÑA:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtContrasenia" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                        <div Class="texto"><asp:Label ID="Label6" runat="server" Text="FECHA NAC.:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtFechNac" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                        <div Class="texto"><asp:Label ID="Label9" runat="server" Text="DIRECCION:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="CajaTexto"></asp:TextBox>
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
                        <div Class="texto"><asp:Label ID="Label8" runat="server" Text="CELULAR:" CssClass="texto"></asp:Label></div>
                        <asp:TextBox ID="txtCelular" runat="server" CssClass="CajaTexto"></asp:TextBox>
                       <div style="height: 37px" class="boton">
                        <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" CssClass="btnizq"/>
                       </div>
                        <div style="height: 37px" class="boton">
                        <asp:Button ID="btnGuardar" CssClass="btnder" runat="server" Text="GUARDAR CAMBIOS" Height="37px" Width="203px" />
                        </div>
                           
                        <div style="height: 38px" class="boton">
                        <asp:Button ID="btnNuevo" runat="server" Text="NUEVO" CssClass="btnizq"/></div>
                       <div style="height: 38px" class="boton">
                        <asp:Button ID="btnBuscar" CssClass="btnder" runat="server" Text="BUSCAR" Height="37px" Width="203px" />
                        </div>
                   </div>
               
               <div class="tablaUsuarios">
                   <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="284px" Width="100%">
                       <AlternatingRowStyle BackColor="White" />
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
    </form>
</body>
</html>
