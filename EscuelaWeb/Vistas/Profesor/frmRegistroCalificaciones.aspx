<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRegistroCalificaciones.aspx.cs" Inherits="EscuelaWeb.Vistas.Profesor.frmRegistroCalificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
     <title>Bienvenido Profesor</title>
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
    </div>     
            
       
        <!--PARTE   DERECHA DEL MENU IZQ-->
        
        <div class="ParteDerecha">
            <div class ="Calificaciones">      
                <div>
                <asp:DropDownList ID="ddlAnio" runat="server" CssClass="separacion" OnTextChanged="ddlAnio_TextChanged" AutoPostBack="True" Width="500px"></asp:DropDownList>
                    <br />
                    <br />
                    <div class="datosParaCalificaciones">
                        <asp:Label ID="Label18" runat="server" Text="ESTUDIANTE: " Width="200px"></asp:Label>
&nbsp;<asp:Label ID="lblNombreAlumno" runat="server" Width="400px"></asp:Label>
                        <br />
                        <asp:Label ID="Label19" runat="server" Text="CI:" Width="200px"></asp:Label>
                        <asp:Label ID="lblCarnet" runat="server" Width="400px"></asp:Label>
                        <br />
                        <asp:Label ID="Label20" runat="server" Text="CURSO:" Width="200px"></asp:Label>
                        <asp:Label ID="lblCurso" runat="server" Text="Label" Width="400px"></asp:Label>
                        <br />
                        <asp:Label ID="Label22" runat="server" Text="BIMESTRE:" Width="200px"></asp:Label>
                        <asp:Label ID="lblBimestre" runat="server" Text="Label" Width="400px"></asp:Label>
                        <br />
                    </div>
                    
                </div>
            <div class ="CuadroMaterias">
            
                    <div style="width: 940px; height: 491px;" class="notasDeCalificacion">
                        <h1 style="text-align:center">REGISTRO DE CALIFICACIONES</h1>
                        <asp:Label ID="Label8" runat="server" CssClass="LabelMateria" Text="COMUNICACION Y LENGUAJES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtLenguaje" runat="server" CssClass="cajaCalificacion" AutoCompleteType="Disabled" TextMode="Number" MaxLength="3" ></asp:TextBox>
                        <br />
                        <asp:Label ID="Label9" runat="server" CssClass="LabelMateria" Text="CIENCIAS SOCIALES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtSociales" runat="server" CssClass="cajaCalificacion" AutoCompleteType="Disabled" TextMode="Number" MaxLength="3" ></asp:TextBox>
                        <br />
                        <asp:Label ID="Label10" runat="server" CssClass="LabelMateria" Text="EDUCACION FISICA Y DEPORTES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtEdFisica" runat="server" CssClass="cajaCalificacion" AutoCompleteType="Disabled" TextMode="Number" MaxLength="3" ></asp:TextBox>
                        <br />
                        <asp:Label ID="Label11" runat="server" CssClass="LabelMateria" Text="EDUCACION MUSICAL : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtEdMusical" runat="server" CssClass="cajaCalificacion" AutoCompleteType="Disabled" TextMode="Number" MaxLength="3" ></asp:TextBox>
                        <br />
                        <asp:Label ID="Label12" runat="server" CssClass="LabelMateria" Text="ARTES PLASTICAS Y VISUALES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtArtesPlasticas" runat="server" CssClass="cajaCalificacion" AutoCompleteType="Disabled" TextMode="Number" MaxLength="3" ></asp:TextBox>
                        <br />
                        <asp:Label ID="Label13" runat="server" CssClass="LabelMateria" Text="MATEMATICA : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtMatematica" runat="server" CssClass="cajaCalificacion" AutoCompleteType="Disabled" TextMode="Number" MaxLength="3" ></asp:TextBox>
                        <br />
                        <asp:Label ID="Label14" runat="server" CssClass="LabelMateria" Text="TECNICA TECNOLOGICA : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtTecTecnologica" runat="server" CssClass="cajaCalificacion" AutoCompleteType="Disabled" TextMode="Number" MaxLength="3" ></asp:TextBox>
                        <br />
                        <asp:Label ID="Label15" runat="server" CssClass="LabelMateria" Text="CIENCIAS NATURALES : " Width="400px"></asp:Label>
                        <asp:TextBox ID="txtCienciasNaturales" runat="server" CssClass="cajaCalificacion" AutoCompleteType="Disabled" TextMode="Number" MaxLength="3" ></asp:TextBox>
                        <br />
                        <asp:Label ID="Label17" runat="server" CssClass="LabelMateria" Text="VALORES, ESPIRITUALIDAD Y RELIGIONES : " ClientIDMode="Static" Width="400px"></asp:Label>
                        <asp:TextBox ID="txtReligion" runat="server" CssClass="cajaCalificacion" AutoCompleteType="Disabled" TextMode="Number" MaxLength="3" ></asp:TextBox>
                        <asp:Button ID="btnRegistrar" runat="server" Text="REGISTRAR" OnClick="btnRegistrar_Click" OnClientClick="Registrado();"/>
                        <asp:Button ID="btnCancelar" runat="server" Text="CANCELAR" OnClick="btnCancelar_Click" Visible="False" />
                    </div>
                <br />
                    <asp:GridView ID="GridViewMostrar" runat="server" OnSelectedIndexChanged="GridViewMostrar_SelectedIndexChanged" AutoGenerateSelectButton="True" Width="1000px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceCiEstudiantes" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString %>" SelectCommand="SELECT [Ci_Estudiante] FROM [Estudiante]"></asp:SqlDataSource>
                    
                
                
                <asp:SqlDataSource ID="SqlDataSourceMaterias" runat="server" ConnectionString="<%$ ConnectionStrings:dbEscuelaConnectionString %>" SelectCommand="SELECT Ci_Estudiante,bimestre,[1] AS MATEMATICA ,[2] AS 'TECNICA TECNOLOGICA',[3] AS 'COMUNICACION Y LENGUAJE',
      [4] AS 'CIENCIAS SOCALES',[5] AS 'EDUCACION FISICA Y DEPORTES',[6] AS 'EDUCACION MUSICAL',
	  [7] AS 'ARTES PLASTICAS Y VISUALES',[8] AS 'CIENCIAS NATURALES',[9] AS 'VALORES, ESPIRITUALIDAD Y RELIGIONES' 
FROM Calificaciones PIVOT ( MIN(calificacion) FOR Id_Materia IN ([1],[2],[3],[4],[5],[6],[7],[8],[9])) AS PivotTable 
WHERE bimestre = 'PRIMER BIMESTRE'
"></asp:SqlDataSource>

        </div></div>
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
    <script>
        function Registrado() {

            var opcion = alert("Registro Añadido");
            return true;
                
                
        }
        </script>
    <script>
        function Modificado() {

            var opcion = alert("Registro Modificado");
            return true;
                
                
        }
        </script>
</form>    
</body>
</html>
