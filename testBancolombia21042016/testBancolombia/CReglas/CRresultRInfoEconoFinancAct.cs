using CDdatos;
using CEntidades;
using System;


namespace CReglas
{
   public class CRresultRInfoEconoFinancAct
    {
        public bool CrearInfoEconoFinancAct(tblResultRInfoEconoFinancAct act)
        {
            try
            {
                CDresultRInfoEconoFinancAct oDss = new CDresultRInfoEconoFinancAct();
                return oDss.CrearResultRInfoEconoFinancAct(act);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
