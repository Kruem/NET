using CDdatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas
{
    public class CRtblResultORPP
    {
        public bool CrearoRedefProcesProduct(tblResultORedefinProcesProduc oErpp)
        {
            try
            {
                CDresultORedefinProcesProduc oDss = new CDresultORedefinProcesProduc();
                return oDss.crearResultRedefinProcesProduc(oErpp);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
