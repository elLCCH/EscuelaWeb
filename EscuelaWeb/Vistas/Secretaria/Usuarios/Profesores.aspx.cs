using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Acciones.SecretarioAcciones
{
    public partial class Profesores : System.Web.UI.Page
    {
        Profesorescontroller P = new Profesorescontroller();
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

        protected void lbtnAlumnos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alumnos.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../index.aspx");
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
            CProf.Style["visibility"] = "visible";
            //lblIdCurso.Text = "";
            btnGuardar.Text = "REGISTRAR";
            //btnGuardar.OnClientClick = "return Agregacion();";
            SesionesController sc = new SesionesController();
            txtCOntrasenia.Text=sc.GenerarPassword();
        }

        protected void dgProfesores_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbModificar.Checked == true)
            {
                CProf.Style["visibility"] = "visible";
                btnGuardar.Text = "GUARDAR CAMBIOS";
                btnGuardar.OnClientClick = "return Modificacion();";
            }
            if (rbEliminar.Checked == true)
            {
                btnGuardar.OnClientClick = " return Eliminacion();";
                btnGuardar.Text = "ELIMINAR REGISTRO";
                CProf.Style["visibility"] = "visible";
            }
            txtci.Text = dgProfesores.SelectedRow.Cells[1].Text;
            txtNombre.Text = dgProfesores.SelectedRow.Cells[2].Text;
            txtApPaterno.Text = dgProfesores.SelectedRow.Cells[3].Text;
            txtApMaterno.Text = dgProfesores.SelectedRow.Cells[4].Text;
            txtCOntrasenia.Text = dgProfesores.SelectedRow.Cells[5].Text;
            txtCelular.Text = dgProfesores.SelectedRow.Cells[6].Text;
            txtFechNac.Text = dgProfesores.SelectedRow.Cells[7].Text;
            txtDireccion.Text = dgProfesores.SelectedRow.Cells[8].Text;
            cbCurso.Text = dgProfesores.SelectedRow.Cells[9].Text;
            cbParalelo.Text = dgProfesores.SelectedRow.Cells[10].Text;

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                int curso = P.SeleccionaIdCurso(cbCurso.Text, cbParalelo.Text);
                if (btnGuardar.Text == "REGISTRAR")
                {
                    //ES NUEVO ENTONCES INSERTAR
                    //insertamos y actualizamos tabla
                    P.insertar_Profesor(Convert.ToInt32(txtci.Text), txtNombre.Text, txtApPaterno.Text, txtApMaterno.Text, txtCOntrasenia.Text, Convert.ToInt32(txtCelular.Text), Convert.ToDateTime(txtFechNac.Text), txtDireccion.Text, curso);
                    dgProfesores.DataSourceID = "SqlDataSourceProfesores";
                    dgProfesores.DataBind();
                    CProf.Style["visibility"] = "hidden";
                    limpiar();
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('REGISTRO AGREGADO SATISFACTORIAMENTE');", true);
                }
                else
                {
                    if (rbModificar.Checked == true)
                    {
                        //YA EXISTE ENTONCES MODIFICAR

                        //int curso = cAlumno.SeleccionaIdCurso(cbCurso.Text, cbParalelo.Text);
                        P.modificar_Profesor(Convert.ToInt32(txtci.Text), txtNombre.Text, txtApPaterno.Text, txtApMaterno.Text, txtCOntrasenia.Text, Convert.ToInt32(txtCelular.Text), Convert.ToDateTime(txtFechNac.Text), txtDireccion.Text, curso);
                        dgProfesores.DataSourceID = "SqlDataSourceProfesores";
                        dgProfesores.DataBind();
                        limpiar();
                        CProf.Style["visibility"] = "hidden";
                    }
                    if (rbEliminar.Checked == true)
                    {
                        P.eliminar_Profesor(Convert.ToInt32(txtci.Text));

                        dgProfesores.DataBind();
                        limpiar();
                        CProf.Style["visibility"] = "hidden";

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
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            CProf.Style["visibility"] = "hidden";
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("server=.;DataBase=dbEscuela;Integrated Security=True");
            conexion.Open();
            dgProfesores.DataSourceID = "";
            SqlCommand comando = new SqlCommand("Select * from Profesor where Ci_Profesor='" + Convert.ToInt32(txtBuscar.Text) + "'", conexion);//aca tu consulta
            SqlDataAdapter adaptador = new SqlDataAdapter();
            adaptador.SelectCommand = comando;
            DataTable tabla = new DataTable();
            adaptador.Fill(tabla);
            dgProfesores.DataSource = tabla;
            dgProfesores.DataBind();
        }
    }
}