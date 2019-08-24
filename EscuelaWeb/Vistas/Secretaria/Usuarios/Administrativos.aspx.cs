using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EscuelaWeb.Vistas.Acciones.SecretarioAcciones
{
    public partial class Administrativos : System.Web.UI.Page
    {
        AdministrativoController _Ad = new AdministrativoController();
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
            }
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmBSecretaria.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmCuentaBSecretaria.aspx");
        }
        
        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../index.aspx");
        }

        protected void lbtnAlumnos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alumnos.aspx");
        }

        protected void lbtnProfesores_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profesores.aspx");
        }

        protected void lbtnAdministrativo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrativos.aspx");
        }

        protected void lbtnAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmAvisosSecretaria.aspx");
        }

        protected void lbtnCuenta_Click1(object sender, EventArgs e)
        {
            Response.Redirect("../frmCuentaBSecretaria.aspx");
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            limpiar();
            CAdmin.Style["visibility"] = "visible";
            //lblIdCurso.Text = "";
            btnGuardar.Text = "REGISTRAR";
            SesionesController sc = new SesionesController();
            txtCOntrasenia.Text = sc.GenerarPassword();
        }

        protected void dgAdministrativos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbModificar.Checked == true)
            {
                CAdmin.Style["visibility"] = "visible";
                btnGuardar.Text = "GUARDAR CAMBIOS";
                btnGuardar.OnClientClick = "return Modificacion();";
            }
            if (rbEliminar.Checked == true)
            {
                btnGuardar.OnClientClick = " return Eliminacion();";
                btnGuardar.Text = "ELIMINAR REGISTRO";
                CAdmin.Style["visibility"] = "visible";
            }
            txtci.Text = dgAdministrativos.SelectedRow.Cells[1].Text;
            txtNombre.Text = dgAdministrativos.SelectedRow.Cells[2].Text;
            txtApPaterno.Text = dgAdministrativos.SelectedRow.Cells[3].Text;
            txtApMaterno.Text = dgAdministrativos.SelectedRow.Cells[4].Text;
            txtCOntrasenia.Text = dgAdministrativos.SelectedRow.Cells[5].Text;
            txtCelular.Text = dgAdministrativos.SelectedRow.Cells[6].Text;
            txtFechNac.Text = dgAdministrativos.SelectedRow.Cells[7].Text;
            txtDireccion.Text = dgAdministrativos.SelectedRow.Cells[8].Text;
            cbOcupacion.Text = dgAdministrativos.SelectedRow.Cells[9].Text;
            

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                if (btnGuardar.Text == "REGISTRAR")
                {
                    //ES NUEVO ENTONCES INSERTAR
                    //insertamos y actualizamos tabla
                    _Ad.insertar_Administrativo(Convert.ToInt32(txtci.Text), txtNombre.Text, txtApPaterno.Text, txtApMaterno.Text, txtCOntrasenia.Text, Convert.ToInt32(txtCelular.Text), Convert.ToDateTime(txtFechNac.Text), txtDireccion.Text, cbOcupacion.Text);
                    dgAdministrativos.DataSourceID = "SqlDataSourceAdministrativo";
                    dgAdministrativos.DataBind();
                    CAdmin.Style["visibility"] = "hidden";
                    limpiar();
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('REGISTRO AGREGADO SATISFACTORIAMENTE');", true);
                }
                else
                {
                    if (rbModificar.Checked == true)
                    {
                        //YA EXISTE ENTONCES MODIFICAR

                        //int curso = cAlumno.SeleccionaIdCurso(cbCurso.Text, cbParalelo.Text);
                        _Ad.modificar_Administrativo(Convert.ToInt32(txtci.Text), txtNombre.Text, txtApPaterno.Text, txtApMaterno.Text, txtCOntrasenia.Text, Convert.ToInt32(txtCelular.Text), Convert.ToDateTime(txtFechNac.Text), txtDireccion.Text, cbOcupacion.Text);
                        dgAdministrativos.DataSourceID = "SqlDataSourceAdministrativo";
                        dgAdministrativos.DataBind();
                        limpiar();
                        CAdmin.Style["visibility"] = "hidden";
                    }
                    if (rbEliminar.Checked == true)
                    {
                        _Ad.eliminar_Administrativo(Convert.ToInt32(txtci.Text));
                        dgAdministrativos.DataSourceID = "SqlDataSourceAdministrativo";
                        dgAdministrativos.DataBind();
                        limpiar();
                        CAdmin.Style["visibility"] = "hidden";

                    }
                }
            }
            catch (Exception)
            {

                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('EL FORMATO DE LA FECHA NO ES CORRECTA');", true);
            }
            
        }
        private void limpiar()
        {
            txtci.Text = "";
            txtNombre.Text = "";
            txtApPaterno.Text = "";
            txtApMaterno.Text = "";
            txtCOntrasenia.Text = "";
            txtCelular.Text = "";
            txtFechNac.Text = "";
            txtDireccion.Text = "";
            cbOcupacion.Text = "";
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            CAdmin.Style["visibility"] = "hidden";
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            conexion.Open();
            dgAdministrativos.DataSourceID = "";
            SqlCommand comando = new SqlCommand("Select * from Administrativo where Ci_Administrativo='" + Convert.ToInt32(txtBuscar.Text) + "'", conexion);//aca tu consulta
            SqlDataAdapter adaptador = new SqlDataAdapter();
            adaptador.SelectCommand = comando;
            DataTable tabla = new DataTable();
            adaptador.Fill(tabla);
            dgAdministrativos.DataSource = tabla;
            dgAdministrativos.DataBind();

        }
    }
}