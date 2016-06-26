namespace CReglas
{

    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using CEntidades;
    using CDatos;
    using System.Data;
    using System.Data.SqlClient;

    public class CRmedicion_indicador
    {

        CDExecutequery oconsulta = new CDExecutequery();
        int consecutivo;

        public void guardarmedicionindicador(int consecutivoindicador, CEmedicion_indicador oMed)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[6];
                parametros[0] = new SqlParameter("@ConsecutivoIndicador", consecutivoindicador);
                parametros[1] = new SqlParameter("@Periodo", oMed.Periodo);
                parametros[2] = new SqlParameter("@Dato1", oMed.Dato1);
                parametros[3] = new SqlParameter("@Dato2", oMed.Dato2);
                parametros[4] = new SqlParameter("@Resultado", oMed.Resultado);
                parametros[5] = new SqlParameter("@Analisis", oMed.Analisis);

                oconsulta.guardar("pa_guardar_actividad_medicion_indicador", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception("Ha ocurrido un error inesperado: Librería: CReglas, Clase : CRmedicion_indicador, Método: guardarmedicionindicador, Detalle: " + ex.Message);
            }

        }

    }
}
