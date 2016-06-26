using System;
using CEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CDdatos
{
    public class CDresultRProyeccionFinanciera
    {
        CDconexion oconexion = new CDconexion();
        public bool CrearResultRProyeccionFinanciera(tblResultRProyeccionFinanciera finan)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultPF", finan.idEmpresResultPF);
                ocmd.Parameters.Add("@pfechaResultPF", finan.fechaResultPF);
                ocmd.Parameters.Add("@ptotalResultPF", finan.totalResultPF);
                ocmd.Parameters.Add("@presult1PF", finan.result1PF);
                ocmd.Parameters.Add("@presult2PF", finan.result2PF);
                ocmd.Parameters.Add("@presult3PF", finan.result3PF);
                ocmd.Parameters.Add("@presult4PF", finan.result4PF);
                ocmd.Parameters.Add("@presult5PF", finan.result5PF);
                ocmd.Parameters.Add("@presult6PF", finan.result6PF);
                ocmd.Parameters.Add("@presult7PF", finan.result7PF);
                ocmd.Parameters.Add("@presult8PF", finan.result8PF);
                ocmd.Parameters.Add("@presult9PF", finan.result9PF);
                ocmd.Parameters.Add("@presult10PF", finan.result10PF);
                ocmd.Parameters.Add("@presult11PF", finan.result11PF);
                ocmd.Parameters.Add("@presult12PF", finan.result12PF);
                ocmd.Parameters.Add("@pobservaciones", finan.observaciones);
                ocmd.CommandText = "pa_CrearTblResultRProyeccionFinanciera";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();
                ocmd.Connection.Close();
                return true;
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }


        }


    }
}
