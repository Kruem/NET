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
    public class CDresultRFuentesFinancFuturas
    {
        CDconexion oconexion = new CDconexion();
        public bool CrearResultRFuentesFinancFuturas(tblResultRFuentesFinancFuturas futuras)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultFFF", futuras.idEmpresResultFFF);
                ocmd.Parameters.Add("@pfechaResultFFF", futuras.fechaResultFFF);
                ocmd.Parameters.Add("@ptotalResultFFF", futuras.totalResultFFF);
                ocmd.Parameters.Add("@presult1FFF", futuras.result1FFF);
                ocmd.Parameters.Add("@presult2FFF", futuras.result2FFF);
                ocmd.Parameters.Add("@presult3FFF", futuras.result3FFF);
                ocmd.Parameters.Add("@presult4FFF", futuras.result4FFF);
                ocmd.Parameters.Add("@presult5FFF", futuras.result5FFF);
                ocmd.Parameters.Add("@presult6FFF", futuras.result6FFF);
                ocmd.Parameters.Add("@presult7FFF", futuras.result7FFF);
                ocmd.Parameters.Add("@presult8FFF", futuras.result8FFF);
                ocmd.Parameters.Add("@presult9FFF", futuras.result9FFF);
                ocmd.Parameters.Add("@presult10FFF", futuras.result10FFF);
                ocmd.Parameters.Add("@presult11FFF", futuras.result11FFF);
                ocmd.Parameters.Add("@presult12FFF", futuras.result12FFF);
                ocmd.Parameters.Add("@presult13FFF", futuras.result13FFF);
                ocmd.Parameters.Add("@presult14FFF", futuras.result14FFF);
                ocmd.Parameters.Add("@presult15FFF", futuras.result15FFF);
                ocmd.Parameters.Add("@presult16FFF", futuras.result16FFF);
                ocmd.Parameters.Add("@presult17FFF", futuras.result17FFF);
                ocmd.Parameters.Add("@pobservaciones", futuras.observaciones);
                ocmd.CommandText = "pa_crearTblResultRFuentesFinancFuturas";
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
