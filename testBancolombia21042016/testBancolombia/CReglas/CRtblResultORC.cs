using CDdatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas
{
    public class CRtblResultORC
    {
        public bool CrearoRelacClientes(tblResultORelacionClientes oErclient)
        {
            try
            {
                CDresultORelacionClientes oDss = new CDresultORelacionClientes();
                return oDss.crearResultRelacionClientes(oErclient);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
