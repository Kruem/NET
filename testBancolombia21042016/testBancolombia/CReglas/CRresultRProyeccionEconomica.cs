using CDdatos;
using CEntidades;
using System;

namespace CReglas
{
    public class CRresultRProyeccionEconomica
    {
        public bool CrearProyeccionEconomica(tblResultRProyeccionEconomica econo)
        {
            try
            {
                CDresultRProyeccionEconomica oDss = new CDresultRProyeccionEconomica();
                return oDss.CrearResultRProyeccionEconimica(econo);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

   }
}
