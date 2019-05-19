<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="EscuelaWeb.Vistas.Acciones.SecretarioAcciones.Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Bienvenido Secretario</title>
    <link rel="stylesheet" href="../../../css/SecretarioAcciones/Alumnos.css">
    
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
                
                    <%--<td class="auto-style1">--%>

                    <!--este es el menu la parte izq CON TABLA PRIMERA CELDA-->
                    <ul class="Menu">


                        <%--<li><a href="#">Cuenta</a></li>--%>
                        <li><asp:LinkButton ID="lbtnInicio" runat="server">Inicio</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnCuenta" runat="server">Cuenta</asp:LinkButton></li>
                        <li><asp:LinkButton ID="lbtnAvisos" runat="server">Avisos</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnUsuarios" runat="server">Usuarios</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAlumnos" runat="server" CssClass="parteNegra">Alumnos</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnProfesores" runat="server" CssClass="parteNegra">Profesores</asp:LinkButton></li>
                            <li><asp:LinkButton ID="lbtnAdministrativo" runat="server" CssClass="parteNegra">Administrativo</asp:LinkButton></li>
                        
                      </ul>
                    
                </div>
        </div>
        
        <!--PARTE   DERECHA DEL MENU IZQ-->

        <div class="ParteDerecha">
            <br />
            <div class="Reloj"><asp:Label id="RELOJLABEL" runat="server" /></div>
            <div style="font-size:40px; width:auto; text-align:center;">ESTUDIANTES</div>
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
           <div class="SGestionUsuarios" style="width:1017px;">
               <div class="leftOpciones">
                   <div class="CRUD_ALUMNOS">
                        <div Class="texto"><asp:Label ID="Label1" runat="server" Text="CI:" ></asp:Label></div>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="CajaTexto"></asp:TextBox>
                       <br />
                        <asp:Label ID="Label7" runat="server" Text="NOMBRE:" CssClass="texto"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="AP. PATERNO:" CssClass="texto"></asp:Label>
                        <asp:TextBox ID="txtApellidos" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="AP. MATERNO:" CssClass="texto"></asp:Label>
                        <asp:TextBox ID="txtContrasenia" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnNuevo" runat="server" Text="NUEVO" CssClass="btnizq"/>
                        <asp:Button ID="btnGuardarCambios" CssClass="btnder" runat="server" Text="BUSCAR" Height="37px" Width="187px" />
                   </div>
                   <div class="CRUD_ALUMNOS1">
                       <div Class="texto"><asp:Label ID="Label4" runat="server" Text="NOMBRE:" ></asp:Label></div>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="CajaTexto"></asp:TextBox>

                        <br />
                        <asp:Label ID="Label5" runat="server" Text="APELLIDOS:" CssClass="texto"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="CONTRASEÑA:" CssClass="texto"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="CajaTexto"></asp:TextBox>
                        <br />
                       <asp:Button ID="Button1" runat="server" Text="ELIMINAR" CssClass="btnizq"/>
                        <asp:Button ID="Button2" CssClass="btnder" runat="server" Text="GUARDAR CAMBIOS" Height="37px" Width="203px" />
                   </div>
               </div>
               <div class="tablaUsuarios">
                   <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="294px" Width="765px">
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
