using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CDdatos
{
    public class CDresultTHCapacidBuscarInfoMercado
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearResultTHCapacidBuscarInfoMercado(tblResultTHCapacidBuscarInfoMercado mercado)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultCBIM",mercado.idEmpresResultCBIM);
                ocmd.Parameters.Add("@pfechaResultCBIM", mercado.fechaResultCBIM);
                ocmd.Parameters.Add("@ptotalResultCBIM", mercado.totalResultCBIM);
                ocmd.Parameters.Add("@presult1CBIM", mercado.result1CBIM);
                ocmd.Parameters.Add("@pobservaciones", mercado.observaciones);
                ocmd.CommandText = "pa_crearTblResultTHCapacidBuscarInfoMercado";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
