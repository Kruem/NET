using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Globalization;

namespace testBancolombia.OportunidadFrm
{
    public partial class MrCanales : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultOCanales oErCan = new tblResultOCanales();
        CRtblResultOCan oRcan = new CRtblResultOCan();
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
                prc = prc / 3;
                prc = Math.Round(prc, 4);
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
                prc = prc / 3;
                prc = Math.Round(prc, 4);
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
                porc = porc / 3; //división de Mercado (3 partes)
                double total = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0, ddl6 = 0, ddl7 = 0, ddl8 = 0, ddl9 = 0, ddl10 = 0, ddl11 = 0, ddl12 = 0, ddl13 = 0, ddl14 = 0, ddl15 = 0, ddl16 = 0, ddl17 = 0, ddl18 = 0, ddl19 = 0;
                int sumatoria = 0, noap = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    oErCan.result1CAN = "N/A";
                    noap++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    oErCan.result1CAN = "0";
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
                    oErCan.result2CAN = "N/A";
                    noap++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    oErCan.result2CAN = "0";
                }
                else if (ddlp2.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl2 = 1;
                }
                #endregion

                #region ddl3
                if (ddlp3.SelectedValue.ToString() == "1")
                {
                    oErCan.result3CAN = "N/A";
                    noap++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    oErCan.result3CAN = "0";
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
                    oErCan.result4CAN = "N/A";
                    noap++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    oErCan.result4CAN = "0";
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
                    oErCan.result5CAN = "N/A";
                    noap++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    oErCan.result5CAN = "0";
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
                    oErCan.result6CAN = "N/A";
                    noap++;
                }
                else if (ddlp6.SelectedValue.ToString() == "0")
                {
                    oErCan.result6CAN = "0";
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
                    oErCan.result7CAN = "N/A";
                    noap++;
                }
                else if (ddlp7.SelectedValue.ToString() == "0")
                {
                    oErCan.result7CAN = "0";
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
                    oErCan.result8CAN = "N/A";
                    noap++;
                }
                else if (ddlp8.SelectedValue.ToString() == "0")
                {
                    oErCan.result8CAN = "0";
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
                    oErCan.result9CAN = "N/A";
                    noap++;
                }
                else if (ddlp9.SelectedValue.ToString() == "0")
                {
                    oErCan.result9CAN = "0";
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
                    oErCan.result10CAN = "N/A";
                    noap++;
                }
                else if (ddlp10.SelectedValue.ToString() == "0")
                {
                    oErCan.result10CAN = "0";
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
                    oErCan.result11CAN = "N/A";
                    noap++;
                }
                else if (ddlp11.SelectedValue.ToString() == "0")
                {
                    oErCan.result11CAN = "0";
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
                    oErCan.result12CAN = "N/A";
                    noap++;
                }
                else if (ddlp12.SelectedValue.ToString() == "0")
                {
                    oErCan.result12CAN = "0";
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
                    oErCan.result13CAN = "N/A";
                    noap++;
                }
                else if (ddlp13.SelectedValue.ToString() == "0")
                {
                    oErCan.result13CAN = "0";
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
                    oErCan.result14CAN = "N/A";
                    noap++;
                }
                else if (ddlp14.SelectedValue.ToString() == "0")
                {
                    oErCan.result14CAN = "0";
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
                    oErCan.result15CAN = "N/A";
                    noap++;
                }
                else if (ddlp15.SelectedValue.ToString() == "0")
                {
                    oErCan.result15CAN = "0";
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
                    oErCan.result16CAN = "N/A";
                    noap++;
                }
                else if (ddlp16.SelectedValue.ToString() == "0")
                {
                    oErCan.result16CAN = "0";
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
                    oErCan.result17CAN = "N/A";
                    noap++;
                }
                else if (ddlp17.SelectedValue.ToString() == "0")
                {
                    oErCan.result17CAN = "0";
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
                    oErCan.result18CAN = "N/A";
                    noap++;
                }
                else if (ddlp18.SelectedValue.ToString() == "0")
                {
                    oErCan.result18CAN = "0";
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
                    oErCan.result19CAN = "N/A";
                    noap++;
                }
                else if (ddlp19.SelectedValue.ToString() == "0")
                {
                    oErCan.result19CAN = "0";
                }
                else if (ddlp19.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl19 = 1;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double resta = (19 - noap);
                double prcInd = porc / resta;//preguntas del frm
                prcInd = Math.Round(prcInd, 4);

                #region asignarResult

                //double div = prcInd / 3; //0.1.2.3.n/a                

                if (ddl1 == 1)
                {
                    oErCan.result1CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl2 == 1)
                {
                    oErCan.result2CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 1)
                {
                    oErCan.result3CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl4 == 1)
                {
                    oErCan.result4CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 1)
                {
                    oErCan.result5CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl6 == 1)
                {
                    oErCan.result6CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl7 == 1)
                {
                    oErCan.result7CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl8 == 1)
                {
                    oErCan.result8CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl9 == 1)
                {
                    oErCan.result9CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl10 == 1)
                {
                    oErCan.result10CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl11 == 1)
                {
                    oErCan.result11CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl12 == 1)
                {
                    oErCan.result12CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl13 == 1)
                {
                    oErCan.result13CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl14 == 1)
                {
                    oErCan.result14CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl15 == 1)
                {
                    oErCan.result15CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl16 == 1)
                {
                    oErCan.result16CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl17 == 1)
                {
                    oErCan.result17CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl18 == 1)
                {
                    oErCan.result18CAN = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl19 == 1)
                {
                    oErCan.result19CAN = prcInd.ToString();
                    total = total + prcInd;
                }
                #endregion

                if (total > porc)
                {
                    total = porc;
                }

                total = Math.Round(total, 4);

                #endregion

                #region ProcedReglas
                dsSession = dsDatosEmpresa();
                oErCan.fechaResultCAN = fecha;
                oErCan.totalResultCAN = Convert.ToString(total);
                oErCan.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    oErCan.idEmpresResultCAN = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (oRcan.CrearoCanales(oErCan))
                {
                    Response.Redirect("../MOMercado.aspx");
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