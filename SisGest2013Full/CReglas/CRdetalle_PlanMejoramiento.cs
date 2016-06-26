
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

    public class CRdetalle_PlanMejoramiento
    {

        CDExecutequery objeq = new CDExecutequery();

        public DataTable consulta_PlanMejoramiento(int rolusuario)
        {

            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@rolusuario", rolusuario);

                return objeq.consultatabla("pa_ConsultaPlanMejoramiento", parametros);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }

        }
        CEdetalle_planmejoramiento obEPM = new CEdetalle_planmejoramiento();
        CDExecutequery oconsulta = new CDExecutequery();

        public void guardarplanmejoramiento(CEdetalle_planmejoramiento oeplanm)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[7];
                parametros[0] = new SqlParameter("@AutoNumericoDetalle", oeplanm.autonumericadetalle);
                parametros[1] = new SqlParameter("@pproceso", oeplanm.Proceso);
                parametros[2] = new SqlParameter("@pdescripcionMej", oeplanm.DescripcionMejoramiento);
                parametros[3] = new SqlParameter("@presponsable", oeplanm.Responsable);
                parametros[4] = new SqlParameter("@pacciones", oeplanm.Acciones);
                parametros[5] = new SqlParameter("@pfechaPrevCump", oeplanm.FechaPrevistaCumplimiento);
                parametros[6] = new SqlParameter("@pdescripcion", oeplanm.Descripcion);

                oconsulta.consultatabla("pa_guardarPlanMejoramiento", parametros);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
