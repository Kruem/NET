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
    public partial class AntFinancieros : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultRAntecedentesFinanciacion entidades = new tblResultRAntecedentesFinanciacion();
        CRresultRAntecedentesFinanciacion reglas = new CRresultRAntecedentesFinanciacion();
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
                int sumatoria = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0, ddl6 = 0, ddl7 = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    entidades.result1AF = "N/A";
                    no_aplica++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    entidades.result1AF = "0";
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
                    entidades.result2AF = "N/A";
                    no_aplica++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    entidades.result2AF = "0";
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
                    entidades.result3AF = "N/A";
                    no_aplica++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    entidades.result3AF = "0";
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
                    entidades.result4AF = "N/A";
                    no_aplica++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    entidades.result4AF = "0";
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
                    entidades.result5AF = "N/A";
                    no_aplica++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    entidades.result5AF = "0";
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
                    entidades.result6AF = "N/A";
                    no_aplica++;
                }
                else if (ddlp6.SelectedValue.ToString() == "0")
                {
                    entidades.result6AF = "0";
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
                    entidades.result7AF = "N/A";
                    no_aplica++;
                }
                else if (ddlp7.SelectedValue.ToString() == "0")
                {
                    entidades.result7AF = "0";
                }
                else if (ddlp7.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl7 = 1;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double prcInd = porc / (7 - no_aplica);
                prcInd = Math.Round(prcInd, 4);

                #region asignarResult
                if (ddl1 == 1)
                {
                    entidades.result1AF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl2 == 1)
                {
                    entidades.result2AF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 1)
                {
                    entidades.result3AF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl4 == 1)
                {
                    entidades.result4AF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 1)
                {
                    entidades.result5AF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl6 == 1)
                {
                    entidades.result6AF = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl7 == 1)
                {
                    entidades.result7AF = prcInd.ToString();
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

                entidades.result8AF = txtp8.Text.Trim();
                entidades.result9AF = txtp9.Text.Trim();
                entidades.result10AF = txtp10.Text.Trim();
                entidades.result11AF = txtp11.Text.Trim();
                entidades.result12AF = txtp12.Text.Trim();
                entidades.result13AF = txtp13.Text.Trim();
                entidades.result14AF = txtp14.Text.Trim();
                entidades.result15AF = txtp15.Text.Trim();
                entidades.result16AF = txtp16.Text.Trim();
                entidades.result17AF = txtp17.Text.Trim();
                entidades.result18AF = txtp18.Text.Trim();

                dsSession = dsDatosEmpresa();
                entidades.fechaResultAF = fecha;
                entidades.totalResultAF = Convert.ToString(total);
                entidades.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    entidades.idEmpresResultAF = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (reglas.CrearAntecedentesFinanciacion(entidades))
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