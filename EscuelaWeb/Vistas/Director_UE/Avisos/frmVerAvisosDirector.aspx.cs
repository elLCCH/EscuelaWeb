using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Director_UE
{
    public partial class frmVerAvisosDirector : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* SqlConnection conexion = new SqlConnection("server=.;DataBase=dbEscuela;Integrated Security=True");
            conexion.Open();
            SqlCommand comando = new SqlCommand("SELECT  titulo, contenido,CONCAT ( (SELECT CONCAT(nombre,' ', ap_Paterno,' ',ap_Materno) FROM Profesor WHERE Ci_Profesor=CONCAT(a.Ci_Profesor,a.Ci_Administrativo)) , (SELECT CONCAT(nombre,' ', ap_Paterno,' ',ap_Materno) FROM Administrativo WHERE Ci_Administrativo=CONCAT(a.Ci_Profesor,a.Ci_Administrativo))) AS AUTOR FROM  Avisos a ", conexion);
            //comando.Parameters.AddWithValue("@param", 1);
            SqlDataAdapter adaptador = new SqlDataAdapter(comando);
            adaptador.SelectCommand = comando;
            DataTable tabla = new DataTable();
            adaptador.Fill(tabla);

            ListViewAvisos.DataSource = tabla;
            ListViewAvisos.DataBind();
            conexion.Close();*/
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmBDirector.aspx");
        }

        protected void lbtnRealizarAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmRealizarAvisoDirector.aspx");
        }

        protected void lbtnVerAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmVerAvisosDirector.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmCuentaDirector.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../index.aspx");
        }

        protected void ListViewAvisos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}