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
    public class CRtblResultOCan
    {
        public bool CrearoCanales(tblResultOCanales oEcanales)
        {
            try
            {
                CDresultOCanales oDss = new CDresultOCanales();
                return oDss.crearResultCanales(oEcanales);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        
        public DataSet consultaCanal(tblResultOCanales objCanal)
        {
            try
            {
                CDresultOCanales oDss = new CDresultOCanales();
                return oDss.ConsultarCanal(objCanal);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet ConsultaRadarOportunidad()
        {
            try
            {
                CDresultOCanales oDss = new CDresultOCanales();
                return oDss.ConsulOpResultRadarEmpresa();
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
        public DataSet ConsultaRadarOportunidad(tblResultOCanales objRadar)
        {
            try
            {
                CDresultOCanales oDss = new CDresultOCanales();
                return oDss.ConsulOpResultRadarEmpresa(objRadar);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
