using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EscuelaWeb.Controlador
{
    public class CalificacionesController
    {
        CalificacionesTableAdapter objCalificaciones = new CalificacionesTableAdapter();
        public void InsertarCalificacion(int PciEst,int Panio,string Pbimestre, int PIdMateria, double Pcalificacion)
        {
            objCalificaciones.Insert(PciEst,Panio,Pbimestre,PIdMateria,Pcalificacion);
        }
        public void ModificarCalificacion(double pNota, int pCIest, int pMateria)
        {
            objCalificaciones.Update(pNota, pCIest, pMateria);
        }
    }
}