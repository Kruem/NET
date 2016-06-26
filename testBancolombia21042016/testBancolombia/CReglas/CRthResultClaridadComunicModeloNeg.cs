using System;
using CEntidades;
using CDdatos;

namespace CReglas
{
    public class CRthResultClaridadComunicModeloNeg
    {
        public bool CrearResultClaridadComunicModeloNeg(tblResultTHClaridadComunicModeloNeg neg)
        {
            try
            {
                CDresultTHClaridadComunicModeloNeg oDss = new CDresultTHClaridadComunicModeloNeg();
                return oDss.CrearResultTHClaridadComunicModeloNeg(neg);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
            
        }
    }
}
