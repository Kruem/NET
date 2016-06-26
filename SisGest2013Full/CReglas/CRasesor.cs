using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CEntidades;
using CDatos;
using System.Data;
using System.Data.SqlClient;

namespace CReglas
{
    public class CRasesor
    {
        CDExecutenonquery oguardar = new CDExecutenonquery();
        CDExecutequery oconsulta = new CDExecutequery();
        CDconexion objconex = new CDconexion();

        public bool guardarAsesor(CEasesor oeasesor)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pasesor", oeasesor.Asesor);
                return oconsulta.guardar("pa_guardarAsesor", parametros);

            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }

        }

        public DataSet consulta_individual_asesor(CEasesor oeasesor)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pasesor", oeasesor.Asesor);
                return oconsulta.consulta("pa_consultaAsesorInd", parametros);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consulta_general_usuario()
        {
            try
            {
                return oconsulta.consultarindividual("pa_consultaAsesorTodos");
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public bool modificar_usuario(CEasesor oeasesor)
        {
            //modificalos datos del usuario y el tipo de usuario para el login
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pasesor", oeasesor.Asesor);

                return oguardar.actualizar(" pa_consultaAsesorInd", parametros);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public bool eliminar_asesor(CEasesor oeasesor)
        {

            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pasesor", oeasesor.Asesor);
                return oguardar.actualizar("pa_eliminarAsesor", parametros);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
    }
}

