using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;

namespace testBancolombia.OportunidadFrm
{
    public partial class PrTecnologia : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultOTecnologia oEtecn = new tblResultOTecnologia();
        CRtblResultOTecn oRtecn = new CRtblResultOTecn();
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
                int sumatoria = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0, ddl6 = 0, ddl7 = 0, ddl8 = 0, ddl9 = 0, ddl10 = 0, ddl11 = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    oEtecn.result1T = "N/A";
                    no_aplica++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    oEtecn.result1T = "0";
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
                    oEtecn.result2T = "N/A"; no_aplica++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    oEtecn.result2T = "0";
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
                    oEtecn.result3T = "N/A"; no_aplica++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    oEtecn.result3T = "0";
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
                    oEtecn.result4T = "N/A"; no_aplica++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    ddl4 = 0;
                }
                else if (ddlp4.SelectedValue.ToString() == "1")
                {
                    ddl4 = 1;
                }
                else if (ddlp4.SelectedValue.ToString() == "2")
                {
                    ddl4 = 2;
                }
                #endregion

                #region ddl5

                if (ddlp5.SelectedValue.ToString() == "-1")
                {
                    oEtecn.result5T = "N/A"; no_aplica++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    ddl5 = 0;
                }
                else if (ddlp5.SelectedValue.ToString() == "1")
                {
                    ddl5 = 1;
                }
                else if (ddlp5.SelectedValue.ToString() == "2")
                {
                    ddl5 = 2;
                }
                else if (ddlp5.SelectedValue.ToString() == "3")
                {
                    ddl5 = 3;
                }
                #endregion

                #region ddl6
                if (ddlp6.SelectedValue.ToString() == "-1")
                {
                    oEtecn.result6T = "N/A"; no_aplica++;
                }
                else if (ddlp6.SelectedValue.ToString() == "0")
                {
                    ddl6 = 0;
                }
                else if (ddlp6.SelectedValue.ToString() == "1")
                {
                    ddl6 = 1;
                }
                else if (ddlp6.SelectedValue.ToString() == "2")
                {
                    ddl6 = 3;
                }
                #endregion

                #region ddl7
                if (ddlp7.SelectedValue.ToString() == "-1")
                {
                    oEtecn.result7T = "N/A"; no_aplica++;
                }
                else if (ddlp7.SelectedValue.ToString() == "0")
                {
                    ddl7 = 0;
                }
                else if (ddlp7.SelectedValue.ToString() == "1")
                {
                    ddl7 = 1;
                }
                else if (ddlp7.SelectedValue.ToString() == "2")
                {
                    ddl7 = 2;
                }
                #endregion

                #region ddl8
                if (ddlp8.SelectedValue.ToString() == "-1")
                {
                    oEtecn.result8T = "N/A"; no_aplica++;
                }
                else if (ddlp8.SelectedValue.ToString() == "0")
                {
                    ddl8 = 0;
                }
                else if (ddlp8.SelectedValue.ToString() == "1")
                {
                    ddl8 = 1;
                }
                else if (ddlp8.SelectedValue.ToString() == "2")
                {
                    ddl8 = 2;
                }
                #endregion

                #region ddl9
                if (ddlp9.SelectedValue.ToString() == "-1")
                {
                    oEtecn.result9T = "N/A"; no_aplica++;
                }
                else if (ddlp9.SelectedValue.ToString() == "0")
                {
                    ddl9 = 0;
                }
                else if (ddlp9.SelectedValue.ToString() == "1")
                {
                    ddl9 = 1;
                }
                else if (ddlp9.SelectedValue.ToString() == "2")
                {
                    ddl9 = 2;
                }
                #endregion

                #region ddl10
                if (ddlp10.SelectedValue.ToString() == "-1")
                {
                    oEtecn.result10T = "N/A"; no_aplica++;
                }
                else if (ddlp10.SelectedValue.ToString() == "0")
                {
                    ddl10 = 0;
                }
                else if (ddlp10.SelectedValue.ToString() == "1")
                {
                    ddl10 = 1;
                }
                else if (ddlp10.SelectedValue.ToString() == "2")
                {
                    ddl10 = 2;
                }
                #endregion

                #region ddl11
                if (ddlp11.SelectedValue.ToString() == "-1")
                {
                    oEtecn.result11T = "N/A"; no_aplica++;
                }
                else if (ddlp11.SelectedValue.ToString() == "0")
                {
                    ddl11 = 0;
                }
                else if (ddlp11.SelectedValue.ToString() == "1")
                {
                    ddl11 = 1;
                }
                else if (ddlp11.SelectedValue.ToString() == "2")
                {
                    ddl11 = 2;
                }
                else if (ddlp11.SelectedValue.ToString() == "3")
                {
                    ddl11 = 3;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal

                double resta = (27 - no_aplica);
                double prcInd = porc / resta;
                prcInd = Math.Round(prcInd, 4);

                double div = prcInd / 3;
                double div2 = prcInd / 4;

                #region asignarResult

                if (ddl1 == 1)
                {
                    oEtecn.result1T = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl2 == 1)
                {
                    oEtecn.result2T = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 1)
                {
                    oEtecn.result3T = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl4 == 0)
                {
                    oEtecn.result4T = div.ToString();
                    total = total + div;
                }
                else if (ddl4 == 1)
                {
                    oEtecn.result4T = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl4 == 2)
                {
                    oEtecn.result4T = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 0)
                {
                    oEtecn.result5T = div2.ToString();
                    total = total + div2;
                }
                else if (ddl5 == 1)
                {
                    oEtecn.result5T = (div2 * 2).ToString();
                    total = total + div2;
                }
                else if (ddl5 == 2)
                {
                    oEtecn.result5T = (div2 * 3).ToString();
                    total = total + (div2 * 3);
                }
                else if (ddl5 == 3)
                {
                    oEtecn.result5T = prcInd.ToString();
                    total = total + prcInd;
                }


                if (ddl6 == 0)
                {
                    oEtecn.result6T = div.ToString();
                    total = total + div;
                }
                else if (ddl6 == 1)
                {
                    oEtecn.result6T = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl6 == 2)
                {
                    oEtecn.result6T = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl7 == 0)
                {
                    oEtecn.result7T = div.ToString();
                    total = total + div;
                }
                else if(ddl7 == 1)
                {
                    oEtecn.result7T = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl7 == 2)
                {
                    oEtecn.result7T = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl8 == 0)
                {
                    oEtecn.result8T = div.ToString();
                    total = total + div;
                }
                else if (ddl8 == 1)
                {
                    oEtecn.result8T = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl8 == 2)
                {
                    oEtecn.result8T = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl9 == 0)
                {
                    oEtecn.result9T = div.ToString();
                    total = total + div;
                }
                else if (ddl9 == 1)
                {
                    oEtecn.result9T = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl9 == 2)
                {
                    oEtecn.result9T = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl10 == 1)
                {
                    oEtecn.result10T = div.ToString();
                    total = total + div;
                }
                else if (ddl10 == 2)
                {
                    oEtecn.result10T = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl11 == 0)
                {
                    oEtecn.result11T = div2.ToString();
                    total = total + div2;
                }
                else if (ddl11 == 1)
                {
                    oEtecn.result11T = (div2 * 2).ToString();
                    total = total + (div2 * 2);
                }
                else if (ddl11 == 2)
                {
                    oEtecn.result11T = (div2 * 3).ToString();
                    total = total + (div2 * 3);
                }
                else if (ddl11 == 3)
                {
                    oEtecn.result11T = prcInd.ToString();
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
                oEtecn.fechaResultT = fecha;
                oEtecn.totalResultT = Convert.ToString(total);
                oEtecn.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    oEtecn.idEmpresResultT = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (oRtecn.CrearoTecnologia(oEtecn))
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