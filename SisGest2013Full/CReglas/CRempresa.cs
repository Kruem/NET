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
    public class CRempresa
    {
        CDExecutequery oguardar = new CDExecutequery();
        CDExecutequery oconsulta = new CDExecutequery();
        CDconexion objconex = new CDconexion();

        public bool guardarempresa(CEempresa oempresa)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[32];
                parametros[0] = new SqlParameter("@pnombEmpresa", oempresa.NombreEmpresa);
                parametros[1] = new SqlParameter("@pconstituida", oempresa.Constituida);
                parametros[2] = new SqlParameter("@psectorEconomico", oempresa.SectorEconomico);
                parametros[3] = new SqlParameter("@pcomuna", oempresa.Comuna);
                parametros[4] = new SqlParameter("@pnroSocios", oempresa.NroSocios);
                parametros[5] = new SqlParameter("@punivProcedencia", oempresa.UnivProcedencia);
                parametros[6] = new SqlParameter("@ptelEmpresa", oempresa.TelEmpresa);
                parametros[7] = new SqlParameter("@pestado", oempresa.Estado);
                parametros[8] = new SqlParameter("@pasesor", oempresa.Asesor);
                parametros[9] = new SqlParameter("@phoraIntervencion", oempresa.HoraIntervencion);
                parametros[10] = new SqlParameter("@ptotalBolsaHoras", oempresa.TotalBolsaHoras);
                parametros[11] = new SqlParameter("@pfaseAcompa", oempresa.FaseAcompa);
                parametros[12] = new SqlParameter("@pfechaInicioAcomp", oempresa.FechaInicioAcomp);
                parametros[13] = new SqlParameter("@pfechaInicialFaseAct", oempresa.FechaInicialFaseAct);
                parametros[14] = new SqlParameter("@pventasTotales", oempresa.VentasTotales);
                parametros[15] = new SqlParameter("@pinversionPrivada", oempresa.InversionPrivada);
                parametros[16] = new SqlParameter("@precursosPropios", oempresa.RecursosPropios);
                parametros[17] = new SqlParameter("@precursosFomento", oempresa.RecursosFomento);
                parametros[18] = new SqlParameter("@pcreditosBanco", oempresa.CreditosBanco);
                parametros[19] = new SqlParameter("@potrasFuentes", oempresa.OtrasFuentes);
                parametros[20] = new SqlParameter("@ppatentes", oempresa.Patentes);
                parametros[21] = new SqlParameter("@pregistroMarca", oempresa.RegistroMarca);
                parametros[22] = new SqlParameter("@pderechosAutor", oempresa.DerechosAutor);
                parametros[23] = new SqlParameter("@psecretosIndustriales", oempresa.SecretosIndustriales);
                parametros[24] = new SqlParameter("@pvalNegocioCerrado", oempresa.ValNegocioCerrado);
                parametros[25] = new SqlParameter("@ptotalMesaRecursos", oempresa.TotalMesaRecursos);
                parametros[26] = new SqlParameter("@ptotalCostos", oempresa.TotalCostos);
                parametros[27] = new SqlParameter("@pnroEmpleos", oempresa.NroEmpleos);
                parametros[28] = new SqlParameter("@pcostoNomina", oempresa.CostoNomina);
                parametros[29] = new SqlParameter("@pnroPuestosContratados", oempresa.NroPuestosContratados);
                parametros[30] = new SqlParameter("@pingrMesPuestosContratados", oempresa.IngrMesPuestosContratados);
                parametros[31] = new SqlParameter("@pnroComites", oempresa.NroComites);

                return oguardar.guardar("pa_guardarEmpresa", parametros);

            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }

        }

        private bool guardar_HistoricoEmpresa(CEhistoricoEmpresa oempresa)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[0];
                parametros[0] = new SqlParameter("@pnombEmpresa", oempresa.NombEmpresa);
                parametros[1] = new SqlParameter("@pfechafinalfase", oempresa.FechaFinalFase);
                return oguardar.guardar("pa_guardarHistoricoEmpresa", parametros);

            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }


    }
}
