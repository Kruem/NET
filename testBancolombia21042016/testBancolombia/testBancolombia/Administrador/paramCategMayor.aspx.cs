using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;
using System.Globalization;

namespace testBancolombia.Administrador
{
    public partial class paramCategMayor : System.Web.UI.Page
    {
        tblEmpresa oEntEmp = new tblEmpresa();
        CRempresa oRempr = new CRempresa();
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        CRDefaultOPTHRC orOTHR = new CRDefaultOPTHRC();
        CREmpresa_x_Default oREmpDefInd = new CREmpresa_x_Default();
        tblDefault_X_Empresa oEEmpDefInd = new tblDefault_X_Empresa();
        tblCategoriaInicialDefault oeOPTHR = new tblCategoriaInicialDefault();
        string empresaCA = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //llenarDDLEmpresas();
                inctivarInicial();
                consultaDef();
                llenarGvEmpresa();
            }
        }
        protected void llenarGvEmpresa()
        {
            try
            {
                ds = oRempr.consultarEmpresa();
                gvEmpresas.DataSource = ds;
                gvEmpresas.DataBind();
            }
            catch (Exception exr)
            {
                
                throw;
            }
        }

        protected void inctivarInicial()
        {
            try
            {
                //txtOportunidad.Enabled = false;
                //txtRecursos.Enabled = false;
                //txtTalHum.Enabled = false;
                chbDefaultBig.Enabled = false;
            }
            catch (Exception er)
            {
                
                throw;
            }
        }
        protected void consultaDef()
        {
            try
            {
                ds = orOTHR.consultaDefaultOPTHRCini();
                txtOpDef.Text = ds.Tables[0].Rows[0]["opDefault"].ToString();
                txtTHDef.Text = ds.Tables[0].Rows[0]["thDefault"].ToString();
                txtRecDef.Text = ds.Tables[0].Rows[0]["recDefault"].ToString();
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        protected void llenarDDLEmpresas()
        {
            //try
            //{
            //    ds = oRempr.consultarEmpresa();
            //    int nroR = ds.Tables[0].Rows.Count;
            //    ddlEmpresa.Items.Add("Empresa");
            //    for (int i = 0; i < nroR; i++)
            //    {
            //        ddlEmpresa.Items.Add(ds.Tables[0].Rows[i]["nombreEmpresaApps"].ToString());
            //    }
            //    ddlEmpresa.DataBind();

            //    txtOportunidad.Enabled = false;
            //    txtRecursos.Enabled = false;
            //    txtTalHum.Enabled = false;
            //    chbDefaultBig.Enabled = false;
            //}
            //catch (Exception ex)
            //{

            //    throw;
            //}
        }
        protected void ddlEmpresa_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                //txtOportunidad.Enabled = true;
                //txtRecursos.Enabled = true;
                //txtTalHum.Enabled = true;
                chbDefaultBig.Enabled = true;
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        protected void chbDefaultBig_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                if (chbDefaultBig.Checked == true)
                {
                    //txtOportunidad.Enabled = false;
                    //txtRecursos.Enabled = false;
                    //txtTalHum.Enabled = false;
                }
                else if (chbDefaultBig.Checked == false)
                {
                    //txtOportunidad.Enabled = true;
                    //txtRecursos.Enabled = true;
                    //txtTalHum.Enabled = true;
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void btnParametrizarBig_Click(object sender, EventArgs e)
        {
            try
            {
                empresaCA = (string)Session["empre"];
                oEntEmp.nombreEmpresaApps = empresaCA;
                ds = oRempr.consultarEmpresa(oEntEmp);
                

                if (chbDefaultBig.Checked == true)
                {
                    ds2 = orOTHR.consultaDefaultOPTHRCini();
                    int idempr, iddefault;
                    idempr = Convert.ToInt32(ds.Tables[0].Rows[0]["consecEA"].ToString());
                    iddefault = Convert.ToInt32(ds2.Tables[0].Rows[0]["conCategDefault"].ToString());
                    string fecha;
                    DateTime fechafull = DateTime.Now;
                    CultureInfo CurrentCulture = new CultureInfo("es-CO");
                    fecha = fechafull.ToShortDateString();
                    oEEmpDefInd.consecCategDefault = iddefault;
                    oEEmpDefInd.idEmpresaDef = idempr;
                    oEEmpDefInd.fechaDxE = fecha;
                    if (oREmpDefInd.crearDefaultEmpresa(oEEmpDefInd))
                    {
                        Response.Redirect("../Administrador/indexAdm.aspx");
                    }
                }
                else
                {

                }
                
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void rbSelect_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton lbSelect = (LinkButton)sender;
                if ((lbSelect.CommandArgument != null) || (lbSelect.CommandArgument != ""))
                {
                    //gvEmpresas.Enabled = false;
                    chbDefaultBig.Enabled = true;
                    //txtOportunidad.Enabled = true;
                    //txtRecursos.Enabled = true;
                    //txtTalHum.Enabled = true;
                    gvEmpresas.Columns[5].Visible = false;
                    Session["empre"] = lbSelect.CommandArgument;
                }
            }
            catch (Exception er)
            {

                throw;
            }
        }

    }
}