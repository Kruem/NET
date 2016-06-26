using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;
using System.Globalization;

namespace testBancolombia.OportunidadFrm
{
    public partial class PrDeValor : System.Web.UI.Page
    {
        //OPORTUNIDAD--PROPUESTA DE VALOR
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultOPropuestaDeValor oEprV = new tblResultOPropuestaDeValor();
        CRtblResultOPrVl oRprV = new CRtblResultOPrVl();
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
            //OPORTUNIDAD--PROPUESTA DE VALOR
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
            //OPORTUNIDAD--PROPUESTA DE VALOR
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
                int sumatoria = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0, ddl6 = 0, ddl7 = 0, ddl8 = 0, ddl9 = 0, ddl10 = 0, ddl11 = 0, ddl12 = 0, ddl13 = 0, ddl14 = 0, ddl15 = 0, ddl16 = 0, ddl17 = 0, ddl18 = 0, ddl19 = 0, ddl20 = 0, ddl21 = 0, ddl22 = 0, ddl23 = 0, ddl24 = 0, ddl25 = 0, ddl26 = 0, ddl27 = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    oEprV.result1PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    oEprV.result1PDV = "0";
                }
                else if (ddlp1.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl1 = 1;
                }
                #endregion

                #region ddl2
                if (ddlp2.SelectedValue.ToString() == "-1")
                {
                    oEprV.result2PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    oEprV.result2PDV = "0";
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
                    oEprV.result3PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    oEprV.result3PDV = "0";
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
                    oEprV.result4PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    oEprV.result4PDV = "0";
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
                    oEprV.result5PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    oEprV.result5PDV = "0";
                }
                else if (ddlp5.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl5 = 1;
                }
                #endregion

                #region ddl6
                if (ddlp6.SelectedValue.ToString() == "-1")
                {
                    oEprV.result6PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp6.SelectedValue.ToString() == "0")
                {
                    oEprV.result6PDV = "0";
                }
                else if (ddlp6.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl6 = 1;
                }
                #endregion

                #region ddl7
                if (ddlp7.SelectedValue.ToString() == "-1")
                {
                    oEprV.result7PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp7.SelectedValue.ToString() == "0")
                {
                    oEprV.result7PDV = "0";
                }
                else if (ddlp7.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl7 = 1;
                }
                #endregion

                #region ddl8
                if (ddlp8.SelectedValue.ToString() == "-1")
                {
                    oEprV.result8PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp8.SelectedValue.ToString() == "0")
                {
                    oEprV.result8PDV = "0";
                }
                else if (ddlp8.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl8 = 1;
                }
                #endregion

                #region ddl9
                if (ddlp9.SelectedValue.ToString() == "-1")
                {
                    oEprV.result9PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp9.SelectedValue.ToString() == "0")
                {
                    oEprV.result9PDV = "0";
                }
                else if (ddlp9.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl9 = 1;
                }
                #endregion

                #region ddl10
                if (ddlp10.SelectedValue.ToString() == "-1")
                {
                    oEprV.result10PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp10.SelectedValue.ToString() == "0")
                {
                    oEprV.result10PDV = "0";
                }
                else if (ddlp10.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl10 = 1;
                }
                #endregion

                #region ddl11
                if (ddlp11.SelectedValue.ToString() == "-1")
                {
                    oEprV.result11PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp11.SelectedValue.ToString() == "0")
                {
                    oEprV.result11PDV = "0";
                }
                else if (ddlp11.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl11 = 1;
                }
                #endregion

                #region ddl12
                if (ddlp12.SelectedValue.ToString() == "-1")
                {
                    oEprV.result12PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp12.SelectedValue.ToString() == "0")
                {
                    oEprV.result12PDV = "0";
                }
                else if (ddlp12.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl12 = 1;
                }
                #endregion

                #region ddl13
                if (ddlp13.SelectedValue.ToString() == "-1")
                {
                    oEprV.result13PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp13.SelectedValue.ToString() == "0")
                {
                    oEprV.result13PDV = "0";
                }
                else if (ddlp13.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl13 = 1;
                }
                #endregion

                #region ddl14
                if (ddlp14.SelectedValue.ToString() == "-1")
                {
                    oEprV.result14PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp14.SelectedValue.ToString() == "0")
                {
                    oEprV.result14PDV = "0";
                }
                else if (ddlp14.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl14 = 1;
                }
                #endregion

                #region ddl15
                if (ddlp15.SelectedValue.ToString() == "-1")
                {
                    oEprV.result15PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp15.SelectedValue.ToString() == "0")
                {
                    oEprV.result15PDV = "0";
                }
                else if (ddlp15.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl15 = 1;
                }
                #endregion

                #region ddl16
                if (ddlp16.SelectedValue.ToString() == "-1")
                {
                    oEprV.result16PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp16.SelectedValue.ToString() == "0")
                {
                    oEprV.result16PDV = "0";
                }
                else if (ddlp16.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl16 = 1;
                }
                #endregion

                #region ddl17
                if (ddlp17.SelectedValue.ToString() == "-1")
                {
                    oEprV.result17PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp17.SelectedValue.ToString() == "0")
                {
                    oEprV.result17PDV = "0";
                }
                else if (ddlp17.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl17 = 1;
                }
                #endregion

