using CDdatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas
{
    public class CRtblResultOCli
    {
        public bool CrearoClientes(tblResultOClientes oEclientes)
        {
            try
            {
                CDresultOClientes oDss = new CDresultOClientes();
                return oDss.crearResultClientes(oEclientes);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
