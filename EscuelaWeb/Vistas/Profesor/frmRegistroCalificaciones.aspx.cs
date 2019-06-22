using EscuelaWeb.Controlador;
using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Profesor
{
    public partial class frmRegistroCalificaciones : System.Web.UI.Page
    {
        AvisosController objAvisosController = new AvisosController();
        AlumnoController ObjAlumnoController = new AlumnoController();
        public int _ciProfesor = 3555914, _idAviso;
        public string _titulo, _descripcion;
        //Parameter pTi = new Parameter();

        public static string _valor { get; set; } = string.Empty;

        SqlConnection conexion = new SqlConnection("server=.;DataBase=dbEscuela;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           // if (!IsPostBack)
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT  Nombre +' '+Ap_Paterno +' '+Ap_Materno AS DATOS FROM Estudiante WHERE Id_Curso = @param", conexion);
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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //objAvisosController.modificar(,);
            //GridView1.EditIndex = e.NewEditIndex;
        }

        protected void bntSiguiente_Click(object sender, EventArgs e)
        {
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int ci_Int = Convert.ToInt32(Session["ID"]);
            objAvisosController.modificarAvisoProfesor(Label5.Text,Label6.Text,ci_Int,0,Convert.ToInt32(lblCarnet.Text));
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            /*Label7.Text = (GridView1.SelectedRow.Cells[1].Text);
            Label5.Text = GridView1.SelectedRow.Cells[2].Text;
            Label6.Text = GridView1.SelectedRow.Cells[3].Text;*/
            
        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblNombreAlumno.Text = "ESTUDIANTE :" + ddlAnio.SelectedItem.Text;
                ObjAlumnoController.obtenerCi(lblCarnet, ddlAnio.SelectedItem.Text);
            }
            
        }

        protected void ddlAnio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("frmRegistroCalificaciones.aspx");
            _valor = ddlAnio.SelectedItem.Text;
            Label6.Text = _valor;
            btnRegistrar.Click += new EventHandler(btnRegistrar_Click);
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            /*Label lblId = (Label)GridView1.Rows[e.RowIndex].FindControl("lblId");
            TextBox txtName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtName");
            CheckBox chkActive =
              (CheckBox)GridView1.Rows[e.RowIndex].FindControl("chkActive");
            DropDownList cmbType =
              (DropDownList)GridView1.Rows[e.RowIndex].FindControl("cmbType");
            DropDownList ddlSex =
              (DropDownList)GridView1.Rows[e.RowIndex].FindControl("ddlSex");
            objAvisosController.modificar();
            GridView1.EditIndex = -1;*/
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           // Label5.Text = GridView1.SelectedRow.Cells[2].Text;
            //Label6.Text = GridView1.SelectedRow.Cells[3].Text;
            //Label7.Text = (GridView1.SelectedRow.Cells[1].Text);
        }

        
    }
}