using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EscuelaWeb.Controlador
{
    public class CursoController
    {
        CursoTableAdapter objCurso = new CursoTableAdapter();
        public string ObtenerNombreCurso(int pIdCurso)
        {
            return (objCurso.ScalarQueryObtenerNombreCurso(pIdCurso));
        }
    }
}