using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using CDdatos;

namespace CReglas
{
    public class CRoTecnologia
    {
        public bool CrearoTecnologia(tblOTecnologia tecnologia)
        {
            try
            {
                CDoTecnologia oDss = new CDoTecnologia();
                return oDss.CrearOTecnologia(tecnologia);
            }
            catch (Exception error)
            {


                throw new Exception(error.Message);
            }
        }
    }
}
