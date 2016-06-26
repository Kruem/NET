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

    public class CDempresa
    {
        CDconexion oConexion = new CDconexion();

        public bool CrearEmpresa(tblEmpresa empresa)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pfechaRegistro", empresa.fechaRegistro);
                ocmd.Parameters.Add("@pnombreEmpresaApps", empresa.nombreEmpresaApps);
                ocmd.Parameters.Add("@pfiguraJuridicaApps", empresa.figuraJuridicaApps);
                ocmd.Parameters.Add("@psectEconoEmpresApps", empresa.comunaApps);
                ocmd.Parameters.Add("@pfechaConstituApps", empresa.fechaConstituApps);
                ocmd.Parameters.Add("@pNitApps", empresa.NitApps);
                ocmd.Parameters.Add("@puniversidad", empresa.universidad);
                ocmd.Parameters.Add("@psitioWebApps", empresa.sitioWebApps);
                ocmd.Parameters.Add("@pfacebookApps", empresa.facebookApps);
                ocmd.Parameters.Add("@ptwiterApps", empresa.twiterApps);
                ocmd.Parameters.Add("@ppaisAppa", empresa.paisAppa);
                ocmd.Parameters.Add("@pestadoApps", empresa.estadoApps);
                ocmd.Parameters.Add("@pmunicipioApps", empresa.municipioApps);
                ocmd.Parameters.Add("@pcomunaApps", empresa.comunaApps);
                ocmd.Parameters.Add("@pdireccionApps", empresa.direccionApps);
                ocmd.Parameters.Add("@ptelefonoApps", empresa.telefonoApps);
                ocmd.Parameters.Add("@pcelularApps", empresa.celularApps);
                ocmd.Parameters.Add("@pnroSociosApps", empresa.nroSociosApps);
                ocmd.Parameters.Add("@prepresentanteLegalApps", empresa.representanteLegalApps);
                ocmd.Parameters.Add("@pfaseAcompActualApps", empresa.faseAcompActualApps);
                ocmd.Parameters.Add("@pappsCo", empresa.appsCo);
                ocmd.Parameters.Add("@pbancolombia", empresa.bancolombia);
                ocmd.Parameters.Add("@pobservaciones", empresa.observ);
                ocmd.CommandText = "pa_crearEmpresa";
                ocmd.Connection = oConexion.Conectar();
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
        public bool ModificarEmpresa(tblEmpresa empresa)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pnombreEmpresaApps", empresa.nombreEmpresaApps);
                ocmd.Parameters.Add("@pfiguraJuridicaApps", empresa.figuraJuridicaApps);
                ocmd.Parameters.Add("@psectEconoEmpresApps", empresa.comunaApps);
                ocmd.Parameters.Add("@pfechaConstituApps", empresa.fechaConstituApps);
                ocmd.Parameters.Add("@pNitApps", empresa.NitApps);
                ocmd.Parameters.Add("@puniversidad", empresa.universidad);
                ocmd.Parameters.Add("@psitioWebApps", empresa.sitioWebApps);
                ocmd.Parameters.Add("@pfacebookApps", empresa.facebookApps);
                ocmd.Parameters.Add("@ptwiterApps", empresa.twiterApps);
                ocmd.Parameters.Add("@ppaisAppa", empresa.paisAppa);
                ocmd.Parameters.Add("@pestadoApp", empresa.estadoApps);
                ocmd.Parameters.Add("@pmunicipioApps", empresa.municipioApps);
                ocmd.Parameters.Add("@pcomunaApps", empresa.comunaApps);
                ocmd.Parameters.Add("@pdireccionApps", empresa.direccionApps);
                ocmd.Parameters.Add("@ptelefonoApps", empresa.telefonoApps);
                ocmd.Parameters.Add("@pcelularApps", empresa.celularApps);
                ocmd.Parameters.Add("@pnroSociosApps", empresa.nroSociosApps);
                ocmd.Parameters.Add("@prepresentanteLegalApps", empresa.representanteLegalApps);
                ocmd.Parameters.Add("@pfaseAcompActualApps", empresa.faseAcompActualApps);
                ocmd.Parameters.Add("@pappsCo", empresa.appsCo);
                ocmd.Parameters.Add("@pbancolombia", empresa.bancolombia);
                ocmd.Parameters.Add("@pobservaciones", empresa.observ);
                ocmd.CommandText = "pa_actualizarEmpresa";
                ocmd.Connection = oConexion.Conectar();
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

        public DataSet ConsultarEmpresa(tblEmpresa empresa)
        {
            try
            {
                string nom = empresa.nombreEmpresaApps;
                int con = empresa.consecEA;

                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;

                if (((con == null) || (con == 0)) && (nom != null))
                {
                    oCmd.Parameters.Add("@pnombreEmpresaApps", empresa.nombreEmpresaApps);
                    oCmd.CommandText = "pa_consultarEmpresa";
                }
                else
                {
                    if (((con != null) || (con != 0)) && (nom == null))
                    {
                        oCmd.Parameters.Add("@pconsecEA", empresa.consecEA);
                        oCmd.CommandText = "pa_consultarEmpresaConsecutivo";
                    }
                }


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

        public DataSet ConsultarEmpresa()
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.CommandText = "pa_consultarEmpresaTodas";
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

