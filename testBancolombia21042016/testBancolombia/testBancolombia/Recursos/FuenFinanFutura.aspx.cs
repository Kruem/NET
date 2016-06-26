using CEntidades;
using CReglas;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testBancolombia.Recursos
{
    public partial class FuenFinanFutura : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultRFuentesFinancFuturas entidades = new tblResultRFuentesFinancFuturas();
        CRresultRFuentesFinancFuturas reglas = new CRresultRFuentesFinancFuturas();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //trae el porcentaje de el frm de propuesta de valor
                lblPorc.Text = lblporcent() + lblPorc.Text;
            }
        }

        #region Inicial
        protected string lblporcent()
        {

            try
            {
                string porcentaje = "";
                double prc = 0, op = 0, div = 6;
                dsSession = (DataSet)Session["dsParam"];
                op = Convert.ToDouble(dsSession.Tables[0].Rows[0]["recDefault"].ToString());
                prc = op / div;
                prc = Math.Round(prc, 2);
                porcentaje = Convert.ToString(prc);
                return porcentaje;
            }
            catch (Exception err)
            {

                throw;
            }
        }
        protected double porcent()
        {

            try
            {
                double prc = 0, op = 0, div = 6;
                dsSession = (DataSet)Session["dsParam"];
                op = Convert.ToDouble(dsSession.Tables[0].Rows[0]["recDefault"].ToString());
                prc = op / div;
                prc = Math.Round(prc, 2);
                return prc;
            }
            catch (Exception err)
            {

                throw;
            }
        }

        protected DataSet dsDatosEmpresa()
        {
            try
            {
                dsSession = (DataSet)Session["dsParam"];
                return dsSession;
            }
            catch (Exception er)
            {

                throw;
            }
        }
        #endregion

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            try
            {
                double porc = porcent();
                double total = 0;
                int sumatoria = 0, ddl1 = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "0")
                {
                    entidades.result1FFF = "0";
                }
                else if (ddlp1.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl1 = 1;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double prcInd = porc / (1);
                prcInd = Math.Round(prcInd, 4);

                #region asignarResult
                if (ddl1 == 1)
                {
                    entidades.result1FFF = prcInd.ToString();
                    total = total + prcInd;
                }
                
                if (total > porc)
                {
                    total = porc;
                }

                total = Math.Round(total, 4);

                #endregion

                #endregion

                #region ProcedReglas
                entidades.result2FFF = txtp2.Text.Trim();
                entidades.result3FFF = txtp3.Text.Trim();
                entidades.result4FFF = txtp4.Text.Trim();
                entidades.result5FFF = txtp5.Text.Trim();
                entidades.result6FFF = txtp6.Text.Trim();
                entidades.result7FFF = txtp7.Text.Trim();
                entidades.result8FFF = txtp8.Text.Trim();
                entidades.result9FFF = txtp9.Text.Trim();
                entidades.result10FFF = txtp10.Text.Trim();
                entidades.result11FFF = txtp11.Text.Trim();
                entidades.result12FFF = txtp12.Text.Trim();
                entidades.result13FFF = txtp13.Text.Trim();
                entidades.result14FFF = txtp14.Text.Trim();
                entidades.result15FFF = txtp15.Text.Trim();
                entidades.result16FFF = txtp16.Text.Trim();
                entidades.result17FFF = txtp17.Text.Trim();
                dsSession = dsDatosEmpresa();
                entidades.fechaResultFFF = fecha;
                entidades.totalResultFFF = Convert.ToString(total);
                entidades.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    entidades.idEmpresResultFFF = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (reglas.CrearFuentesFinancFuturas(entidades))
                {
                    Response.Redirect("../MenuRecursos.aspx");
                }
                #endregion
            }
            catch (Exception er)
            {

                throw;
            }
        }
    }
}