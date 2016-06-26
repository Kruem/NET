using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;

namespace testBancolombia.Consultas
{
   
    public partial class ConRecursos : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        DataSet dsSession = new DataSet();
        tblResultRAliadosClave entidades = new tblResultRAliadosClave();
        CRresultRAliadosCLaves oRrescan = new CRresultRAliadosCLaves();
        tblResultxParam oEresxpar = new tblResultxParam();
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
                ds = oRrescan.ConsulaRecResultRadarEmpresa();
                gvEmpresas.DataSource = ds;
                gvEmpresas.DataBind();
            }
            catch (Exception exr)
            {

                throw;
            }
        }

        protected DataSet dsDatosEmpresa()
        {
            try
            {
                dsSession = (DataSet)Session["dsParamIND"];
                return dsSession;
            }
            catch (Exception er)
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
                    //dsSession = dsDatosEmpresa();

                    entidades.idEmpresResultAC = idEmpresa;
                    entidades.fechaResultAC = fecha;
                    ds2 = oRrescan.ConsulaRecResultRadarEmpresa(entidades);

                    oEEmpDefInd.idEmpresaDef = Convert.ToInt32(ds2.Tables[0].Rows[0]["idEmpresResultAC"].ToString());
                    oEEmpDefInd.consecCategDefault = Convert.ToInt32(ds2.Tables[0].Rows[0]["idparam"].ToString());
                    oEEmpDefInd.fechaDxE = ds2.Tables[0].Rows[0]["fechaparam"].ToString();
                    ds = oREmpDefInd.ConsultaParamEmpresa(oEEmpDefInd);
                    
                    Session["ConRecRadReal"] = ds2;
                    Session["ConRecRadIdeal"] = ds;
                    Response.Redirect("RadarRecursosCons.aspx");
                }

            }
            catch (Exception er)
            {

                throw;
            }
        }

    }
}