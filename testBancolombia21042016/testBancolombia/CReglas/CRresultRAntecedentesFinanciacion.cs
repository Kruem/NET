using CDdatos;
using CEntidades;
using System;

namespace CReglas
{
   public class CRresultRAntecedentesFinanciacion
    {
        public bool CrearAntecedentesFinanciacion(tblResultRAntecedentesFinanciacion fnn)
        {
            try
            {
                CDresultRAntecedentesFinanciacion oDss = new CDresultRAntecedentesFinanciacion();
                return oDss.CrearResultRAntecedentesFinanciacion(fnn);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
