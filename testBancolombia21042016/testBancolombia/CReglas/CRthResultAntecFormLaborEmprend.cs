using System;
using CEntidades;
using CDdatos;

namespace CReglas
{
    public class CRthResultAntecFormLaborEmprend
    {
        public bool CrearTHResultAntecFormLaborEmprend(tblResultTHAntecFormLaborEmprend emprend)
        {
            try
            {
                CDresultTHAntecFormLaborEmprend oDss = new CDresultTHAntecFormLaborEmprend();
                return oDss.CrearResultTHAntecFormLaborEmprend(emprend);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
            
        }
    }
}
