using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Interesado.Bimestres
{
    public partial class frmImprimirCalificaciones : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("server=.;DataBase=dbEscuela;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToBoolean(Session["ID"]) == false)
                {   //esta inactivo
                    Response.Redirect("../../index.aspx");
                }
            }
            catch (Exception)
            {
                //esta activo
                int ci_estudiante = Convert.ToInt32(Session["ID"]);
                string bimestre = Convert.ToString(Session["bim"]);
                try
                {
                    conexion.Open();
                    SqlCommand comando = new SqlCommand("select m.Nom_Materia, c.calificacion from Calificaciones c,Materia m where c.Id_Materia = m.Id_Materia and Ci_Estudiante= '" + ci_estudiante + "' and bimestre='" + bimestre + "'", conexion);//aca tu consulta
                    SqlDataAdapter adaptador = new SqlDataAdapter();
                    adaptador.SelectCommand = comando;
                    DataTable tabla = new DataTable();
                    adaptador.Fill(tabla);
                    gvPrimerBim.DataSource = tabla;
                    gvPrimerBim.DataBind();
                    //RELLENANDO DATOS

                    EstudianteTableAdapter est = new EstudianteTableAdapter();
                    lblapellido.Text = est.obtenerApellidosEst(ci_estudiante);
                    lblnombre.Text = est.obtenerNombreEst(ci_estudiante);
                    lblCI.Text = Convert.ToString(Session["ID"]);
                    lblbimestre.Text = Convert.ToString(Session["bim"]);
                }
                catch (Exception)
                {
                    conexion.Close();
                    Response.Write("NO CONEXION");

                }
            }
        }
    }
}