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
    public class CDresultOCanales
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultCanales(tblResultOCanales oEResultCan)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultCAN", oEResultCan.idEmpresResultCAN);
                ocmd.Parameters.Add("@pfechaResultCAN", oEResultCan.fechaResultCAN);
                ocmd.Parameters.Add("@ptotalResultCAN", oEResultCan.totalResultCAN);
                ocmd.Parameters.Add("@presult1CAN", oEResultCan.result1CAN);
                ocmd.Parameters.Add("@presult2CAN", oEResultCan.result2CAN);
                ocmd.Parameters.Add("@presult3CAN", oEResultCan.result3CAN);
                ocmd.Parameters.Add("@presult4CAN", oEResultCan.result4CAN);
                ocmd.Parameters.Add("@presult5CAN", oEResultCan.result5CAN);
                ocmd.Parameters.Add("@presult6CAN", oEResultCan.result6CAN);
                ocmd.Parameters.Add("@presult7CAN", oEResultCan.result7CAN);
                ocmd.Parameters.Add("@presult8CAN", oEResultCan.result8CAN);
                ocmd.Parameters.Add("@presult9CAN", oEResultCan.result9CAN);
                ocmd.Parameters.Add("@presult10CAN", oEResultCan.result10CAN);
                ocmd.Parameters.Add("@presult11CAN", oEResultCan.result11CAN);
                ocmd.Parameters.Add("@presult12CAN", oEResultCan.result12CAN);
                ocmd.Parameters.Add("@presult13CAN", oEResultCan.result13CAN);
                ocmd.Parameters.Add("@presult14CAN", oEResultCan.result14CAN);
                ocmd.Parameters.Add("@presult15CAN", oEResultCan.result15CAN);
                ocmd.Parameters.Add("@presult16CAN", oEResultCan.result16CAN);
                ocmd.Parameters.Add("@presult17CAN", oEResultCan.result17CAN);
                ocmd.Parameters.Add("@presult18CAN", oEResultCan.result18CAN);
                ocmd.Parameters.Add("@presult19CAN", oEResultCan.result19CAN);
                ocmd.Parameters.Add("@pobservaciones", oEResultCan.observaciones);
                ocmd.CommandText = "pa_crearTblResultOCanales";
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

        public DataSet ConsulOpResultRadarEmpresa(tblResultOCanales oEResultCan)
        {
            try
            {
                string fecha = oEResultCan.fechaResultCAN;

                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                if ((fecha == null) || (fecha == ""))
                {
                    oCmd.Parameters.Add("@pidEmpresa", oEResultCan.idEmpresResultCAN);
                    oCmd.CommandText = "pa_consultaResultOportuRadarIndiv";
                }
                else
                {
                    oCmd.Parameters.Add("@pidEmpresa", oEResultCan.idEmpresResultCAN);
                    oCmd.Parameters.Add("@pfecha", oEResultCan.fechaResultCAN);
                    //oCmd.Parameters.Add("@pnro", 1);
                    oCmd.CommandText = "pa_consultaResultOportuRadarIndiv";
                }

                SqlDataAdapter oDA = new SqlDataAdapter(oCmd);
                DataSet oDS = new DataSet();
                oCmd.Connection = oconexion.Conectar();
                oDA.Fill(oDS, oCmd.CommandText);
                return oDS;

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
        public DataSet ConsulOpResultRadarEmpresa()
        {
            try
            {

                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.CommandText = "pa_consultaResultOportuRadarTodas";
                SqlDataAdapter oDA = new SqlDataAdapter(oCmd);
                DataSet oDS = new DataSet();
                oCmd.Connection = oconexion.Conectar();
                oDA.Fill(oDS, oCmd.CommandText);
                return oDS;

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

        public DataSet ConsultarCanal(tblResultOCanales oEResultCan)
        {
            try
            {

                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.Parameters.Add("@pidEmpresResultCAN", oEResultCan.idEmpresResultCAN);
                oCmd.CommandText = "pa_consultaResultOCanales";
                SqlDataAdapter oDA = new SqlDataAdapter(oCmd);
                DataSet oDS = new DataSet();
                oCmd.Connection = oconexion.Conectar();
                oDA.Fill(oDS, oCmd.CommandText);
                return oDS;

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
