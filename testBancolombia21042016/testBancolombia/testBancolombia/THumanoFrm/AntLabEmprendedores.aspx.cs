﻿using CEntidades;
using CReglas;
using System;
using System.Data;
using System.Globalization;

namespace testBancolombia.THumanoFrm
{
    public partial class AntLabEmprendedores : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultTHAntecFormLaborEmprend entidades = new tblResultTHAntecFormLaborEmprend();
        CRthResultAntecFormLaborEmprend reglas = new CRthResultAntecFormLaborEmprend();
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
                op = Convert.ToDouble(dsSession.Tables[0].Rows[0]["thDefault"].ToString());
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
                double total = 0, ddl = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0;
                int noap = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();
                

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    entidades.result1AFLE = "N/A";
                    noap++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    entidades.result1AFLE = Convert.ToString(ddl);
                   
                }
                else if (ddlp1.SelectedValue.ToString() == "1")
                {
                    
                    ddl1 =  1;
                }
                else if (ddlp1.SelectedValue.ToString() == "2")
                {
                    
                    ddl1 = 2;

                }
                #endregion

                #region ddl2
                if (ddlp2.SelectedValue.ToString() == "-1")
                {
                    entidades.result2AFLE = "N/A";
                    noap++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    entidades.result2AFLE = Convert.ToString(ddl);
                    
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
                    entidades.result3AFLE = "N/A";
                    noap++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    entidades.result3AFLE = Convert.ToString(ddl);
                    
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
                    entidades.result4AFLE = "N/A";
                    noap++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    entidades.result4AFLE = Convert.ToString(ddl);
                    
                }
                else if (ddlp4.SelectedValue.ToString() == "1")
                {
                    
                    ddl4 =1;
                }
                else if (ddlp4.SelectedValue.ToString() == "2")
                {
                    
                    ddl4 = 2;

                }
                #endregion

                #endregion

                #region CalculoSumaTotal
                double prcInd = porc / (4 - noap);
                prcInd = Math.Round(prcInd, 4);

                #endregion

                #region asignarResult

                double div = prcInd / 2;
                if (ddl1 == 1)
                {
                    entidades.result1AFLE = div.ToString();
                    total = total + div;
                }
                else
                {
                    if (ddl1 == 2)
                    {
                        entidades.result1AFLE = prcInd.ToString();
                        total = total + prcInd;

                    }
                    
                }

                if (ddl2 == 1)
                {
                    entidades.result2AFLE = div.ToString();
                    total = total + div;
                }
                else
                {
                    if (ddl2 == 2)
                    {
                        entidades.result2AFLE = prcInd.ToString();
                        total = total + prcInd;
                    }
                    
                }

                if (ddl3 == 1)
                {
                    entidades.result3AFLE = div.ToString();
                    total = total + div;

                }
                else
                {
                    if (ddl3 == 2)
                    {
                        entidades.result3AFLE = prcInd.ToString();
                        total = total + prcInd;
                    }
                                    }

                if (ddl4 == 1)
                {
                    entidades.result4AFLE = div.ToString();
                    total = total + div;
                }
                else
                {
                    if (ddl4 == 2)
                    {
                        entidades.result4AFLE = prcInd.ToString();
                        total = total + prcInd;
                    }
                    
                }


                #endregion

                if (total > porc)
                {
                    total = porc;
                }

                total = Math.Round(total, 4);

                #region ProcedReglas
                dsSession = dsDatosEmpresa();
                entidades.fechaResultAFLE = fecha;
                entidades.totalResultAFLE = Convert.ToString(total);
                entidades.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    entidades.idEmpresResultAFLE = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (reglas.CrearTHResultAntecFormLaborEmprend(entidades))
                {
                    Response.Redirect("../MenuTHumano.aspx");
                }
                #endregion

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            catch (Exception er)
            {

                throw;
            }
        }
    }
}