using EscuelaWeb.Data;
using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI.WebControls;


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
        public void insertar_alumno(string Pnombre, string Pap_paterno, string Pap_materno, string Pcontrasenia, int Pcel, DateTime Pfec, string Pdir, int Pid_curso)
        {
            est.Insert(Pnombre,Pap_paterno,Pap_materno,Pcontrasenia,Pcel,Pfec,Pdir,Pid_curso);
        }
        public void modificar(int Pci, string Pnombre, string Pap_paterno, string Pap_materno, string Pcontrasenia, int Pcel, DateTime Pfec, string Pdir, int Pid_curso)
        {
            est.Update(Pnombre, Pap_paterno, Pap_materno, Pcontrasenia, Pcel, Pfec, Pdir, Pid_curso,Pci);
        }
        public void listar(GridView dgv)
        {
            db = new Context();
            //dgv.DataSource = est.SelectEstudianteCurso(dgv);
            dgv.DataBind();
        }
        public void eliminar(int pCI)
        {
            est.Delete(pCI);
        }
    }
}