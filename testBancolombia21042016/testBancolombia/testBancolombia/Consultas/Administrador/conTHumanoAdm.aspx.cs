using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;

namespace testBancolombia.Consultas.Administrador
{
    public partial class conTHumanoAdm : System.Web.UI.Page
    {

        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        DataSet dsSession = new DataSet();
        CRthResulActitudCapacEmpreReveladas oRreve = new CRthResulActitudCapacEmpreReveladas();
        tblResultxParam oEresxpar = new tblResultxParam();
        tblResultTHActitudCapacEmpreReveladas oEreve = new tblResultTHActitudCapacEmpreReveladas();
        CRtblResultxParam oRresxpar = new CRtblResultxParam();
        CREmpresa_x_Default oREmpDefInd = new CREmpresa_x_Default();
        tblDefault_X_Empresa oEEmpDefInd = new tblDefault_X_Empresa();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarGvEmpresa();
            }
        }

        #region Inicial

        protected void llenarGvEmpresa()
        {
            try
            {
                ds = oRreve.ConsultaRadarTalentoHumano();
                gvEmpresas.DataSource = ds;
                gvEmpresas.DataBind();
            }
            catch (Exception exr)
            {

                throw;
            }
        }
        #endregion

        protected void rbSelect_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton rbSelect = (LinkButton)sender;
                int idEmpresa = 0;
                string fecha = "", full = "";
                if ((rbSelect.CommandArgument != null) || (rbSelect.CommandArgument != ""))
                {
                    full = rbSelect.CommandArgument;
                    char[] trimmOff = { ',' };
                    string[] parts = full.Split();
                    idEmpresa = Convert.ToInt32(parts[0]);
                    fecha = parts[2];

                    //ds con resultados para calculos "reales"
                    oEreve.idEmpresResultACER = idEmpresa;
                    oEreve.fechaResultACER = fecha;
                    ds2 = oRreve.ConsultaRadarTalentoHumano(oEreve);

                    //ds con resultados "ideales"
                    oEEmpDefInd.idEmpresaDef = Convert.ToInt32(ds2.Tables[0].Rows[0]["idEmpresResultACER"].ToString());
                    oEEmpDefInd.consecCategDefault = Convert.ToInt32(ds2.Tables[0].Rows[0]["idparam"].ToString());
                    oEEmpDefInd.fechaDxE = ds2.Tables[0].Rows[0]["fechaparam"].ToString();
                    ds = oREmpDefInd.ConsultaParamEmpresa(oEEmpDefInd);

                    Session["ConThRadReal"] = ds2;
                    Session["ConThRadIdeal"] = ds;
                    Response.Redirect("RadarThAdmin.aspx");
                }

            }
            catch (Exception er)
            {

                throw;
            }
        }
    }
}