using EscuelaWeb.Controlador;
using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Profesor
{
    public partial class frmRegistroCalificaciones : System.Web.UI.Page
    {
        AlumnoController ObjAlumnoController = new AlumnoController();
        CalificacionesController ObjCalificacionesController = new CalificacionesController();
        ProfesorController prof = new ProfesorController();
        public string _titulo, _descripcion;
        //Parameter pTi = new Parameter();
        public bool _esNuevo = false;
        public static string _valor { get; set; } = string.Empty;

        SqlConnection conexion = new SqlConnection("server=.;DataBase=dbEscuela;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //si se abre por primera vez hacer
            {
                int suCurso = prof.obtenerId_curso(Convert.ToInt32(Session["ID"]));
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT  Nombre +' '+Ap_Paterno +' '+Ap_Materno AS DATOS FROM Estudiante WHERE Id_Curso = '"+suCurso+"'", conexion);
                comando.Parameters.AddWithValue("@param", 1);
                SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                adaptador.SelectCommand = comando;
                DataTable tabla = new DataTable();
                adaptador.Fill(tabla);


                ddlAnio.DataTextField = "DATOS";
                ddlAnio.DataValueField = "DATOS";
                ddlAnio.DataSource = tabla;
                ddlAnio.DataBind();
            }
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBProfesor.aspx");
        }

        protected void lbtnRegCalificaciones_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmRegistroCalificaciones.aspx");
        }

        protected void lbtnVerAvisosG_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmRealizarAvisoMiCursoProfesor.aspx");
        }

        protected void lbtnRealizarAviso_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmVerAvisoGeneralProfesor.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string bim = HallarBimestre();
            int anio = Convert.ToInt32(DateTime.Now.ToString("yyyy"));
            if (bim != "")
            {
                if (bim != "" && Convert.ToBoolean(Session["_esNuevo"]) == true)
                {
                    if (txtArtesPlasticas.Text != "" || txtCienciasNaturales.Text != "" ||
                        txtEdFisica.Text != "" || txtEdMusical.Text != "" ||
                        txtLenguaje.Text != "" || txtMatematica.Text != "" ||
                        txtReligion.Text != "" || txtSociales.Text != "" || txtTecTecnologica.Text != "")
                    {
                        ObjCalificacionesController.InsertarCalificacion(Convert.ToInt32(lblCarnet.Text), anio, HallarBimestre(), 1, Convert.ToDouble(txtMatematica.Text));
                        ObjCalificacionesController.InsertarCalificacion(Convert.ToInt32(lblCarnet.Text), anio, HallarBimestre(), 2, Convert.ToDouble(txtTecTecnologica.Text));
                        ObjCalificacionesController.InsertarCalificacion(Convert.ToInt32(lblCarnet.Text), anio, HallarBimestre(), 3, Convert.ToDouble(txtLenguaje.Text));
                        ObjCalificacionesController.InsertarCalificacion(Convert.ToInt32(lblCarnet.Text), anio, HallarBimestre(), 4, Convert.ToDouble(txtSociales.Text));
                        ObjCalificacionesController.InsertarCalificacion(Convert.ToInt32(lblCarnet.Text), anio, HallarBimestre(), 5, Convert.ToDouble(txtEdFisica.Text));
                        ObjCalificacionesController.InsertarCalificacion(Convert.ToInt32(lblCarnet.Text), anio, HallarBimestre(), 6, Convert.ToDouble(txtEdMusical.Text));
                        ObjCalificacionesController.InsertarCalificacion(Convert.ToInt32(lblCarnet.Text), anio, HallarBimestre(), 7, Convert.ToDouble(txtArtesPlasticas.Text));
                        ObjCalificacionesController.InsertarCalificacion(Convert.ToInt32(lblCarnet.Text), anio, HallarBimestre(), 8, Convert.ToDouble(txtCienciasNaturales.Text));
                        ObjCalificacionesController.InsertarCalificacion(Convert.ToInt32(lblCarnet.Text), anio, HallarBimestre(), 9, Convert.ToDouble(txtReligion.Text));
                    }
                }
                if (bim != "" && Convert.ToBoolean(Session["_esNuevo"]) == false)
                {
                    ObjCalificacionesController.ModificarCalificacion(Convert.ToDouble(txtMatematica.Text),     Convert.ToInt32(lblCarnet.Text), 1);
                    ObjCalificacionesController.ModificarCalificacion(Convert.ToDouble(txtTecTecnologica.Text), Convert.ToInt32(lblCarnet.Text), 2);
                    ObjCalificacionesController.ModificarCalificacion(Convert.ToDouble(txtLenguaje.Text),       Convert.ToInt32(lblCarnet.Text), 3);
                    ObjCalificacionesController.ModificarCalificacion(Convert.ToDouble(txtSociales.Text),       Convert.ToInt32(lblCarnet.Text), 4);
                    ObjCalificacionesController.ModificarCalificacion(Convert.ToDouble(txtEdFisica.Text),       Convert.ToInt32(lblCarnet.Text), 5);
                    ObjCalificacionesController.ModificarCalificacion(Convert.ToDouble(txtEdMusical.Text),      Convert.ToInt32(lblCarnet.Text), 6);
                    ObjCalificacionesController.ModificarCalificacion(Convert.ToDouble(txtArtesPlasticas.Text), Convert.ToInt32(lblCarnet.Text), 7);
                    ObjCalificacionesController.ModificarCalificacion(Convert.ToDouble(txtCienciasNaturales.Text), Convert.ToInt32(lblCarnet.Text), 8);
                    ObjCalificacionesController.ModificarCalificacion(Convert.ToDouble(txtReligion.Text),       Convert.ToInt32(lblCarnet.Text), 9);
                }
                cargarDatos();
                limpiar();
                
                
            }

        }
        protected string HallarBimestre()
        {
            DateTime hoy = DateTime.Today;
            string bimestre = "";
            DateTime Bim11 = Convert.ToDateTime("05/02"), Bim12 = Convert.ToDateTime("16/04");
            DateTime Bim21 = Convert.ToDateTime("17/04"), Bim22 = Convert.ToDateTime("28/06");
            DateTime Bim31 = Convert.ToDateTime("15/07"), Bim32 = Convert.ToDateTime("20/09");
            DateTime Bim41 = Convert.ToDateTime("23/09"), Bim42 = Convert.ToDateTime("30/11");
            if (DateTime.Compare(hoy, Bim11) > 0 && DateTime.Compare(hoy, Bim12) < 0)
                bimestre = "PRIMER BIMESTRE";
            if (DateTime.Compare(hoy, Bim21) > 0 && DateTime.Compare(hoy, Bim22) < 0)
                bimestre = "SEGUNDO BIMESTRE";
            if (DateTime.Compare(hoy, Bim31) > 0 && DateTime.Compare(hoy, Bim32) < 0)
                bimestre = "TERCER BIMESTRE";
            if (DateTime.Compare(hoy, Bim41) > 0 && DateTime.Compare(hoy, Bim42) < 0)
                bimestre = "CUARTO BIMESTRE";
            return bimestre;
        }

        protected void ddlAnio_TextChanged(object sender, EventArgs e)
        {
            Session["name"] = ddlAnio.SelectedItem.Text;
            lblCarnet.Text=ObjAlumnoController.obtenerCi(Convert.ToString(Session["name"]));
            cargarDatos();
        }
        public void cargarDatos()
        {
            //cargando al gridview
            Session["_esNuevo"] = true;
            lblNombreAlumno.Text = Convert.ToString(Session["name"]);

            GridViewMostrar.DataSourceID = "";
            SqlCommand com = new SqlCommand("SELECT Ci_Estudiante,bimestre,[1] AS MATEMATICA ,[2] AS 'TECNICA TECNOLOGICA',[3] AS 'COMUNICACION Y LENGUAJE',[4] AS 'CIENCIAS SOCALES',[5] AS 'EDUCACION FISICA Y DEPORTES',[6] AS 'EDUCACION MUSICAL', [7] AS 'ARTES PLASTICAS Y VISUALES',[8] AS 'CIENCIAS NATURALES',[9] AS 'VALORES, ESPIRITUALIDAD Y RELIGIONES'FROM Calificaciones PIVOT(MIN(calificacion) FOR Id_Materia IN([1],[2],[3],[4],[5],[6],[7],[8],[9])) AS PivotTable WHERE bimestre = '" + HallarBimestre() + "' and Ci_Estudiante = '" + Convert.ToInt32(lblCarnet.Text) + "'", conexion);//aca tu consulta
            SqlDataAdapter adap = new SqlDataAdapter();
            adap.SelectCommand = com;
            DataTable t = new DataTable();
            adap.Fill(t);
            GridViewMostrar.DataSource = t;
            GridViewMostrar.DataBind();
            limpiar();
        }
        protected void GridViewMostrar_SelectedIndexChanged(object sender, EventArgs e)
        {
            //_esNuevo = false;
            Session["_esNuevo"] = false;
            ObjAlumnoController.obtenerNombreCompleto(lblNombreAlumno, Convert.ToInt32(GridViewMostrar.SelectedRow.Cells[1].Text));
            lblCarnet.Text = GridViewMostrar.SelectedRow.Cells[1].Text;
            txtMatematica.Text = GridViewMostrar.SelectedRow.Cells[3].Text;
            txtTecTecnologica.Text = GridViewMostrar.SelectedRow.Cells[4].Text;
            txtLenguaje.Text = GridViewMostrar.SelectedRow.Cells[5].Text;
            txtSociales.Text = GridViewMostrar.SelectedRow.Cells[6].Text;
            txtEdFisica.Text = GridViewMostrar.SelectedRow.Cells[7].Text;
            txtEdMusical.Text = GridViewMostrar.SelectedRow.Cells[8].Text;
            txtArtesPlasticas.Text = GridViewMostrar.SelectedRow.Cells[9].Text;
            txtCienciasNaturales.Text = GridViewMostrar.SelectedRow.Cells[10].Text;
            txtReligion.Text = GridViewMostrar.SelectedRow.Cells[11].Text;
            
        }

        
        public void limpiar()
        {
            txtArtesPlasticas.Text = "";
            txtCienciasNaturales.Text = "";
            txtEdFisica.Text = "";
            txtEdMusical.Text = "";
            txtLenguaje.Text = "";
            txtMatematica.Text = "";
            txtReligion.Text = "";
            txtSociales.Text = "";
            txtTecTecnologica.Text = "";
        }

    }
}