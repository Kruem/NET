using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CDdatos;
using CEntidades;

namespace CReglas
{
    public class CRtblResultOPI
    {
        public bool CrearoPropiedadIntelectual(tblResultOPropiedadIntelectual printel)
        {
            try
            {
                CDresultOPropiedadIntelectual oDss = new CDresultOPropiedadIntelectual();
                return oDss.crearResultPropIntelectual(printel);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
