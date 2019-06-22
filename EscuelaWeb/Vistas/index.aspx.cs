using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas
{
    public partial class index : System.Web.UI.Page
    {
        public static string _IDuser { get; set; }= string.Empty;
        SesionesController SC = new SesionesController();
        AdministrativoController admin = new AdministrativoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ID"] = "";
            txtCuenta.Focus();
        }
        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            Session["ID"] = txtCuenta.Text;
            if (txtContrasenia.Text != "" && txtCuenta.Text != "")
            {
                if (SC.AutenticarAdministrativo(Convert.ToInt32(txtCuenta.Text), txtContrasenia.Text) == true)
                {
                    if (SC.AutenticarSecretario(Convert.ToInt32(txtCuenta.Text), txtContrasenia.Text) == true)
                    {
                        Response.Redirect("Secretaria/frmBSecretaria.aspx");
                    }
                    else
                    {
                        Response.Redirect("Director_UE/frmBDirector.aspx");
                    }
                    
                }
                else
                {
                    if (SC.AutenticarProfesor(Convert.ToInt32(txtCuenta.Text), txtContrasenia.Text) == true)
                    {
                        Response.Redirect("Profesor/frmBProfesor.aspx");
                        _IDuser = txtCuenta.Text;
                        
                    }
                    else
                    {
                        if (SC.AutenticarEstudiante(Convert.ToInt32(txtCuenta.Text), txtContrasenia.Text) == true)
                        {
                            Response.Redirect("Interesado/frmBInteresado.aspx");
                            _IDuser = txtCuenta.Text;
                            
                        }
                    }
                }
                Session["ID"] = "";
                //CAdmin.Style["visibility"] = "hidden";
                txtContrasenia.Text = "";
                txtCuenta.Text = "";
            }          
        }
    }
}