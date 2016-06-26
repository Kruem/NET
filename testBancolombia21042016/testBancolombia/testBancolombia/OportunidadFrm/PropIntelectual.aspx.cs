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
    public partial class PropIntelectual : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultOPropiedadIntelectual oErPI = new tblResultOPropiedadIntelectual();
        CRtblResultOPI oRpropInt = new CRtblResultOPI();
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
            //OPORTUNIDAD--PROPIEDAD INTELECTUAL
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
            //OPORTUNIDAD--PROPIEDAD INTELECTUAL
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
                    oErPI.result1PI = "N/A";
                    no_aplica++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    oErPI.result1PI = "0";
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
                    oErPI.result2PI = "N/A";
                    no_aplica++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    oErPI.result2PI = "0";
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
                    oErPI.result3PI = "N/A";
                    no_aplica++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    oErPI.result3PI = "0";
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
                    oErPI.result4PI = "N/A";
                    no_aplica++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    oErPI.result4PI = "0";
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
                    oErPI.result5PI = "N/A";
                    no_aplica++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    oErPI.result5PI = "0";
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
                total = Math.Round(total, 4);

                #region asignarResult

                if (ddl1 == 1)
                {
                    oErPI.result1PI = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl2 == 1)
                {
                    oErPI.result2PI = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 1)
                {
                    oErPI.result3PI = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl4 == 1)
                {
                    oErPI.result4PI = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 1)
                {
                    oErPI.result5PI = prcInd.ToString();
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
                oErPI.fechaResultPI = fecha;
                oErPI.totalResultPI = Convert.ToString(total);
                oErPI.result6PI=txtpi6.Text.Trim();
                oErPI.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    oErPI.idEmpresResultPI = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (oRpropInt.CrearoPropiedadIntelectual(oErPI))
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