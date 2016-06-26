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
    public partial class InfoEcoFinanActual : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultRInfoEconoFinancAct entidades = new tblResultRInfoEconoFinancAct();
        CRresultRInfoEconoFinancAct reglas = new CRresultRInfoEconoFinancAct();
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
                double total = 0, no_aplica = 0;
                int sumatoria = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0, ddl6 = 0, ddl7 = 0, ddl8 = 0, ddl9 = 0, ddl10 = 0, ddl11 = 0, ddl12 = 0, ddl13 = 0, ddl14 = 0, ddl15 = 0, ddl16 = 0, ddl17 = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    entidades.result1IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    entidades.result1IEF = "0";
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
                    entidades.result2IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    entidades.result2IEF = "0";
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
                    entidades.result3IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    entidades.result3IEF = "0";
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
                    entidades.result4IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    entidades.result4IEF = "0";
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
                    entidades.result5IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    entidades.result5IEF = "0";
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
                    entidades.result6IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp6.SelectedValue.ToString() == "0")
                {
                    entidades.result6IEF = "0";
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
                    entidades.result7IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp7.SelectedValue.ToString() == "0")
                {
                    entidades.result7IEF = "0";
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
                    entidades.result8IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp8.SelectedValue.ToString() == "0")
                {
                    entidades.result8IEF = "0";
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
                    entidades.result9IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp9.SelectedValue.ToString() == "0")
                {
                    entidades.result9IEF = "0";
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
                    entidades.result10IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp10.SelectedValue.ToString() == "0")
                {
                    entidades.result10IEF = "0";
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
                    entidades.result11IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp11.SelectedValue.ToString() == "0")
                {
                    entidades.result11IEF = "0";
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
                    entidades.result12IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp12.SelectedValue.ToString() == "0")
                {
                    entidades.result12IEF = "0";
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
                    entidades.result13IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp13.SelectedValue.ToString() == "0")
                {
                    entidades.result13IEF = "0";
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
                    entidades.result14IEF = "N/A";
                    no_aplica++;
                }
                else if (ddlp14.SelectedValue.ToString() == "0")
                {
                    entidades.result14IEF = "0";
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
                    entidades.result15IEF = "N/A"; no_aplica++;
                }
                else if (ddlp15.SelectedValue.ToString() == "0")
                {
                    ddl15 = 0;
                }
                else if (ddlp15.SelectedValue.ToString() == "1")
                {
                    ddl15 = 1;
                }
                else if (ddlp15.SelectedValue.ToString() == "2")
                {
                    ddl15 = 2;
                }
                #endregion

                #region ddl16

                if (ddlp16.SelectedValue.ToString() == "-1")
                {
                    entidades.result16IEF = "N/A"; no_aplica++;
                }
                else if (ddlp16.SelectedValue.ToString() == "0")
                {
                    ddl16 = 0;
                }
                else if (ddlp16.SelectedValue.ToString() == "1")
                {
                    ddl16 = 1;
                }
                else if (ddlp16.SelectedValue.ToString() == "2")
                {
                    ddl16 = 2;
                }
                #endregion

                #region ddl17

                if (ddlp17.SelectedValue.ToString() == "-1")
                {
                    entidades.result17IEF = "N/A"; no_aplica++;
                }
                else if (ddlp17.SelectedValue.ToString() == "0")
                {
                    ddl17 = 0;
                }
                else if (ddlp17.SelectedValue.ToString() == "1")
                {
                    ddl17 = 1;
                }
                else if (ddlp17.SelectedValue.ToString() == "2")
                {
                    ddl17 = 2;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double prcInd = porc / (17 - no_aplica);
                prcInd = Math.Round(prcInd, 4);
                double div = prcInd / 3;

                #region asignarResult

                if (ddl1 == 1)
                {
                    entidades.result1IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl2 == 1)
                {
                    entidades.result2IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 1)
                {
                    entidades.result3IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl4 == 1)
                {
                    entidades.result4IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 1)
                {
                    entidades.result5IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl6 == 1)
                {
                    entidades.result6IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl7 == 1)
                {
                    entidades.result7IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl8 == 1)
                {
                    entidades.result8IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl9 == 1)
                {
                    entidades.result9IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl10 == 1)
                {
                    entidades.result10IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl11 == 1)
                {
                    entidades.result11IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl12 == 1)
                {
                    entidades.result12IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl13 == 1)
                {
                    entidades.result13IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl14 == 1)
                {
                    entidades.result14IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl15 == 0)
                {
                    entidades.result15IEF = div.ToString();
                    total = total + div;
                }
                else if (ddl15 == 1)
                {
                    entidades.result15IEF = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl15 == 2)
                {
                    entidades.result15IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl16 == 0)
                {
                    entidades.result16IEF = div.ToString();
                    total = total + div;
                }
                else if (ddl16 == 1)
                {
                    entidades.result16IEF = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl16 == 2)
                {
                    entidades.result16IEF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl17 == 0)
                {
                    entidades.result17IEF = div.ToString();
                    total = total + div;
                }
                else if (ddl17 == 1)
                {
                    entidades.result17IEF = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl17 == 2)
                {
                    entidades.result17IEF = prcInd.ToString();
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
                entidades.result18IEF = txtp18.Text.Trim();
                entidades.result19IEF = txtp19.Text.Trim();
                entidades.result20IEF = txtp20.Text.Trim();
                entidades.result21IEF = txtp21.Text.Trim();
                entidades.result22IEF = txtp22.Text.Trim();
                entidades.result23IEF = txtp23.Text.Trim();
                entidades.result24IEF = txtp24.Text.Trim();
                entidades.result25IEF = txtp25.Text.Trim();
                entidades.result26IEF = txtp26.Text.Trim();
                entidades.result27IEF = txtp27.Text.Trim();
                entidades.result28IEF = txtp28.Text.Trim();
                dsSession = dsDatosEmpresa();
                entidades.fechaResultIEF = fecha;
                entidades.totalResultIEF = Convert.ToString(total);                
                entidades.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    entidades.idEmpresResultIEF = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (reglas.CrearInfoEconoFinancAct(entidades))
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