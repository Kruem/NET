using CEntidades;
using CReglas;
using System;
using System.Data;
using System.Globalization;

namespace testBancolombia.THumanoFrm
{
    public partial class CeOrgaEstrucEmpresa : System.Web.UI.Page
    {
        DataSet dsSession = new DataSet();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        tblResultTHOrganizEstructEmpres entidades = new tblResultTHOrganizEstructEmpres();
        CRthResultOrganizEstructEmpres reglas = new CRthResultOrganizEstructEmpres();
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
                porc = porc / 3;
                int noap = 0;
                double total = 0, ddl1 = 0, ddl2 = 0, ddl3 = 0, ddl4 = 0, ddl5 = 0, ddl6 = 0, ddl7 = 0;
                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                #region DDLS

                #region ddl1
                if (ddlp1.SelectedValue.ToString() == "-1")
                {
                    entidades.result1OEE = "N/A";
                    noap++;
                }
                else if (ddlp1.SelectedValue.ToString() == "0")
                {
                    entidades.result1OEE = Convert.ToString(ddl1);
                }
                else if (ddlp1.SelectedValue.ToString() == "1")
                {
                    ddl1 = 1;
                }
                #endregion

                #region ddl2
                if (ddlp2.SelectedValue.ToString() == "-1")
                {
                    entidades.result2OEE = "N/A";
                    noap++;
                }
                else if (ddlp2.SelectedValue.ToString() == "0")
                {
                    entidades.result2OEE = Convert.ToString(ddl2);
                }
                else if (ddlp2.SelectedValue.ToString() == "1")
                {
                    ddl2 = 1;
                }
                #endregion

                #region ddl3
                if (ddlp3.SelectedValue.ToString() == "-1")
                {
                    entidades.result3OEE = "N/A";
                    noap++;
                }
                else if (ddlp3.SelectedValue.ToString() == "0")
                {
                    entidades.result3OEE = Convert.ToString(ddl3);
                }
                else if (ddlp3.SelectedValue.ToString() == "1")
                {

                    ddl3 = 1;
                }
                #endregion

                #region ddl4
                if (ddlp4.SelectedValue.ToString() == "-1")
                {
                    entidades.result4OEE = "N/A";
                    noap++;
                }
                else if (ddlp4.SelectedValue.ToString() == "0")
                {
                    entidades.result4OEE = Convert.ToString(ddl4);
                }
                else if (ddlp4.SelectedValue.ToString() == "1")
                {
                    ddl4 = 1;
                }
                #endregion

                #region ddl5
                if (ddlp5.SelectedValue.ToString() == "-1")
                {
                    entidades.result5OEE = "N/A";
                    noap++;
                }
                else if (ddlp5.SelectedValue.ToString() == "0")
                {
                    entidades.result5OEE = Convert.ToString(ddl5);

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
                    entidades.result6OEE = "N/A";
                    noap++;
                }
                else if (ddlp6.SelectedValue.ToString() == "0")
                {
                    entidades.result6OEE = Convert.ToString(ddl6);
                }
                else if (ddlp6.SelectedValue.ToString() == "1")
                {

                    ddl6 = 1;
                }
                else if (ddlp6.SelectedValue.ToString() == "2")
                {
                    ddl6 = 2;
                }
                #endregion

                #region ddl7
                if (ddlp7.SelectedValue.ToString() == "-1")
                {
                    entidades.result6OEE = "N/A";
                    noap++;
                }
                else if (ddlp7.SelectedValue.ToString() == "0")
                {
                    entidades.result7OEE = Convert.ToString(ddl7);

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

                #endregion

                #region CalculoSumaTotal
                double prcInd = porc / (7 - noap);
                prcInd = Math.Round(prcInd, 4);
                #endregion

                #region asignarResult

                double div = prcInd / 2;
                if (ddl1 == 1)
                {
                    entidades.result1OEE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl2 == 1)
                {
                    entidades.result2OEE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl3 == 1)
                {
                    entidades.result3OEE = prcInd.ToString();
                    total = total + prcInd;

                }

                if (ddl4 == 1)
                {
                    entidades.result4OEE = prcInd.ToString();
                    total = total + prcInd;
                }

                if (ddl5 == 1)
                {
                    entidades.result5OEE = div.ToString();
                    total = total + div;
                }
                else
                {
                    if (ddl5 == 2)
                    {
                        entidades.result5OEE = prcInd.ToString();
                        total = total + prcInd;
                    }

                }

                if (ddl6 == 1)
                {
                    entidades.result6OEE = prcInd.ToString();
                    total = total + prcInd;
                }
                else
                {
                    if (ddl6 == 2)
                    {
                        entidades.result6OEE = prcInd.ToString();
                        total = total + prcInd;
                    }
                }

                if (ddl7 == 1)
                {
                    entidades.result7OEE = prcInd.ToString();
                    total = total + prcInd;
                }
                else
                {
                    if (ddl7 == 2)
                    {
                        entidades.result7OEE = prcInd.ToString();
                        total = total + prcInd;
                    }
                }

                if (total > porc)
                {
                    total = porc;
                }

                total = Math.Round(total, 4);

                #endregion


                #region ProcedReglas
                dsSession = dsDatosEmpresa();
                entidades.fechaResultOEE = fecha;
                entidades.totalResultOEE = Convert.ToString(total);
                entidades.observaciones = txtObservaciones.Text.Trim();

                if (dsSession.Tables[0].Rows.Count != 0)
                {
                    entidades.idEmpresResultOEE = (int)dsSession.Tables[0].Rows[0]["idEmpresaDef"];
                }

                if (reglas.CrearResultOrganizEstructEmpres(entidades))
                {
                    Response.Redirect("../MTHConfEstraEquipo.aspx");
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