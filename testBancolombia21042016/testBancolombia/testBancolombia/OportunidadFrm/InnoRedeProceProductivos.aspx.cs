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
    public partial class InnoRedeProceProductivos : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultORedefinProcesProduc oErpp = new tblResultORedefinProcesProduc();
        CRtblResultORPP oRrpp = new CRtblResultORPP();
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
                prc = prc / 5;
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
                prc = prc / 5;
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

        protected void btnguargar_Click(object sender, EventArgs e)
        {
            try
            {
                double porc = porcent();
                porc = porc / 5; //división de innovación (5 partes)
                double total = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0;
                int sumatoria = 0, noap = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();
                
                #region DDLS

                #region ddl1

                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    oErpp.result1RPP = "N/A";
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
                else if (ddlp1.SelectedValue.ToString() == "3")
                {
                    ddl1 = 3;
                }
                #endregion

                #region ddl2

                if (ddlp2.SelectedValue.ToString() == "-1")
                {
                    oErpp.result2RPP = "N/A";
                    noap++;
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
                else if (ddlp2.SelectedValue.ToString() == "3")
                {
                    ddl2 = 3;
                }
                #endregion

                #region ddl3

                if (ddlp3.SelectedValue.ToString() == "-1")
                {
                    oErpp.result3RPP = "N/A";
                    noap++;
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
                else if (ddlp3.SelectedValue.ToString() == "3")
                {
                    ddl3 = 3;
                }
                #endregion

                #region ddl4

                if (ddlp4.SelectedValue.ToString() == "-1")
                {
                    oErpp.result4RPP = "N/A";
                    noap++;
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
                else if (ddlp4.SelectedValue.ToString() == "3")
                {
                    ddl4 = 3;
                }
                #endregion

                #region ddl5

                if (ddlp5.SelectedValue.ToString() == "-1")
                {
                    oErpp.result5RPP = "N/A";
                    noap++;
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

                #endregion

                #region CalculoSumaTotal
                double resta = (5 - noap);
                double prcInd = porc / resta;//preguntas del frm
                prcInd = Math.Round(prcInd, 4);

                #region asignarResult

                double div = prcInd / 4; //0.1.2.3.n/a                

                if (ddl1 == 0)
                {
                    oErpp.result1RPP = div.ToString();
                    total = total + div;
                }
                else
                {
                    if (ddl1 == 1)
                    {
                        oErpp.result1RPP = (div * 2).ToString();
                        total = total + (div * 2);
                    }
                    else
                    {
                        if (ddl1 == 2)
                        {
                            oErpp.result1RPP = (div * 3).ToString();
                            total = total + (div * 3);
                        }
                        else
                        {
                            if (ddl1 == 3)
                            {
                                oErpp.result1RPP = prcInd.ToString();
                                total = total + prcInd;
                            }
                        }
                    }
                }

                if (ddl2 == 0)
                {
                    oErpp.result2RPP = div.ToString();
                    total = total + div;
                }
                else
                {
                    if (ddl2 == 1)
                    {
                        oErpp.result2RPP = (div * 2).ToString();
                        total = total + (div * 2);
                    }
                    else
                    {
                        if (ddl2 == 2)
                        {
                            oErpp.result2RPP = (div * 3).ToString();
                            total = total + (div * 3);
                        }
                        else
                        {
                            if (ddl2 == 3)
                            {
                                oErpp.result2RPP = prcInd.ToString();
                                total = total + prcInd;
                            }
                        }
                    }
                }

                if (ddl3 == 0)
                {
                    oErpp.result3RPP = div.ToString();
                    total = total + div;
                }
                else
                {
                    if (ddl3 == 1)
                    {
                        oErpp.result3RPP = (div * 2).ToString();
                        total = total + (div * 2);
                    }
                    else
                    {
                        if (ddl3 == 2)
                        {
                            oErpp.result3RPP = (div * 3).ToString();
                            total = total + (div * 3);
                        }
                        else
                        {
                            if (ddl3 == 3)
                            {
                                oErpp.result3RPP = prcInd.ToString();
                                total = total + prcInd;
                            }
                        }
                    }
                }


                if (ddl4 == 0)
                {
                    oErpp.result4RPP = div.ToString();
                    total = total + (div);
                }
                else
                {
                    if (ddl4 == 1)
                    {
                        oErpp.result4RPP = (div * 2).ToString();
                        total = total + (div * 2);
                    }
                    else
                    {
                        if (ddl4 == 2)
                        {
                            oErpp.result4RPP = (div * 3).ToString();
                            total = total + (div * 3);
                        }
                        else
                        {
                            if (ddl4 == 3)
                            {
                                oErpp.result4RPP = prcInd.ToString();
                                total = total + prcInd;
                            }
                        }
                    }
                }

                if (ddl5 == 0)
                {
                    oErpp.result5RPP = div.ToString();
                    total = total + div;
                }
                else
                {
                    if (ddl5 == 1)
                    {
                        oErpp.result5RPP = (div * 2).ToString();
                        total = total + (div * 2);
                    }
                    else
                    {
                        if (ddl5 == 2)
                        {
                            oErpp.result5RPP = (div * 3).ToString();
                            total = total + (div * 3);
                        }
                        else
                        {
                            if (ddl5 == 3)
                            {
                                oErpp.result5RPP = prcInd.ToString();
                                total = total + prcInd;
                            }
                        }
                    }
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
                oErpp.fechaResultRPP = fecha;
                oErpp.totalResultRPP = Convert.ToString(total);
                oErpp.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    oErpp.idEmpresResultRPP = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (oRrpp.CrearoRedefProcesProduct(oErpp))
                {
                    Response.Redirect("../MOpInnovacion.aspx");
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