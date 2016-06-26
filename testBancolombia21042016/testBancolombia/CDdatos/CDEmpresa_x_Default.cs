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
    public class CDEmpresa_x_Default
    {
        CDconexion oConexion = new CDconexion();
        public bool crearDefaultEmpresa(tblDefault_X_Empresa oEdefEmpr)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.Connection = oConexion.Conectar();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pconsecCategDefault", oEdefEmpr.consecCategDefault);
                ocmd.Parameters.Add("@pfechaEmpDef", oEdefEmpr.fechaDxE);
                ocmd.Parameters.Add("@pidEmpresaDef", oEdefEmpr.idEmpresaDef);
                ocmd.CommandText = "pa_crearDefaultxEmpresa";
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

        public DataSet ConsultarcategoriasEmpresa(tblDefault_X_Empresa oEdefEmpr)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaDef", oEdefEmpr.idEmpresaDef);
                ocmd.CommandText = "pa_consultaDefaultEmpresa";
                SqlDataAdapter oDA = new SqlDataAdapter(ocmd);
                DataSet oDS = new DataSet();
                ocmd.Connection = oConexion.Conectar();
                oDA.Fill(oDS, ocmd.CommandText);
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

        public DataSet ConsultarcategoriasEmpresa()
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.CommandText = "pa_consultaDefaultEmpresa";
                SqlDataAdapter oDA = new SqlDataAdapter(ocmd);
                DataSet oDS = new DataSet();
                ocmd.Connection = oConexion.Conectar();
                oDA.Fill(oDS, ocmd.CommandText);
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
        public DataSet ConsultarcategoriasEmpresaTIMM(tblDefault_X_Empresa oEdefEmpr)
        {//retorna tabla con datos de empresa y datos de param default (nombre empresa y consecutivos default)
            try
            {
                string date = oEdefEmpr.fechaDxE;
                int consD = oEdefEmpr.consecCategDefault;


                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                if ((date == "") || (date == null))
                {
                    if ((consD == 0) || (consD == null))
                    {
                        ocmd.Parameters.Add("@pconsecEmp", oEdefEmpr.idEmpresaDef);
                        ocmd.CommandText = "consultaEmpParam_Def_Todas";

                    }
                    else
                    {

                        ocmd.Parameters.Add("@pconsecEmp", oEdefEmpr.idEmpresaDef);
                        ocmd.Parameters.Add("@pconsDefault", oEdefEmpr.consecCategDefault);
                        ocmd.CommandText = "consultaEmpParam_Def_ind";

                    }

                }
                else
                {
                    if ((consD == 0) || (consD == null))
                    {
                        if ((date != "") || (date != null))
                        {
                            ocmd.Parameters.Add("@pconsecEmp", oEdefEmpr.idEmpresaDef);
                            ocmd.Parameters.Add("@pfechaDxE", oEdefEmpr.fechaDxE);
                            ocmd.CommandText = "consultaEmpParam_x_FechaIND";
                        }
                    }
                    else {
                        if ((consD != 0) || (consD != null))
                        {
                            if ((date != "") || (date != null))
                            {
                                ocmd.Parameters.Add("@pconsecEmp", oEdefEmpr.idEmpresaDef);
                                ocmd.Parameters.Add("@pconsDefault", oEdefEmpr.consecCategDefault);
                                ocmd.Parameters.Add("@pFechaParam", oEdefEmpr.fechaDxE);
                                ocmd.CommandText = "consultaParamDefault_Ind_ID_CONSEC_FECHA";
                            }

                        }
                    }

                }



                SqlDataAdapter oDA = new SqlDataAdapter(ocmd);
                DataSet oDS = new DataSet();
                ocmd.Connection = oConexion.Conectar();
                oDA.Fill(oDS, ocmd.CommandText);
                ocmd.Connection.Close();
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

        public DataSet consultaEmpresasParametrizadasTodas()
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.CommandText = "pa_consultaEmpresasParametrizadas";
                SqlDataAdapter oDA = new SqlDataAdapter(ocmd);
                DataSet oDS = new DataSet();
                ocmd.Connection = oConexion.Conectar();
                oDA.Fill(oDS, ocmd.CommandText);
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
