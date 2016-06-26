using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using CDdatos;

namespace CReglas
{
    public class CRtblResultOCDI
    {
        public bool CrearoCultInnov(tblResultOCulturaDeLaInnovacion oEcultura)
        {
            try
            {
                CDresultOCultInnova oDss = new CDresultOCultInnova();
                return oDss.crearResultCulturaInnova(oEcultura);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
