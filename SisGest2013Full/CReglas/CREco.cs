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
    public class CREco
    {

        CDExecutequery oconsulta = new CDExecutequery();
        CDExecutenonquery oEnq = new CDExecutenonquery();
        DataSet ds = new DataSet();

        /*_____________________GUARDAR_____________________*/

        public bool guardar_eco(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[8];
                parametros[0] = new SqlParameter("@pfechaSol", oEeco.Fechasolicitud);
                parametros[1] = new SqlParameter("@psolicita", oEeco.Solicita);
                parametros[2] = new SqlParameter("@area", oEeco.Area);
                parametros[3] = new SqlParameter("@nesesecidad", oEeco.Nesecidad);
                parametros[4] = new SqlParameter("@valor", oEeco.Valor);
                parametros[5] = new SqlParameter("@justificacion", oEeco.Justificacion);
                parametros[6] = new SqlParameter("@fechaplazo", oEeco.Fechaplazo);
                parametros[7] = new SqlParameter("@pfaseInicial", oEeco.FaseInicial);


                return oEnq.actualizar("pa_guardar_eco", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool guardar_EcoUsrModer(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@pconsecEco", oEeco.Consecutivo);
                parametros[1] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);

                return oEnq.actualizar("pa_guardarEcoUsrModer", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool guardar_EcoModerador(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[8];
                parametros[0] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                parametros[1] = new SqlParameter("@pfecharealizacion", oEeco.Fecharealizacion);
                parametros[2] = new SqlParameter("@pcontratacion", oEeco.Contratacion);
                parametros[3] = new SqlParameter("@pcentrogestor", oEeco.Centrogestor);
                parametros[4] = new SqlParameter("@ptipocontrato", oEeco.Tipocontrato);
                parametros[5] = new SqlParameter("@pinterventor", oEeco.Interventor);
                parametros[6] = new SqlParameter("@pfechafinaltotal", oEeco.Fechafinaltotal);
                parametros[7] = new SqlParameter("@pobservaciones", oEeco.Observaciones);

                return oEnq.actualizar("pa_guardarEcoModerador", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool guardar_CrearEco(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[12];
                parametros[0] = new SqlParameter("@pconsecEco", oEeco.Consecutivo);
                parametros[1] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                parametros[2] = new SqlParameter("@pidfase", oEeco.Idfase);
                parametros[3] = new SqlParameter("@pfecharealizacion", oEeco.Fecharealizacion);
                parametros[4] = new SqlParameter("@pcontratacion", oEeco.Contratacion);
                parametros[5] = new SqlParameter("@pcentrogestor", oEeco.Centrogestor);
                parametros[6] = new SqlParameter("@ptipocontrato", oEeco.Tipocontrato);
                parametros[7] = new SqlParameter("@pinterventor", oEeco.Interventor);
                parametros[8] = new SqlParameter("@pfechafinaltotal", oEeco.Fechafinaltotal);
                parametros[9] = new SqlParameter("@pobservaciones", oEeco.Observaciones);
                parametros[10] = new SqlParameter("@pfase", oEeco.Fase);
                parametros[11] = new SqlParameter("@pfechainiciofase", oEeco.Fechainiciofase);

                return oEnq.actualizar("pa_guardarCrearEco", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool guardar_CrearEcoNoFFin(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[11];
                parametros[0] = new SqlParameter("@pconsecEco", oEeco.Consecutivo);
                parametros[1] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                parametros[2] = new SqlParameter("@pidfase", oEeco.Idfase);
                parametros[3] = new SqlParameter("@pfecharealizacion", oEeco.Fecharealizacion);
                parametros[4] = new SqlParameter("@pcontratacion", oEeco.Contratacion);
                parametros[5] = new SqlParameter("@pcentrogestor", oEeco.Centrogestor);
                parametros[6] = new SqlParameter("@ptipocontrato", oEeco.Tipocontrato);
                parametros[7] = new SqlParameter("@pinterventor", oEeco.Interventor);
                parametros[8] = new SqlParameter("@pobservaciones", oEeco.Observaciones);
                parametros[9] = new SqlParameter("@pfase", oEeco.Fase);
                parametros[10] = new SqlParameter("@pfechainiciofase", oEeco.Fechainiciofase);

                return oEnq.actualizar("pa_guardarCrearEcoNoFIN", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool guardar_EcoModFase(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[3];
                parametros[0] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                parametros[2] = new SqlParameter("@pfechainiciofase", oEeco.Fechainiciofase);

                return oEnq.actualizar("pa_guardarEcoModerFase", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool guardar_EcoHistorico(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[6];
                parametros[0] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                parametros[1] = new SqlParameter("@pfechasolicitud", oEeco.Fechasolicitud);
                parametros[2] = new SqlParameter("@pfase", oEeco.Fase);
                parametros[3] = new SqlParameter("@pfechainicialfase", oEeco.Fechainiciofase);
                parametros[4] = new SqlParameter("@pffinfase", oEeco.Fechainiciofase);
                parametros[5] = new SqlParameter("@pmoderador", oEeco.Moderador);

                return oEnq.actualizar("pa_guardarHistEco", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        /*__________________________MODIFICAR___________________________*/

        public bool actualizar_ecoModerador(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[8];
                parametros[0] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                parametros[1] = new SqlParameter("@pfecharealizacion", oEeco.Fecharealizacion);
                parametros[2] = new SqlParameter("@pcontratacion", oEeco.Contratacion);
                parametros[3] = new SqlParameter("@pcentrogestor", oEeco.Centrogestor);
                parametros[4] = new SqlParameter("@ptipocontrato", oEeco.Tipocontrato);
                parametros[5] = new SqlParameter("@pinterventor", oEeco.Interventor);
                parametros[6] = new SqlParameter("@pfechafinaltotal", oEeco.Fechafinaltotal);
                parametros[7] = new SqlParameter("@pobservaciones", oEeco.Observaciones);

                return oEnq.actualizar("pa_modificarEcoModerador", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool actualizar_ecoModeradorNoFF(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[7];
                parametros[0] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                parametros[1] = new SqlParameter("@pfecharealizacion", oEeco.Fecharealizacion);
                parametros[2] = new SqlParameter("@pcontratacion", oEeco.Contratacion);
                parametros[3] = new SqlParameter("@pcentrogestor", oEeco.Centrogestor);
                parametros[4] = new SqlParameter("@ptipocontrato", oEeco.Tipocontrato);
                parametros[5] = new SqlParameter("@pinterventor", oEeco.Interventor);
                parametros[6] = new SqlParameter("@pobservaciones", oEeco.Observaciones);

                return oEnq.actualizar("pa_modificarEcoModeradorNoFF", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool actualizar_ecoModerFase(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[4];
                parametros[0] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                parametros[1] = new SqlParameter("@pfase", oEeco.Fase);
                parametros[2] = new SqlParameter("@pidfase", oEeco.Idfase);
                parametros[3] = new SqlParameter("@pfechainiciofase", oEeco.Fechainiciofase);

                return oEnq.actualizar("pa_modificarEcoModerFase", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool actualizar_ecoUsrModer(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@pconsecEco", oEeco.Consecutivo);
                parametros[1] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);

                return oEnq.actualizar("pa_modificarEcoUsrModer", parametros);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }


        /*__________________________CONSULTAS___________________________*/

        public DataSet consulta_eco1(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pconsec", oEeco.Consecutivo);
                ds = oconsulta.consulta("pa_consultaEcoInd", parametros);

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }

        public DataSet consulta_eco1()
        {
            try
            {
                ds = oconsulta.consultarindividual("pa_consultaEcoTodos");

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }

        public DataSet consulta_ecoMod(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                ds = oconsulta.consulta("pa_consultarEcoModeradorInd", parametros);

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }

        }

        public DataSet consulta_ecoMod()
        {
            try
            {
                ds = oconsulta.consultarindividual("pa_consultarEcoModeradorTodos");

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }

        public DataSet consulta_ecoModerFase(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                ds = oconsulta.consulta("pa_consultarEcoModerFaseInd", parametros);

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }

        public DataSet consulta_ecoModerFase()
        {
            try
            {
                ds = oconsulta.consultarindividual("pa_consultarEcoModerFaseInd");

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }

        public DataSet consulta_fases()
        {
            try
            {
                ds = oconsulta.consultarindividual("pa_consultaFases");

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }

        public DataSet consulta_fases(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pidfase", oEeco.Idfase);
                ds = oconsulta.consulta("pa_consulta_fases_ind", parametros);

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }


        public DataSet consulta_ecoUsrModer(CEEco oEeco)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pcodseguimiento", oEeco.Codseguimiento);
                ds = oconsulta.consulta("pa_consultarEcoUsrModerInd", parametros);

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }

        public DataSet consulta_ecoUsrModer()
        {
            try
            {
                ds = oconsulta.consultarindividual("pa_consultarEcoUsrModerTodos");

                return ds;
            }
            catch (Exception BDex)
            {
                throw new Exception(BDex.Message);
            }
        }

        /*___________________________________________________________*/








    }
}
