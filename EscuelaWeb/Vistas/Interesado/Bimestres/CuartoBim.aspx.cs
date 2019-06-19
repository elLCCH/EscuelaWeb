using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EscuelaWeb.Vistas.Interesado.Bimestres
{
    public partial class CuartoBim : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=.;DataBase=dbEscuela;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            int ci_estudiante = Convert.ToInt32(Session["ID"]);
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("select m.Nom_Materia, c.calificacion from Calificaciones c,Materia m where c.Id_Materia = m.Id_Materia and Ci_Estudiante= '" + ci_estudiante + "' and bimestre='CUARTO BIMESTRE'", conexion);//aca tu consulta
                SqlDataAdapter adaptador = new SqlDataAdapter();
                adaptador.SelectCommand = comando;
                DataTable tabla = new DataTable();
                adaptador.Fill(tabla);
                gvCuartoBim.DataSource = tabla;
                gvCuartoBim.DataBind();



            }
            catch (Exception)
            {
                conexion.Close();
                Response.Write("NO CONEXION");

            }
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmBInteresado.aspx");
        }

        protected void lbtnPrimerB_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrimerBim.aspx");
        }

        protected void lbtnSegundoB_Click(object sender, EventArgs e)
        {
            Response.Redirect("SegundoBim.aspx");
        }

        protected void lbtnTerceroB_Click(object sender, EventArgs e)
        {
            Response.Redirect("TercerBim.aspx");
        }

        protected void lbtnCuartoB_Click(object sender, EventArgs e)
        {
            Response.Redirect("CuartoBim.aspx");
        }

        protected void lbtnAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmAvisosInteresado.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../index.aspx");
        }
    }
}