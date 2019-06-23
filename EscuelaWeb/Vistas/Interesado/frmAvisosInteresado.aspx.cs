using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Interesado
{
    public partial class frmAvisosInteresado : System.Web.UI.Page
    {
        AvisosController ObjAvisosController = new AvisosController();
        protected void Page_Load(object sender, EventArgs e)
        {
            int _ci_interesado = Convert.ToInt32(Session["ID"]);
            int ciProfesor = ObjAvisosController.ObtenerCiProfesorCurso(_ci_interesado);
            SqlConnection conexion = new SqlConnection("server=.;DataBase=dbEscuela;Integrated Security=True");
            conexion.Open();
            SqlCommand comando = new SqlCommand("SELECT titulo,contenido FROM Avisos a WHERE a.Ci_Profesor = @param OR a.Ci_Profesor IS NULL", conexion);
            comando.Parameters.AddWithValue("@param", ciProfesor);
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);
            adaptador.SelectCommand = comando;
            DataTable tabla = new DataTable();
            adaptador.Fill(tabla);

            ListViewAvisos.DataSource = tabla;
            ListViewAvisos.DataBind();
            conexion.Close();
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBInteresado.aspx");
        }

        protected void lbtnPrimerB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bimestres/PrimerBim.aspx");
        }

        protected void lbtnSegundoB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bimestres/SegundoBim.aspx");
        }

        protected void lbtnTerceroB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bimestres/TercerBim.aspx");
        }

        protected void lbtnCuartoB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bimestres/CuartoBim.aspx");
        }

        protected void lbtnAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAvisosInteresado.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }
    }
}