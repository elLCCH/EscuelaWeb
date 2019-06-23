<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRegistroCalificaciones.aspx.cs" Inherits="EscuelaWeb.Vistas.Profesor.frmRegistroCalificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
     <title>Bienvenido Interesado</title>
     <!--<link rel="stylesheet" href="../../css/Profesor/RegistroCalificaciones.css">-->
     <link rel="stylesheet" href="../../css/Profesor/CuentaProfesor.css"/>
    <link rel="stylesheet" href="../../css/Allfondo.css"/>
    <script type="text/javascript" src="../../JS/Profesor/Profesor.js"></script>
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
                  <li><a href="frmCuentaProfesor.aspx">Cambiar contraseña</a></li>
                  <li><asp:LinkButton ID="lbtnCerrarSesion" runat="server" OnClick="lbtnCerrarSesion_Click" OnClientClick="return MessageBoxShow();">Salir</asp:LinkButton></li>
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
            <li><asp:LinkButton ID="lbtnInicio" runat="server" OnClick="lbtnInicio_Click" >Inicio</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnRegCalificaciones" runat="server" OnClick="lbtnRegCalificaciones_Click" >Registrar Calificaciones</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnAvisos" runat="server">Avisos</asp:LinkButton></li>   
               <li><asp:LinkButton ID="lbtnVerAvisosG" runat="server" CssClass="avisos" OnClick="lbtnVerAvisosG_Click">Ver Generales</asp:LinkButton></li>
               <li><asp:LinkButton ID="lbtnRealizarAviso" runat="server" CssClass="avisos" OnClick="lbtnRealizarAviso_Click">Realizar aviso</asp:LinkButton></li>
            </ul>
        </div >
        
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        
    </div>     
            
       
        <!--PARTE   DERECHA DEL MENU IZQ-->
        
        <div class="ParteDerecha">
            <div class ="">

            </div>
            <div style="width:auto;">
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Seleccione año:" CssClass="separacion"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Seleccione bimestre:" CssClass="separacion"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Seleccione Materia:" CssClass="separacion"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Introduzca la Calificacion" CssClass="separacion"></asp:Label>
                </div>
                <div>
                <asp:DropDownList ID="ddlAnio" runat="server" CssClass="separacion"></asp:DropDownList>
                    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="ACEPTAR" />
                    <asp:SqlDataSource ID="SqlDataSourceCiEstudiantes" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString %>" SelectCommand="SELECT [Ci_Estudiante] FROM [Estudiante]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:Label ID="lblNombreAlumno" runat="server" Text="ESTUDIANTE :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCarnet" runat="server" Text="CI :"></asp:Label>
        
                </div>
            <div class ="CuadroMaterias" style =" background-color = #35120">
            
                <br />
                    <div style="width: 940px">
                        <asp:Label ID="Label8" runat="server" CssClass="LabelMateria" Text="COMUNICACION Y LENGUAJES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtLenguaje" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label9" runat="server" CssClass="LabelMateria" Text="CIENCIAS SOCIALES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtSociales" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label10" runat="server" CssClass="LabelMateria" Text="EDUCACION FISICA Y DEPORTES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtEdFisica" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label11" runat="server" CssClass="LabelMateria" Text="EDUCACION MUSICAL : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtEdMusical" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label12" runat="server" CssClass="LabelMateria" Text="ARTES PLASTICAS Y VISUALES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtArtesPlasticas" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label13" runat="server" CssClass="LabelMateria" Text="MATEMATICA : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtMatematica" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label14" runat="server" CssClass="LabelMateria" Text="TECNICA TECNOLOGICA : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtTecTecnologica" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label15" runat="server" CssClass="LabelMateria" Text="CIENCIAS NATURALES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtCienciasNaturales" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label17" runat="server" CssClass="LabelMateria" Text="VALORES, ESPIRITUALIDAD Y RELIGIONES : " ClientIDMode="Static" Width="400px"></asp:Label>
                        <asp:TextBox ID="txtReligion" runat="server"></asp:TextBox>
                    </div>
                <br />
                <asp:Button ID="btnRegistrar" runat="server" Text="REGISTRAR" OnClick="btnRegistrar_Click" />
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    <script type="text/javascript">
                function MessageBoxShow() {
                    
                    var opcion = confirm("¿SEGURO QUE DESEA CERRAR SESION?");
                    if (opcion == true)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
    </script>
</form>    
</body>
</html>
