<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRegistroCalificaciones.aspx.cs" Inherits="EscuelaWeb.Vistas.Profesor.frmRegistroCalificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
     <title>Bienvenido Interesado</title>
     <!--<link rel="stylesheet" href="../../css/Profesor/RegistroCalificaciones.css">-->
     <link rel="stylesheet" href="../../css/Profesor/CuentaProfesor.css"/>
    <link rel="stylesheet" href="../../css/Allfondo.css"/>
    <script type="text/javascript" src="../../JS/Profesor/Profesor.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 81px;
        }
        .auto-style2 {
            height: 33px;
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
        
    </div>     
            
       
        <!--PARTE   DERECHA DEL MENU IZQ-->
        
        <div class="ParteDerecha">
            <div class ="">

            </div>
            <div style="width:auto;">
                <div>
                    <asp:Label ID="lblalumno" runat="server" Text="no hay est. seleccionado:" CssClass="separacion"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Seleccione año:" CssClass="separacion"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Seleccione bimestre:" CssClass="separacion"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Seleccione Materia:" CssClass="separacion"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Introduzca la Calificacion" CssClass="separacion"></asp:Label>
                </div>
                <div>
                <asp:Button ID="bntSiguiente" runat="server" Text="Confirmar Estudiante" CssClass="separacion"/>
                <asp:DropDownList ID="ddlAnio" runat="server" CssClass="separacion"></asp:DropDownList>
                <asp:DropDownList ID="ddlBimestre" runat="server" CssClass="separacion"></asp:DropDownList>
                <asp:DropDownList ID="ddlMateria" runat="server" CssClass="separacion" ></asp:DropDownList>
                <asp:TextBox ID="txtCalificacion" runat="server" CssClass="separacion" Width="50px"></asp:TextBox>
                </div>
            </div>
            

            <div class="tabla">
                <div style="margin-left:auto; margin-right:auto;">
                </div>
            </div>
            <center>
            <table>
                <caption>Contenido nutricional por cada 100 g de alimento.</caption>
                <tr>
                    <th colspan = '2'> ESTUDIANTE</th>
                    <th colspan ='5'>COMUNIDAD Y SOCIEDAD</th>
                    <th colspan ='2'>CIENCIA, TECNOLOGIA Y PRODUCCION</th>
                    <th >VIDA TIERRA TERRITORIO</th>
                    <th >COSMOS Y PENSAMIENTO</th>
                    <th rowspan ='2'>OPCIONES</th>
                </tr> 
                <tr>
                    <th class="auto-style1">Carnet</th>
                    <th class="auto-style1">Apellidos y nombres</th> 
                    <th class="auto-style1">Comunicación y lenguajes</th> 
                     <th class="auto-style1">Ciencias sociales</th> 
                     <th class="auto-style1">Educacion física y deportes</th>
                     <th class="auto-style1">Educación Musical</th> 
                     <th class="auto-style1">Artes plásticas y visuales</th>
                     <th class="auto-style1">Matemática</th>
                     <th class="auto-style1">Técnica Tecnológica</th>
                     <th class="auto-style1">Ciencias Naturales</th>
                     <th class="auto-style1">Valores, espiritualidad y religiones</th>
                </tr>
                <tr> <td>11111</td> <td>mxkdncks</td> <td>0</td><td>0</td> <td>0</td> <td>0</td> <td>0</td> <td>0</td> <td>0</td> <td>0</td> <td>0</td>
                    <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
                </tr>
                  
</table>
<div id="contenedorForm">
</div>
                </center> 
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
