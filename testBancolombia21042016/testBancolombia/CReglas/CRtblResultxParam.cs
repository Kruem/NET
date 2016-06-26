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
    public class CRtblResultxParam
    {
        public bool crearDefaultEmpresa(tblResultxParam oempRxP)
        {
            try
            {
                CDtblResultxParam oDEmpDef = new CDtblResultxParam();
                return oDEmpDef.CrearResultParam(oempRxP);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public bool ModificarDefaultEmpresa(tblResultxParam oempRxP)
        {
            try
            {
                CDtblResultxParam oDEmpDef = new CDtblResultxParam();
                return oDEmpDef.ModificarResultParam(oempRxP);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet consultaParamxPruebaxEmpresa(tblResultxParam objRxP)
        {
            try
            {
                CDtblResultxParam oDss = new CDtblResultxParam();
                return oDss.consultaParamxPruebaxEmpresa(objRxP);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
