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
    public class CDresultOClientes
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultClientes(tblResultOClientes oEResCli)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultC", oEResCli.idEmpresResultC);
                ocmd.Parameters.Add("@pfechaResultC", oEResCli.fechaResultC);
                ocmd.Parameters.Add("@ptotalResultC", oEResCli.totalResultC);
                ocmd.Parameters.Add("@presult1C", oEResCli.result1C);
                ocmd.Parameters.Add("@presult2C", oEResCli.result2C);
                ocmd.Parameters.Add("@presult3C", oEResCli.result3C);
                ocmd.Parameters.Add("@presult4C", oEResCli.result4C);
                ocmd.Parameters.Add("@presult5C", oEResCli.result5C);
                ocmd.Parameters.Add("@presult6C", oEResCli.result6C);
                ocmd.Parameters.Add("@presult7C", oEResCli.result7C);
                ocmd.Parameters.Add("@pobservaciones", oEResCli.observaciones);
                ocmd.CommandText = "pa_crearTblResultOClientes";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (SqlException ErrorDB)
            {
                throw new Exception(ErrorDB.Message);
            }
            catch (Exception Errorlenguaje)
            {
                throw new Exception(Errorlenguaje.Message);
            }


        }
    }
}
