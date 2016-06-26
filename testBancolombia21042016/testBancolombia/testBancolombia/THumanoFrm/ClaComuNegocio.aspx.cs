using CEntidades;
using CReglas;
using System;
using System.Data;
using System.Globalization;

namespace testBancolombia.THumanoFrm
{
    public partial class ClaComuNegocio : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultTHClaridadComunicModeloNeg entidades = new tblResultTHClaridadComunicModeloNeg();
        CRthResultClaridadComunicModeloNeg reglas = new CRthResultClaridadComunicModeloNeg();
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
                op = Convert.ToDouble(dsSession.Tables[0].Rows[0]["opDefault"].ToString());
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
                op = Convert.ToDouble(dsSession.Tables[0].Rows[0]["opDefault"].ToString());
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
               
                double total = 0, no_aplica = 0;
                int sumatoria = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();
                                
                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    entidades.result1CCMN = "N/A";
                    no_aplica++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    entidades.result1CCMN = "0";
                }
                else if (ddlp1.SelectedValue.ToString() == "1")
                {
                    
                    sumatoria++;
                    ddl1=1;
                }
                #endregion

                #region ddl2
                if (ddlp2.SelectedValue.ToString() == "-1")
                {
                    entidades.result2CCMN = "N/A";
                    no_aplica++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    entidades.result2CCMN = "0";
                }
                else if (ddlp2.SelectedValue.ToString() == "1")
                {
                   
                    sumatoria++;
                    ddl2 = 1;
                }
                #endregion

                #region ddl3
                if (ddlp3.SelectedValue.ToString() == "-1")
                {
                    entidades.result3CCMN = "N/A";
                    no_aplica++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    entidades.result3CCMN = "0";
                }
                else if (ddlp3.SelectedValue.ToString() == "1")
                {
                    
                    sumatoria++;
                    ddl3 = 1;

                }
                #endregion

                #region ddl4
                if (ddlp4.SelectedValue.ToString() == "-1")
                {
                    entidades.result4CCMN = "N/A";
                    no_aplica++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    entidades.result4CCMN = "0";
                }
                else if (ddlp4.SelectedValue.ToString() == "1")
                {
                    
                    sumatoria++;
                    ddl4 = 1;
                }
                #endregion

                #region ddl5
                if (ddlp5.SelectedValue.ToString() == "-1")
                {
                    entidades.result5CCMN = "N/A";
                    no_aplica++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    entidades.result5CCMN = "0";
                }
                else if (ddlp5.SelectedValue.ToString() == "1")
                {
                    
                    sumatoria++;
                    ddl5 = 1;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double prcInd = porc / (5 - no_aplica);
                prcInd = Math.Round(prcInd, 4);
                total = prcInd * sumatoria;

                if (total > porc)
                {
                    total = porc;
                }

                total = Math.Round(total, 4);
                #endregion

                #region ProcedReglas

                #region asignarResult
                if (ddl1 == 1)
                {
                    entidades.result1CCMN = prcInd.ToString();
                }

                if (ddl2 == 1)
                {
                    entidades.result2CCMN = prcInd.ToString();
                }

                if (ddl3 == 1)
                {
                    entidades.result3CCMN = prcInd.ToString();
                }

                if (ddl4 == 1)
                {
                    entidades.result4CCMN = prcInd.ToString();
                }

                if (ddl5 == 1)
                {
                    entidades.result5CCMN = prcInd.ToString();
                }
                #endregion
                
                dsSession = dsDatosEmpresa();
                entidades.fechaResultCCMN = fecha;
                entidades.totalResultCCMN = Convert.ToString(total);
                entidades.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    entidades.idEmpresResultCCMN = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (reglas.CrearResultClaridadComunicModeloNeg(entidades))
                {
                    Response.Redirect("../MenuTHumano.aspx");
                }
                #endregion

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception er)
            {

                throw;
            }
        }
    }
}