using System;
using CEntidades;
using CDdatos;

namespace CReglas
{
    public class CRthResultFormalizacion
    {
        public bool CrearResultFormalizacion(tblResultTHFormalizacion forma)
        {
            try
            {
                CDresultTHFormalizacion oDss = new CDresultTHFormalizacion();
                return oDss.CrearResultTHFormalizacion(forma);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
            
        }
    }
}
