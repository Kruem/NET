using CDdatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas
{
    public class CRtblResultOEsc
    {
        public bool CrearoEscalabilidad(tblResultOEscalabilidad oEescalab)
        {
            try
            {
                CDresultOEscalabilidad oDss = new CDresultOEscalabilidad();
                return oDss.crearResultEscalabilidad(oEescalab);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
