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
    public partial class MrClientes : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultOClientes oEcl = new tblResultOClientes();
        CRtblResultOCli oRcl = new CRtblResultOCli();

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
                double total = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0, ddl6 = 0, ddl7 = 0;
                int sumatoria = 0, noap = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    oEcl.result1C = "N/A";
                    noap++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    ddl1 = 0;
                }
                else if (ddlp1.SelectedValue.ToString() == "1")
                {
                    ddl1 = 1;
                }
                else if (ddlp1.SelectedValue.ToString() == "2")
                {
                    ddl1 = 2;

                }
                #endregion

                #region ddl2
                if (ddlp2.SelectedValue.ToString() == "-1")
                {
                    oEcl.result2C = "N/A";
                    noap++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    oEcl.result2C = "0";
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
                    oEcl.result3C = "N/A";
                    noap++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    oEcl.result3C = "0";
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
                    oEcl.result4C = "N/A";
                    noap++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    oEcl.result4C = "0";
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
                    oEcl.result5C = "N/A";
                    noap++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    oEcl.result5C = "0";
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
                    oEcl.result6C = "N/A";
                    noap++;
                }
                else if (ddlp6.SelectedValue.ToString() == "0")
                {
                    oEcl.result6C = "0";
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
                    oEcl.result7C = "N/A";
                    noap++;
                }
                else if (ddlp7.SelectedValue.ToString() == "0")
                {
                    oEcl.result7C = "0";
                }
                else if (ddlp7.SelectedValue.ToString() == "1")
                {
                    sumatoria++;
                    ddl7 = 1;
                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double resta = (7 - noap);
                double prcInd = porc / resta;//preguntas del frm
                prcInd = Math.Round(prcInd, 4);

                #region asignarResult

                double div = prcInd / 3; //0.1.2.3.n/a                

                if (ddl1 == 0)
                {
                    oEcl.result1C = (div).ToString();
                    total = total + div;
                }
                else
                {
                    if (ddl1 == 1)
                    {
                        oEcl.result1C = (div * 2).ToString();
                        total = total + (div * 2);
                    }
                    else
                    {
                        if (ddl1 == 2)
                        {
                            oEcl.result1C = prcInd.ToString();
                            total = total + prcInd;
                        }
                    }
                }

                if (ddl2 == 1)
                {
                    oEcl.result2C = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 1)
                {
                    oEcl.result3C = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl4 == 1)
                {
                    oEcl.result4C = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 1)
                {
                    oEcl.result5C = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl6 == 1)
                {
                    oEcl.result6C = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl7 == 1)
                {
                    oEcl.result7C = prcInd.ToString();
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
                oEcl.fechaResultC = fecha;
                oEcl.totalResultC = Convert.ToString(total);
                oEcl.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    oEcl.idEmpresResultC = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (oRcl.CrearoClientes(oEcl))
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