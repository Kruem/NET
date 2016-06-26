using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using CEntidades;

namespace CDdatos
{
    public class CDrFuentesFinancFuturas
    {
        CDconexion oconexion = new CDconexion();

        public bool CreaRFuentesFinancFuturas(tblRFuentesFinancFuturas futuras)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaFFF",futuras.idEmpresaFFF);
                ocmd.Parameters.Add("@pfechaFFF", futuras.fechaFFF);
                ocmd.Parameters.Add("@pvalorPorcFFF", futuras.valorPorcFFF);
                ocmd.Parameters.Add("@pvalorPorc1FFF", futuras.valorPorc1FFF);
                ocmd.Parameters.Add("@pmontoCredSolic", futuras.montoCredSolic);
                ocmd.Parameters.Add("@pplazoCredSolic", futuras.plazoCredSolic);
                ocmd.Parameters.Add("@pbienesCapital", futuras.bienesCapital);
                ocmd.Parameters.Add("@pinstalaciones", futuras.instalaciones);
                ocmd.Parameters.Add("@pactivosIntangibles", futuras.activosIntangibles);
                ocmd.Parameters.Add("@precursosHumanos", futuras.recursosHumanos);
                ocmd.Parameters.Add("@pconsultoriaServic", futuras.consultoriaServic);
                ocmd.Parameters.Add("@pmateriasPrimasInsumos", futuras.materiasPrimasInsumos);
                ocmd.Parameters.Add("@pentidadCreditoFinanc", futuras.entidadCreditoFinanc);
                ocmd.Parameters.Add("@pmontoCreditoAdjud", futuras.montoCredSolic);
                ocmd.Parameters.Add("@pplazoCredAdjud", futuras.plazoCredAdjud);
                ocmd.Parameters.Add("@pprestamoInversionistas", futuras.prestamoInversionistas);
                ocmd.Parameters.Add("@pmontoRecursConcurPublico", futuras.montoRecursConcurPublico);
                ocmd.Parameters.Add("@pmontoRecursConcurPrivado", futuras.montoRecursConcurPrivado);
                ocmd.Parameters.Add("@pmontoRecursPropiosInv", futuras.montoRecursPropiosInv);
                ocmd.Parameters.Add("@pmontoRecursFamiliaInv", futuras.montoRecursFamiliaInv);
                ocmd.CommandText = "pa_crearTblRFuentesFinancFuturas";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
