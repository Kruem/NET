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

    public class CRemprendedor
    {
        /* para eliminar un emprendedor se le cambia el estado de activo a inactivo,
            se usa la regla de MODIFICAR*/
        CDExecutequery oconsulta = new CDExecutequery();
        CDExecutenonquery oEnq = new CDExecutenonquery();
        CDconexion objconex = new CDconexion();
        DataSet ds = new DataSet();


        public bool guardaremprendedor(CEemprendedor oEntidades)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[21];
                parametros[0] = new SqlParameter("@pidEmprendedor", oEntidades.IdEmprendedor);
                parametros[1] = new SqlParameter("@pnombreEmprendedor", oEntidades.NombreEmprendedor);
                parametros[2] = new SqlParameter("@pgenero", oEntidades.Genero);
                parametros[3] = new SqlParameter("@pfechaNacim", oEntidades.FechaNacim);
                parametros[4] = new SqlParameter("@pescolaridad", oEntidades.Escolaridad);
                parametros[5] = new SqlParameter("@punivarsidad", oEntidades.Universidad);
                parametros[6] = new SqlParameter("@pcarrera", oEntidades.Carrera);
                parametros[7] = new SqlParameter("@pingles", oEntidades.Ingles);
                parametros[8] = new SqlParameter("@pestadoCivil", oEntidades.EstadoCivil);
                parametros[9] = new SqlParameter("@phijos", oEntidades.Hijos);
                parametros[10] = new SqlParameter("@pgrupoPoblacional", oEntidades.GrupoPoblacional);
                parametros[11] = new SqlParameter("@pdiscapacidad", oEntidades.Discapacidad);
                parametros[12] = new SqlParameter("@pvictima", oEntidades.Victima);
                parametros[13] = new SqlParameter("@plgbti", oEntidades.Lgbti);
                parametros[14] = new SqlParameter("@ptelResidencia", oEntidades.TelResidencia);
                parametros[15] = new SqlParameter("@pcelular", oEntidades.Celular);
                parametros[16] = new SqlParameter("@pcorreoE", oEntidades.CorreoE);
                parametros[17] = new SqlParameter("@pdireccion", oEntidades.Direccion);
                parametros[18] = new SqlParameter("@pcomuna", oEntidades.Comuna);
                parametros[19] = new SqlParameter("@pestrato", oEntidades.Estrato);
                parametros[20] = new SqlParameter("@pestado", oEntidades.Estado);
                return oEnq.actualizar("pa_guardar_emprendedor", parametros);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consulta_emprendedorTodos()
        {
            try
            {
                ds = oconsulta.consultarindividual("pa_consultaEmprendedorTodos");

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }


        public DataSet consulta_emprendedorInd(CEemprendedor oEemp)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pidEmprend", oEemp.IdEmprendedor);
                ds = oconsulta.consulta("pa_consultaEmprendedorInd", parametros);

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }

        public bool actualizar_emprendedor(CEemprendedor oEntidades)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[21];
                parametros[0] = new SqlParameter("@pidEmprendedor", oEntidades.IdEmprendedor);
                parametros[1] = new SqlParameter("@pnombreEmprendedor", oEntidades.NombreEmprendedor);
                parametros[2] = new SqlParameter("@pgenero", oEntidades.Genero);
                parametros[3] = new SqlParameter("@pfechaNacim", oEntidades.FechaNacim);
                parametros[4] = new SqlParameter("@pescolaridad", oEntidades.Escolaridad);
                parametros[5] = new SqlParameter("@punivarsidad", oEntidades.Universidad);
                parametros[6] = new SqlParameter("@pcarrera", oEntidades.Carrera);
                parametros[7] = new SqlParameter("@pingles", oEntidades.Ingles);
                parametros[8] = new SqlParameter("@pestadoCivil", oEntidades.EstadoCivil);
                parametros[9] = new SqlParameter("@phijos", oEntidades.Hijos);
                parametros[10] = new SqlParameter("@pgrupoPoblacional", oEntidades.GrupoPoblacional);
                parametros[11] = new SqlParameter("@pdiscapacidad", oEntidades.Discapacidad);
                parametros[12] = new SqlParameter("@pvictima", oEntidades.Victima);
                parametros[13] = new SqlParameter("@plgbti", oEntidades.Lgbti);
                parametros[14] = new SqlParameter("@ptelResidencia", oEntidades.TelResidencia);
                parametros[15] = new SqlParameter("@pcelular", oEntidades.Celular);
                parametros[16] = new SqlParameter("@pcorreoE", oEntidades.CorreoE);
                parametros[17] = new SqlParameter("@pdireccion", oEntidades.Direccion);
                parametros[18] = new SqlParameter("@pcomuna", oEntidades.Comuna);
                parametros[19] = new SqlParameter("@pestrato", oEntidades.Estrato);
                parametros[20] = new SqlParameter("@pestado", oEntidades.Estado);
                return oEnq.actualizar("pa_modificarEmprendedor", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

    }
}