                #region ddl18
                if (ddlp18.SelectedValue.ToString() == "-1")
                {
                    oEprV.result18PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp18.SelectedValue.ToString() == "0")
                {
                    oEprV.result18PDV = "0";
                }
                else if (ddlp18.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl18 = 1;
                }
                #endregion

                #region ddl19
                if (ddlp19.SelectedValue.ToString() == "-1")
                {
                    oEprV.result19PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp19.SelectedValue.ToString() == "0")
                {
                    oEprV.result19PDV = "0";
                }
                else if (ddlp19.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl19 = 1;
                }
                #endregion

                #region ddl20
                if (ddlp20.SelectedValue.ToString() == "-1")
                {
                    oEprV.result20PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp20.SelectedValue.ToString() == "0")
                {
                    oEprV.result20PDV = "0";
                }
                else if (ddlp20.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl20 = 1;
                }
                #endregion

                #region ddl21
                if (ddlp21.SelectedValue.ToString() == "-1")
                {
                    oEprV.result21PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp21.SelectedValue.ToString() == "0")
                {
                    oEprV.result21PDV = "0";
                }
                else if (ddlp21.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl21 = 1;
                }
                #endregion

                #region ddl22
                if (ddlp22.SelectedValue.ToString() == "-1")
                {
                    oEprV.result22PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp22.SelectedValue.ToString() == "0")
                {
                    oEprV.result22PDV = "0";
                }
                else if (ddlp22.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl22 = 1;
                }
                #endregion

                #region ddl23
                if (ddlp23.SelectedValue.ToString() == "-1")
                {
                    oEprV.result23PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp23.SelectedValue.ToString() == "0")
                {
                    oEprV.result23PDV = "0";
                }
                else if (ddlp23.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl23 = 1;
                }
                #endregion

                #region ddl24
                if (ddlp24.SelectedValue.ToString() == "-1")
                {
                    oEprV.result24PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp24.SelectedValue.ToString() == "0")
                {
                    oEprV.result24PDV = "0";
                }
                else if (ddlp24.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl24 = 1;
                }
                #endregion

                #region ddl25
                if (ddlp25.SelectedValue.ToString() == "-1")
                {
                    oEprV.result25PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp25.SelectedValue.ToString() == "0")
                {
                    oEprV.result25PDV = "0";
                }
                else if (ddlp25.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl25 = 1;
                }
                #endregion

                #region ddl26
                if (ddlp26.SelectedValue.ToString() == "-1")
                {
                    oEprV.result26PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp26.SelectedValue.ToString() == "0")
                {
                    oEprV.result26PDV = "0";
                }
                else if (ddlp26.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl26 = 1;
                }
                #endregion

                #region ddl27
                if (ddlp27.SelectedValue.ToString() == "-1")
                {
                    oEprV.result27PDV = "N/A";
                    no_aplica++;
                }
                else if (ddlp27.SelectedValue.ToString() == "0")
                {
                    oEprV.result27PDV = "0";
                }
                else if (ddlp27.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl27 = 1;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double prcInd = porc / (27 - no_aplica);
                prcInd = Math.Round(prcInd, 4);

                #region asignarResult

                if (ddl1 == 1)
                {
                    oEprV.result1PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl2 == 1)
                {
                    oEprV.result2PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 1)
                {
                    oEprV.result3PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl4 == 1)
                {
                    oEprV.result4PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 1)
                {
                    oEprV.result5PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl6 == 1)
                {
                    oEprV.result6PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl7 == 1)
                {
                    oEprV.result7PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl8 == 1)
                {
                    oEprV.result8PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl9 == 1)
                {
                    oEprV.result9PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl10 == 1)
                {
                    oEprV.result10PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl11 == 1)
                {
                    oEprV.result11PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl12 == 1)
                {
                    oEprV.result12PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl13 == 1)
                {
                    oEprV.result13PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl14 == 1)
                {
                    oEprV.result14PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl15 == 1)
                {
                    oEprV.result15PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl16 == 1)
                {
                    oEprV.result16PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl17 == 1)
                {
                    oEprV.result17PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl18 == 1)
                {
                    oEprV.result18PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl19 == 1)
                {
                    oEprV.result19PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl20 == 1)
                {
                    oEprV.result20PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl21 == 1)
                {
                    oEprV.result21PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl22 == 1)
                {
                    oEprV.result22PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl23 == 1)
                {
                    oEprV.result23PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl24 == 1)
                {
                    oEprV.result24PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl25 == 1)
                {
                    oEprV.result25PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl26 == 1)
                {
                    oEprV.result26PDV = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl27 == 1)
                {
                    oEprV.result27PDV = prcInd.ToString();
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
                dsSession = dsDatosEmpresa();
                oEprV.fechaResultPDV = fecha;
                oEprV.totalResultPDV = Convert.ToString(total);
                oEprV.result28PDV = txtpe28.Text.Trim();
                oEprV.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    oEprV.idEmpresResultPDV = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (oRprV.crearResultPrDeVl(oEprV))
                {
                    Response.Redirect("../MenuOportunidad.aspx");
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