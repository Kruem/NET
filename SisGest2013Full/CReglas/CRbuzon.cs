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

    public class CRbuzon
    {
        CDExecutequery oconsulta = new CDExecutequery();
        CDExecutenonquery oEnq = new CDExecutenonquery();
        public bool guardarbuzonsugerencias(CEbuzon oEsp)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[7];
                parametros[0] = new SqlParameter("@tipo", oEsp.Tipo);
                parametros[1] = new SqlParameter("@fecha", oEsp.Fecha);
                parametros[2] = new SqlParameter("@nombre", oEsp.Nombre);
                parametros[3] = new SqlParameter("@correo", oEsp.Correo);
                parametros[4] = new SqlParameter("@telefono", oEsp.Telefono);
                parametros[5] = new SqlParameter("@empresa", oEsp.Empresa);
                parametros[6] = new SqlParameter("@descripcion", oEsp.Descripcion);

                return oEnq.actualizar("pa_GuardarRegBuzon", parametros);
                
            }
            catch (Exception ex)
            {

                throw new Exception("Ha ocurrido un error inesperado: Librería: CReglas, Clase : CRbuzon, Método: guardarbuzonsugerencias, Detalle: " + ex.Message);
            }



        }


        public DataSet ConsultarBuzon(CEbuzon oefecha)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pfecha", oefecha.Fecha);
                return oconsulta.consultarindividual("pa_consultaBuzon");
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }



    }
}
