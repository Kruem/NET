using System;
using CEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CDdatos
{

    public class CDresultRAliadosCLaves
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearRsultRAliadosClaves(tblResultRAliadosClave aliado)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultAC", aliado.idEmpresResultAC);
                ocmd.Parameters.Add("@pfechaResultAC", aliado.fechaResultAC);
                ocmd.Parameters.Add("@ptotalResultAC", aliado.totalResultAC);
                ocmd.Parameters.Add("@presult1AC", aliado.result1AC);
                ocmd.Parameters.Add("@presult2AC", aliado.result2AC);
                ocmd.Parameters.Add("@presult3AC", aliado.result3AC);
                ocmd.Parameters.Add("@presult4AC", aliado.result4AC);
                ocmd.Parameters.Add("@presult5AC", aliado.result5AC);
                ocmd.Parameters.Add("@pobservaciones", aliado.observaciones);
                ocmd.CommandText = "pa_creartblResultRAliadosClave";
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

        public DataSet ConsulaRecResultRadarEmpresa(tblResultRAliadosClave aliado)
        {
            try
            {
                string fecha = aliado.fechaResultAC;
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;

                oCmd.Parameters.Add("@pidEmpresa", aliado.idEmpresResultAC);
                oCmd.Parameters.Add("@pfecha", aliado.fechaResultAC);
                oCmd.CommandText = "pa_consultaResultRecRadarIndiv";


                SqlDataAdapter oDA = new SqlDataAdapter(oCmd);
                DataSet oDS = new DataSet();
                oCmd.Connection = oconexion.Conectar();
                oDA.Fill(oDS, oCmd.CommandText);
                oCmd.Connection.Close();
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

        public DataSet ConsulaRecResultRadarEmpresa()
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.CommandText = "pa_consultaResultRecRadarTodas";
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
