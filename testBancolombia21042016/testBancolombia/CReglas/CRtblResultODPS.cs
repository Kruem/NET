using CDdatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas
{
    public class CRtblResultODPS
    {
        public bool CrearoDlloProdServ(tblResultODlloProductoServicio oEdps)
        {
            try
            {
                CDresultODlloProductoServicio oDss = new CDresultODlloProductoServicio();
                return oDss.crearResultDlloProductoServicio(oEdps);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
