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
    public class CDresultRAntecedentesFinanciacion
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearResultRAntecedentesFinanciacion(tblResultRAntecedentesFinanciacion finan)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultAF", finan.idEmpresResultAF);
                ocmd.Parameters.Add("@pfechaResultAF", finan.fechaResultAF);
                ocmd.Parameters.Add("@ptotalResultAF", finan.totalResultAF);
                ocmd.Parameters.Add("@presult1AF", finan.result1AF);
                ocmd.Parameters.Add("@presult2AF", finan.result2AF);
                ocmd.Parameters.Add("@presult3AF", finan.result3AF);
                ocmd.Parameters.Add("@presult4AF", finan.result4AF);
                ocmd.Parameters.Add("@presult5AF", finan.result5AF);
                ocmd.Parameters.Add("@presult6AF", finan.result6AF);
                ocmd.Parameters.Add("@presult7AF", finan.result7AF);
                ocmd.Parameters.Add("@presult8AF", finan.result8AF);
                ocmd.Parameters.Add("@presult9AF", finan.result9AF);
                ocmd.Parameters.Add("@presult10AF", finan.result10AF);
                ocmd.Parameters.Add("@presult11AF", finan.result11AF);
                ocmd.Parameters.Add("@presult12AF", finan.result12AF);
                ocmd.Parameters.Add("@presult13AF", finan.result13AF);
                ocmd.Parameters.Add("@presult14AF", finan.result14AF);
                ocmd.Parameters.Add("@presult15AF", finan.result15AF);
                ocmd.Parameters.Add("@presult16AF", finan.result16AF);
                ocmd.Parameters.Add("@presult17AF", finan.result17AF);
                ocmd.Parameters.Add("@presult18AF", finan.result18AF);
                ocmd.Parameters.Add("@pobservaciones", finan.observaciones);
                ocmd.CommandText = "pa_crearTblResultRAntecedentesFinanciacion";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();
                ocmd.Connection.Close();
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
