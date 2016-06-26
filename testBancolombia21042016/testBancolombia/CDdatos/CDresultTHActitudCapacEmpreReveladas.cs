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
    public class CDresultTHActitudCapacEmpreReveladas
    {
        CDconexion oconexion = new CDconexion();
        public bool CrearResultTHActitudCapacEmpreReveladas(tblResultTHActitudCapacEmpreReveladas empre)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultACER", empre.idEmpresResultACER);
                ocmd.Parameters.Add("@pfechaResultACER", empre.fechaResultACER);
                ocmd.Parameters.Add("@ptotalResultACER", empre.totalResultACER);
                ocmd.Parameters.Add("@presult1ACER", empre.result1ACER);
                ocmd.Parameters.Add("@presult2ACER", empre.result2ACER);
                ocmd.Parameters.Add("@presult3ACER", empre.result3ACER);
                ocmd.Parameters.Add("@presult4ACER", empre.result4ACER);
                ocmd.Parameters.Add("@presult5ACER", empre.result5ACER);
                ocmd.Parameters.Add("@pobservaciones", empre.observaciones);
                ocmd.CommandText = "pa_crearTblResultTHActitudCapacEmpreReveladas";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet ConsulTHpResultRadarEmpresa(tblResultTHActitudCapacEmpreReveladas oempresa)
        {
            try
            {
                string fecha = oempresa.fechaResultACER;
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                if ((fecha == null) || (fecha == ""))
                {
                    oCmd.Parameters.Add("@pidEmpresa", oempresa.idEmpresResultACER);
                    oCmd.CommandText = "pa_consultaResultTHRadarIndiv";
                }
                else
                {
                    oCmd.Parameters.Add("@pidEmpresa", oempresa.idEmpresResultACER);
                    oCmd.Parameters.Add("@pfecha", oempresa.fechaResultACER);
                    oCmd.CommandText = "pa_consultaResultTHRadarIndiv";
                }

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

        public DataSet ConsulTHpResultRadarEmpresa()
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.CommandText = "pa_consultaResultTHRadarTodas";
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

        public DataSet consultaNoAplicaTH(tblResultTHActitudCapacEmpreReveladas empre)
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.Parameters.Add("@pidempresa", empre.idEmpresResultACER);
                oCmd.Parameters.Add("@pfecha", empre.fechaResultACER);
                oCmd.CommandText = "pa_THNo_AplicaIndividual";
                SqlDataAdapter oDA = new SqlDataAdapter(oCmd);
                DataSet DS = new DataSet();
                oCmd.Connection = oconexion.Conectar();
                oDA.Fill(DS, oCmd.CommandText);
                oCmd.Connection.Close();
                return DS;
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
