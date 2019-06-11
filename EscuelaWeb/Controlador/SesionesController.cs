using EscuelaWeb.Data;
using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EscuelaWeb.Controlador
{
    public class SesionesController
    {
        AdministrativoTableAdapter admin = new AdministrativoTableAdapter();
        EstudianteTableAdapter est = new EstudianteTableAdapter();
        ProfesorTableAdapter prof = new ProfesorTableAdapter();
        dsEscuela _ds = new dsEscuela();
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


        public bool AutenticarEstudiante(int pCuenta, string pClave)
        {
            if (est.FillByAutenticarEstudiante(_ds.Estudiante, pCuenta, pClave) > 0)
                return true;
            else
                return false;
        }
    }
}