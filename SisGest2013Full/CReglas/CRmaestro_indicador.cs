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

    public class CRmaestro_indicador
    {


        CDExecutequery oconsulta = new CDExecutequery();
        int consecutivo;

        public int guardarindicadorsp(CEmaestro_indicador oEsp)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[8];
                parametros[0] = new SqlParameter("@NombreIndicador", oEsp.Nombreindicador);
                parametros[1] = new SqlParameter("@ObjetivoIndicador", oEsp.Objetivoindicador);
                parametros[2] = new SqlParameter("@Numerador", oEsp.Numerador);
                parametros[3] = new SqlParameter("@Denominador", oEsp.Denominador);
                parametros[4] = new SqlParameter("@RecoleccionDatos", oEsp.Recolecciondatos);
                parametros[5] = new SqlParameter("@RegistrodeDatos", oEsp.Registrodedatos);
                parametros[6] = new SqlParameter("@RegistroyAnalisisResultado", oEsp.RegyAnaresultados);
                parametros[7] = new SqlParameter("@Tipo", oEsp.TipoIndicador);

                CEmaestro_indicador objindicadorsp = new CEmaestro_indicador();

                DataTable tblsp = oconsulta.consulta("pa_guardar_indicador_gestion", parametros).Tables[0];
                DataRow fila = tblsp.Rows[0];
                consecutivo = int.Parse(tblsp.Rows[0][0].ToString());

                return consecutivo;
            }
            catch (Exception ex)
            {

                throw new Exception("Ha ocurrido un error inesperado: Librería: CReglas, Clase : CRmaestro_indicador, Método: guardarindicadorsp, Detalle: " + ex.Message);
            }

        }

    }
}
