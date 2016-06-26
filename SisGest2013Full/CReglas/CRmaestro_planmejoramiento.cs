

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

    public class CRmaestro_planmejoramiento
    {

        CEdetalle_planmejoramiento obEPM = new CEdetalle_planmejoramiento();
        CDExecutequery oconsulta = new CDExecutequery();

        public DataTable consultarPlanMejoramiento(CEmaestro_planmejoramiento_ oeplan)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pfecha", oeplan.Fecha);

                return oconsulta.consultatabla("pa_guardarMaestroPlanmejoramiento", parametros);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}








