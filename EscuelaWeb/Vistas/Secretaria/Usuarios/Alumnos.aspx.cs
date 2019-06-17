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
    public partial class Usuarios : System.Web.UI.Page
    {
        AlumnoController cAlumno = new AlumnoController();
        
        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void lbtnUsuarios_Click(object sender, EventArgs e)
        {

        }

        protected void lbtnAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmAvisosSecretaria.aspx");
        }

        protected void lbtnCuenta_Click1(object sender, EventArgs e)
        {
            Response.Redirect("../frmCuentaBSecretaria.aspx");
        }

        protected void txtApMaterno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //obtenemos el curso
            int curso = cAlumno.SeleccionaIdCurso(cbCurso.Text, cbParalelo.Text);
            if (btnGuardar.Text=="REGISTRAR")
            {
                //ES NUEVO ENTONCES INSERTAR
                
                //insertamos y actualizamos tabla
                cAlumno.insertar_alumno(Convert.ToInt32(txtci.Text), txtNombre.Text, txtApPaterno.Text, txtApMaterno.Text, txtCOntrasenia.Text, Convert.ToInt32(txtCelular.Text), Convert.ToDateTime(txtFechNac.Text), txtDireccion.Text, curso);
                dgEstudiantes.DataSourceID = "SqlDataSourceAlumnos";
                dgEstudiantes.DataBind();
                CAlumnos.Style["visibility"] = "hidden";
                limpiar();
            }
            else
            {
                if (rbModificar.Checked == true)
                {
                    //YA EXISTE ENTONCES MODIFICAR

                    //int curso = cAlumno.SeleccionaIdCurso(cbCurso.Text, cbParalelo.Text);
                    cAlumno.modificar(Convert.ToInt32(txtci.Text), txtNombre.Text, txtApPaterno.Text, txtApMaterno.Text, txtCOntrasenia.Text, Convert.ToInt32(txtCelular.Text), Convert.ToDateTime(txtFechNac.Text), txtDireccion.Text, curso);
                    dgEstudiantes.DataSourceID = "SqlDataSourceAlumnos";
                    dgEstudiantes.DataBind();
                    limpiar();
                    CAlumnos.Style["visibility"] = "hidden";
                }
                if (rbEliminar.Checked == true)
                {
                    cAlumno.eliminar(Convert.ToInt32(txtci.Text));
                    dgEstudiantes.DataSourceID = "SqlDataSourceAlumnos";
                    dgEstudiantes.DataBind();
                    limpiar();
                    CAlumnos.Style["visibility"] = "hidden";

                }
            }
            


            

        }
        
        protected void dgEstudiantes_SelectedIndexChanged(object sender, EventArgs e)
        {//esto ayuda a q se llenen al seleccionar
            
            if (rbModificar.Checked == true)
            {
                CAlumnos.Style["visibility"] = "visible";
                btnGuardar.Text = "GUARDAR CAMBIOS";
                btnGuardar.OnClientClick = "return Modificacion();";
            }
            if (rbEliminar.Checked == true)
            {
                btnGuardar.OnClientClick = " return Eliminacion();";
                btnGuardar.Text = "ELIMINAR REGISTRO";
                CAlumnos.Style["visibility"] = "visible";
            }
            txtci.Text = dgEstudiantes.SelectedRow.Cells[1].Text;
            txtNombre.Text = dgEstudiantes.SelectedRow.Cells[2].Text;
            txtApPaterno.Text = dgEstudiantes.SelectedRow.Cells[3].Text;
            txtApMaterno.Text = dgEstudiantes.SelectedRow.Cells[4].Text;
            txtCOntrasenia.Text = dgEstudiantes.SelectedRow.Cells[5].Text;
            txtCelular.Text = dgEstudiantes.SelectedRow.Cells[6].Text;
            txtFechNac.Text = dgEstudiantes.SelectedRow.Cells[7].Text;
            txtDireccion.Text = dgEstudiantes.SelectedRow.Cells[8].Text;
            cbCurso.Text= dgEstudiantes.SelectedRow.Cells[9].Text;
            cbParalelo.Text = dgEstudiantes.SelectedRow.Cells[10].Text;
            
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
            cbCurso.Text = "";
            cbParalelo.Text = "";
        }

        //protected void btnBuscar_Click(object sender, EventArgs e)
        //{
        //    using (SqlConnection cnx = new SqlConnection("Data Source =.; Initial Catalog = dbEscuela; Integrated Security = True"))
        //    {
        //        dgEstudiantes.DataSourceID = "";
        //        cnx.Open();

        //        string query = "select * from Estudiante e, Curso c where (Nombre ='" + txtBusqueda.Text + "' or Ap_Paterno = '" + txtBusqueda.Text + "')";
        //        SqlCommand cmd = new SqlCommand(query, cnx);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);

        //        dgEstudiantes.DataSource = dt;
        //        dgEstudiantes.DataBind();
        //    }
        //}

        protected void txtBusqueda_TextChanged(object sender, EventArgs e)
        {    
        }

        protected void txtci_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            limpiar();
            CAlumnos.Style["visibility"] = "visible";
            //lblIdCurso.Text = "";
            btnGuardar.Text = "REGISTRAR";
            btnGuardar.OnClientClick = "return Agregacion();";
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            CAlumnos.Style["visibility"] = "hidden";
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection("server=.;DataBase=dbEscuela;Integrated Security=True");
            conexion.Open();
            dgEstudiantes.DataSourceID = "";
            SqlCommand comando = new SqlCommand("Select * from Estudiante e, Curso c where e.Id_Curso = c.Id_Curso and Ci_Estudiante='" + Convert.ToInt32(txtBuscar.Text) + "'", conexion);//aca tu consulta
            SqlDataAdapter adaptador = new SqlDataAdapter();
            adaptador.SelectCommand = comando;
            DataTable tabla = new DataTable();
            adaptador.Fill(tabla);
            dgEstudiantes.DataSource = tabla;
            dgEstudiantes.DataBind();
        }
    }
}