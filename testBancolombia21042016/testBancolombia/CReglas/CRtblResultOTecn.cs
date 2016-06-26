using CDdatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas
{
    public class CRtblResultOTecn
    {
        public bool CrearoTecnologia(tblResultOTecnologia oEtecno)
        {
            try
            {
                CDresultOTecnologia oDss = new CDresultOTecnologia();
                return oDss.crearResultTecnologia(oEtecno);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
