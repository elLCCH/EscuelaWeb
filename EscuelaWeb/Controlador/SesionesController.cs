﻿using EscuelaWeb.Data;
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
        public bool AutenticarProfesor(int pCuenta, string pClave)
        {
            if (prof.FillByAutenticarProfesor(_ds.Profesor, pCuenta, pClave) > 0)
                return true;
            else
                return false;
        }
        public bool AutenticarAdministrativo(int pCuenta, string pClave)
        {
            if (admin.FillByAutenticarAdministrativo(_ds.Administrativo, pCuenta, pClave) > 0)
                return true;
            else
                return false;
        }
        public bool AutenticarSecretario(int pCuenta, string pClave)
        {
            if (admin.FillByAutenticarSecretario(_ds.Administrativo, pCuenta, pClave) > 0)
                return true;
            else
                return false;
        }
        public string GenerarPassword()
        {
            string contraseña = string.Empty;
            string[] letras = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "ñ", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
                                "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
            Random EleccionAleatoria = new Random();

            for (int i = 0; i < 7; i++)
            {
                int LetraAleatoria = EleccionAleatoria.Next(0, 100);
                int NumeroAleatorio = EleccionAleatoria.Next(0, 9);

                if (LetraAleatoria < letras.Length)
                {
                    contraseña += letras[LetraAleatoria];
                }
                else
                {
                    contraseña += NumeroAleatorio.ToString();
                }
            }
            return contraseña;
        }
    }
}