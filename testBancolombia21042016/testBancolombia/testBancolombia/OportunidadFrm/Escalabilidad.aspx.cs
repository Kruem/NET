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
    public partial class Escalabilidad : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultOEscalabilidad oEResca = new tblResultOEscalabilidad();
        CRtblResultOEsc oRescal = new CRtblResultOEsc();
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
                int sumatoria = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0, ddl6 = 0, ddl7 = 0, ddl8 = 0, ddl9 = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString(); 

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    oEResca.result1ESC = "N/A";
                    no_aplica++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    oEResca.result1ESC = "0";
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
                    oEResca.result2ESC = "N/A";
                    no_aplica++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    oEResca.result2ESC = "0";
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
                    oEResca.result3ESC = "N/A";
                    no_aplica++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    oEResca.result3ESC = "0";
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
                    oEResca.result4ESC = "N/A";
                    no_aplica++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    oEResca.result4ESC = "0";
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
                    oEResca.result5ESC = "N/A";
                    no_aplica++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    oEResca.result5ESC = "0";
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
                    oEResca.result6ESC = "N/A";
                    no_aplica++;
                }
                else if (ddlp6.SelectedValue.ToString() == "0")
                {
                    oEResca.result6ESC = "0";
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
                    oEResca.result7ESC = "N/A";
                    no_aplica++;
                }
                else if (ddlp7.SelectedValue.ToString() == "0")
                {
                    oEResca.result7ESC = "0";
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
                    oEResca.result8ESC = "N/A";
                    no_aplica++;
                }
                else if (ddlp8.SelectedValue.ToString() == "0")
                {
                    oEResca.result8ESC = "0";
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
                    oEResca.result9ESC = "N/A";
                    no_aplica++;
                }
                else if (ddlp9.SelectedValue.ToString() == "0")
                {
                    oEResca.result9ESC = "0";
                }
                else if (ddlp9.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl9 = 1;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double prcInd = porc / (9 - no_aplica);
                prcInd = Math.Round(prcInd, 4);
                
                #region asignarResult
                if (ddl1 == 1)
                {
                    oEResca.result1ESC = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl2 == 1)
                {
                    oEResca.result2ESC = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 1)
                {
                    oEResca.result3ESC = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl4 == 1)
                {
                    oEResca.result4ESC = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 1)
                {
                    oEResca.result5ESC = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl6 == 1)
                {
                    oEResca.result6ESC = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl7 == 1)
                {
                    oEResca.result7ESC = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl8 == 1)
                {
                    oEResca.result8ESC = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl9 == 1)
                {
                    oEResca.result9ESC = prcInd.ToString();
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
                oEResca.fechaResultESC = fecha;
                oEResca.totalResultESC = Convert.ToString(total);
                oEResca.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    oEResca.idEmpresResultESC = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (oRescal.CrearoEscalabilidad(oEResca))
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