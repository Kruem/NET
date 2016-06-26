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
    public class CRDefaultOPTHRC
    {
        public bool crearDefOpThRc(tblCategoriaInicialDefault oEdefopthrc)
        {
            try
            {
                CDdefaultOPTHRC oDdef = new CDdefaultOPTHRC();
                return oDdef.crearDefaultOPTHRC(oEdefopthrc);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet consultaDefaultOPTHRC_Fecha(tblCategoriaInicialDefault oEdefopthrc)
        {
            try
            {
                CDdefaultOPTHRC oDdef = new CDdefaultOPTHRC();
                return oDdef.consultarOPTHRCxFecha(oEdefopthrc);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
        public DataSet consultaDefaultOPTHRCini()
        {
            try
            {
                CDdefaultOPTHRC oDdef = new CDdefaultOPTHRC();
                return oDdef.consultarOPTHRCini();
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
