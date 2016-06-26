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
    public partial class ProyecEconomica : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultRProyeccionEconomica entidades = new tblResultRProyeccionEconomica();
        CRresultRProyeccionEconomica reglas = new CRresultRProyeccionEconomica();
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
                int sumatoria = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0, ddl6 = 0, ddl7 = 0, ddl8 = 0, ddl9 = 0, ddl10 = 0, ddl11 = 0, ddl12 = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    entidades.result1PE = "N/A";
                    no_aplica++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    entidades.result1PE = "0";
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
                    entidades.result2PE = "N/A"; no_aplica++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    ddl2 = 0;
                }
                else if (ddlp2.SelectedValue.ToString() == "1")
                {
                    ddl2 = 1;
                }
                else if (ddlp2.SelectedValue.ToString() == "2")
                {
                    ddl2 = 2;
                }
                #endregion

                #region ddl3

                if (ddlp3.SelectedValue.ToString() == "-1")
                {
                    entidades.result3PE = "N/A"; no_aplica++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    ddl3 = 0;
                }
                else if (ddlp3.SelectedValue.ToString() == "1")
                {
                    ddl3 = 1;
                }
                else if (ddlp3.SelectedValue.ToString() == "2")
                {
                    ddl3 = 2;
                }
                #endregion

                #region ddl4

                if (ddlp4.SelectedValue.ToString() == "-1")
                {
                    entidades.result4PE = "N/A"; no_aplica++;
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
                    entidades.result5PE = "N/A"; no_aplica++;
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
                #endregion

                #region ddl6
                if (ddlp6.SelectedValue.ToString() == "-1")
                {
                    entidades.result6PE = "N/A";
                    no_aplica++;
                }
                else if (ddlp6.SelectedValue.ToString() == "0")
                {
                    entidades.result6PE = "0";
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
                    entidades.result7PE = "N/A"; no_aplica++;
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
                    entidades.result8PE = "N/A"; no_aplica++;
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
                    entidades.result9PE = "N/A"; no_aplica++;
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
                    entidades.result10PE = "N/A"; no_aplica++;
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
                    entidades.result11PE = "N/A"; no_aplica++;
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
                #endregion

                #region ddl12

                if (ddlp12.SelectedValue.ToString() == "-1")
                {
                    entidades.result12PE = "N/A"; no_aplica++;
                }
                else if (ddlp12.SelectedValue.ToString() == "0")
                {
                    ddl12 = 0;
                }
                else if (ddlp12.SelectedValue.ToString() == "1")
                {
                    ddl12 = 1;
                }
                else if (ddlp12.SelectedValue.ToString() == "2")
                {
                    ddl12 = 2;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double prcInd = porc / (12 - no_aplica);
                prcInd = Math.Round(prcInd, 4);
                double div = prcInd / 3;

                #region asignarResult

                if (ddl1 == 1)
                {
                    entidades.result1PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl2 == 0)
                {
                    entidades.result2PE = div.ToString();
                    total = total + div;
                }
                else if (ddl2 == 1)
                {
                    entidades.result2PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl2 == 2)
                {
                    entidades.result2PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 0)
                {
                    entidades.result3PE = div.ToString();
                    total = total + div;
                }
                else if (ddl3 == 1)
                {
                    entidades.result3PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl3 == 2)
                {
                    entidades.result3PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl4 == 0)
                {
                    entidades.result4PE = div.ToString();
                    total = total + div;
                }
                else if (ddl4 == 1)
                {
                    entidades.result4PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl4 == 2)
                {
                    entidades.result4PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 0)
                {
                    entidades.result5PE = div.ToString();
                    total = total + div;
                }
                else if (ddl5 == 1)
                {
                    entidades.result5PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl5 == 2)
                {
                    entidades.result5PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl6 == 1)
                {
                    entidades.result6PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl7 == 0)
                {
                    entidades.result7PE = div.ToString();
                    total = total + div;
                }
                else if (ddl7 == 1)
                {
                    entidades.result7PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl7 == 2)
                {
                    entidades.result7PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl8 == 0)
                {
                    entidades.result8PE = div.ToString();
                    total = total + div;
                }
                else if (ddl8 == 1)
                {
                    entidades.result8PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl8 == 2)
                {
                    entidades.result8PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl9 == 0)
                {
                    entidades.result9PE = div.ToString();
                    total = total + div;
                }
                else if (ddl9 == 1)
                {
                    entidades.result9PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl9 == 2)
                {
                    entidades.result9PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl10 == 0)
                {
                    entidades.result10PE = div.ToString();
                    total = total + div;
                }
                else if (ddl10 == 1)
                {
                    entidades.result10PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl10 == 2)
                {
                    entidades.result10PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl11 == 0)
                {
                    entidades.result11PE = div.ToString();
                    total = total + div;
                }
                else if (ddl11 == 1)
                {
                    entidades.result11PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl11 == 2)
                {
                    entidades.result11PE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl12 == 0)
                {
                    entidades.result12PE = div.ToString();
                    total = total + div;
                }
                else if (ddl12 == 1)
                {
                    entidades.result12PE = (div * 2).ToString();
                    total = total + (div * 2);
                }
                else if (ddl12 == 2)
                {
                    entidades.result12PE = prcInd.ToString();
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
                entidades.fechaResultPE = fecha;
                entidades.totalResultPE = Convert.ToString(total);
                entidades.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    entidades.idEmpresResultPE = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (reglas.CrearProyeccionEconomica(entidades))
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