using CDdatos;
using CEntidades;
using System;


namespace CReglas
{
    public class CRresultRFuentesFinancFuturas
    {
        public bool CrearFuentesFinancFuturas(tblResultRFuentesFinancFuturas futuras)
        {
            try
            {
                CDresultRFuentesFinancFuturas oDss = new CDresultRFuentesFinancFuturas();
                return oDss.CrearResultRFuentesFinancFuturas(futuras);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
