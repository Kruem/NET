using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using System.Data;
using System.Data.SqlClient;

namespace CDdatos
{
    public class CDTimmonsOportunidad
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearCategoriaTimmonsOp(tblTimmOp timOp)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaTimm", timOp.pidEmpresaTOp);
                ocmd.CommandText = "pa_crear_Timm_Op";
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
        public bool ModificarTimmonsOp(tblTimmOp timOp)
        {
            try
            {
                //SqlCommand ocmd = new SqlCommand();
                //ocmd.CommandType = CommandType.StoredProcedure;
                //ocmd.Parameters.Add("@pidEmpresaTimm", timOp.pidEmpresaTOp);
                //ocmd.CommandText = "pa_";
                //ocmd.Connection = oconexion.Conectar();
                //ocmd.ExecuteNonQuery();
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
        public DataSet ConsultarTimmonsOpTodos()
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.CommandText = "pa_consultar_Timm_Op_Todos";
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

        public DataSet ConsultarTimmonsOpEmpresa(tblTimmOp timOp)
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.Parameters.Add("@pidEmpresaTOp", timOp.pidEmpresaTOp);
                oCmd.CommandText = "pa_consultar_Timm_Op_IndEmpresa";
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

        public DataSet ConsultarTimmonsOpFecha(tblTimmOp timOp)
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.Parameters.Add("@pfechaTOp", timOp.fechaTOp);
                oCmd.CommandText = "pa_consultar_Timm_Op_Fecha";
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