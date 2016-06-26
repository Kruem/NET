using CEntidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDdatos
{
    public class CDtblResultxParam
    {
        CDconexion oConexion = new CDconexion();

        public bool CrearResultParam(tblResultxParam objRxP)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.Connection = oConexion.Conectar();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresa", objRxP.idEmpresa);
                ocmd.Parameters.Add("@pidparam", objRxP.idparam);
                ocmd.Parameters.Add("@pfechaparam", objRxP.fechaparam);
                ocmd.CommandText = "pa_crearResultxParam";
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

        public bool ModificarResultParam(tblResultxParam objRxP)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.Connection = oConexion.Conectar();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresa", objRxP.idEmpresa);
                ocmd.Parameters.Add("@pidparam", objRxP.idparam);
                ocmd.Parameters.Add("@pfechaparam", objRxP.fechaparam);
                ocmd.Parameters.Add("@pfechaOtra", objRxP.fechaOtra);                
                ocmd.Parameters.Add("@pnro", objRxP.nro);
                ocmd.CommandText = "pa_modificarResultxParam";
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

        public DataSet consultaParamxPruebaxEmpresa(tblResultxParam objRxP)
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.Parameters.Add("@pidEmpresa", objRxP.idEmpresa);
                oCmd.Parameters.Add("@pfechaparam", objRxP.fechaparam);
                oCmd.CommandText = "pa_consultaEmpresaxParametrosxResultadosIND";
                SqlDataAdapter oDA = new SqlDataAdapter(oCmd);
                DataSet oDS = new DataSet();
                oCmd.Connection = oConexion.Conectar();
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
