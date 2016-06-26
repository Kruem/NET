using CDdatos;
using CEntidades;
using System;

namespace CReglas
{
    public class CRresultRProyeccionFinanciera
    {
        public bool CrearProyeccionFinanciera(tblResultRProyeccionFinanciera finan)
        {
            try
            {
                CDresultRProyeccionFinanciera oDss = new CDresultRProyeccionFinanciera();
                return oDss.CrearResultRProyeccionFinanciera(finan);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
