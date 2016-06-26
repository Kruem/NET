using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using CDdatos;
using System.Data;
namespace CReglas
{
    class CRoDlloProductoServicio
    {
        public bool CrearoDlloProductoServicio(tblODlloProductoServicio servicio)
        {
            try
            {
                CDoDlloProductoServicio oDss = new CDoDlloProductoServicio();
                return oDss.CrearODlloProductoServicio(servicio);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
