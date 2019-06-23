using EscuelaWeb.Data;
using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace EscuelaWeb.Controlador
{
    public class AlumnoController
    {
        EstudianteTableAdapter est = new EstudianteTableAdapter();
        private int ci_estudiante;
        private string nombre;
        private string ap_paterno;
        private string ap_materno;
        private string contrasenia;
        private int celular;
        private DateTime fecha_nac;
        private string direccion;
        private int id_curso;

        public int Ci_estudiante { get => ci_estudiante; set => ci_estudiante = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Ap_paterno { get => ap_paterno; set => ap_paterno = value; }
        public string Ap_materno { get => ap_materno; set => ap_materno = value; }
        public string Contrasenia { get => contrasenia; set => contrasenia = value; }
        public int Celular { get => celular; set => celular = value; }
        public DateTime Fecha_nac { get => fecha_nac; set => fecha_nac = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public int Id_curso { get => id_curso; set => id_curso = value; }

        Context db;
        public void insertar_alumno(int PCiEst, string Pnombre, string Pap_paterno, string Pap_materno, string Pcontrasenia, int Pcel, DateTime Pfec, string Pdir, int Pid_curso)
        {
            est.Insert(PCiEst,Pnombre,Pap_paterno,Pap_materno,Pcontrasenia,Pcel,Pfec,Pdir,Pid_curso);
        }
        public void modificar(int Pci, string Pnombre, string Pap_paterno, string Pap_materno, string Pcontrasenia, int Pcel, DateTime Pfec, string Pdir, int Pid_curso)
        {
            est.Update(Pci,Pnombre,Pap_paterno,Pap_materno,Pcontrasenia,Pcel,Pfec,Pdir,Pid_curso,Pci);
        }
        public void listar(GridView dgv)
        {
            db = new Context();
            dgv.DataBind();
        }
        public void eliminar(int pCI)
        {
            est.Delete(pCI);
        }
        public int SeleccionaIdCurso(string pCurso, string pParalelo)
        {
            int curso = (int)est.SeleccionIdCurso(pCurso, pParalelo);
            return curso;
        }
        public int BuscarEstudiante(string pBuscar)
        {
            int estudiante = (int)est.BuscarEstudianteId(pBuscar);
            return estudiante;
        }

        public void MostrarCuentaInteresado(int Pci, TextBox txtNombre, TextBox txtApellidos)
        {
            txtNombre.Text = Convert.ToString(est.obtenerNombreEst(Pci));
            txtApellidos.Text = Convert.ToString(est.obtenerApellidosEst(Pci));
            //txtContrasenia.Text = Convert.ToString(est.obtenerContrasenia(Pci));
        }
        public void ModificarContrasenia(int Pci ,string Pcontrasenia)
        {
            est.ModificarContrasenia(Pci ,Pcontrasenia, Pci);
        }
        public void obtenerCi(Label lbl, string nombre)
        {
            lbl.Text = Convert.ToString(est.ScalarQueryObtenerCi(nombre));
        }
        public void obtenerNombreCompleto(Label lbl, int Pci)
        {
            lbl.Text = "BIENVENIDO "+est.ScalarQueryObtenerNombreCompleto(Pci);
        }
    }
}