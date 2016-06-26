using System;
using CEntidades;
using CDdatos;

namespace CReglas
{
   public class CRthResultRequerimEmpleoyRH
    {
        public bool CrearResultRequerimEmpleoyRH(tblResultTHRequerimEmpleoyRH rh)
        {
            try
            {
                CDresultTHRequerimEmpleoyRH oDss = new CDresultTHRequerimEmpleoyRH();
                return oDss.CrearResultTHRequerimEmpleoyRH(rh);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
           

        }
    }
}
