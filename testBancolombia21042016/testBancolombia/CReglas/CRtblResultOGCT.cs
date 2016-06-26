using CDdatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas
{
    public class CRtblResultOGCT
    {
        public bool CrearoGeneConcTecno(tblResultOGestionConocimTecnol oEgct)
        {
            try
            {
                CDresultOGestionConocimTecnol oDss = new CDresultOGestionConocimTecnol();
                return oDss.crearResultGestionConocimTecnol(oEgct);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
