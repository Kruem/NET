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
   public class CRaccion_indicador
    {
        CDExecutequery oconsulta = new CDExecutequery();
        int consecutivo;

        public void guardaraccionindicador(int consecutivoindicador, CEaccion_indicador oAcc)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[5];
                parametros[0] = new SqlParameter("@ConsecutivoIndicador", consecutivoindicador);
                parametros[1] = new SqlParameter("@Actividad", oAcc.Actividad);
                parametros[2] = new SqlParameter("@Nombre", oAcc.Nombre);
                parametros[3] = new SqlParameter("@Fecha", oAcc.Fecha);
                parametros[4] = new SqlParameter("@Descripcion", oAcc.Descripcion);

                oconsulta.guardar("pa_guardar_acciones_indicador", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception("Ha ocurrido un error inesperado: Librería: CReglas, Clase : CRaccion_indicador, Método: guardaraccionindicador, Detalle: " + ex.Message);
            }

        }
    }
}
