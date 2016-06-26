using CDdatos;
using CEntidades;
using System;
using System.Data;

namespace CReglas
{
    public class CRresultRAliadosCLaves
    {
        public bool CrearAliadosCLaves(tblResultRAliadosClave alis)
        {
            try
            {
                CDresultRAliadosCLaves oDss = new CDresultRAliadosCLaves();
                return oDss.CrearRsultRAliadosClaves(alis);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet ConsulaRecResultRadarEmpresa(tblResultRAliadosClave alia)
        {
            try
            {
                CDresultRAliadosCLaves oDss = new CDresultRAliadosCLaves();
                return oDss.ConsulaRecResultRadarEmpresa(alia);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet ConsulaRecResultRadarEmpresa()
        {
            try
            {
                CDresultRAliadosCLaves oDss = new CDresultRAliadosCLaves();
                return oDss.ConsulaRecResultRadarEmpresa();
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
