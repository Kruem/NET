using System;
using CEntidades;
using CDdatos;
using System.Data;

namespace CReglas
{
    public class CRthResulActitudCapacEmpreReveladas
    {

        public bool CrearTHResulActitudCapacEmpreReveladas(tblResultTHActitudCapacEmpreReveladas actitud)
        {
            try
            {
                CDresultTHActitudCapacEmpreReveladas oDss = new CDresultTHActitudCapacEmpreReveladas();
                return oDss.CrearResultTHActitudCapacEmpreReveladas(actitud);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }

        }
        public DataSet ConsultaRadarTalentoHumano()
        {
            try
            {
                CDresultTHActitudCapacEmpreReveladas oDss = new CDresultTHActitudCapacEmpreReveladas();
                return oDss.ConsulTHpResultRadarEmpresa();

            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
        public DataSet ConsultaRadarTalentoHumano(tblResultTHActitudCapacEmpreReveladas reve)
        {
            try
            {
                CDresultTHActitudCapacEmpreReveladas oDss = new CDresultTHActitudCapacEmpreReveladas();
                return oDss.ConsulTHpResultRadarEmpresa(reve);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet consultaNoAplicaTH(tblResultTHActitudCapacEmpreReveladas acerEmp)
        {
            try
            {
                CDresultTHActitudCapacEmpreReveladas oDss = new CDresultTHActitudCapacEmpreReveladas();
                return oDss.consultaNoAplicaTH(acerEmp);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
