using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;

namespace testBancolombia.Administrador
{
    public partial class AppPrePrueba : System.Web.UI.Page
    {
        tblEmpresa oEntEmp = new tblEmpresa();
        CRempresa oRempr = new CRempresa();
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        CRDefaultOPTHRC orOTHR = new CRDefaultOPTHRC();
        CREmpresa_x_Default oREmpDefInd = new CREmpresa_x_Default();
        tblDefault_X_Empresa oEEmpDefInd = new tblDefault_X_Empresa();
        tblCategoriaInicialDefault oeOPTHR = new tblCategoriaInicialDefault();
        tblResultxParam oEresxpar = new tblResultxParam();
        CRtblResultxParam oRresxpar = new CRtblResultxParam();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                llenarGvEmpresa();
            }
        }
        protected void llenarGvEmpresa()
        {
            try
            {
                ds = oREmpDefInd.consultaEmpresasParametrizadasTodas();
                gvEmpresas.DataSource = ds;
                gvEmpresas.DataBind();
            }
            catch (Exception exr)
            {

                throw;
            }
        }

        protected void rbSelect_Click(object sender, EventArgs e)
        {
            try
            {
                var msj = "";
                gvEmpresas.Visible = false;
                LinkButton rbSelect = (LinkButton)sender;
                if ((rbSelect.CommandArgument != null) || (rbSelect.CommandArgument != ""))
                {
                    int consEPRESA = Convert.ToInt32(rbSelect.CommandArgument);

                    oEEmpDefInd.idEmpresaDef = consEPRESA; //tbl defaultxempresa
                    //oEntEmp.consecEA = consEPRESA; //tbl empresa(sola)

                    ds2 = oREmpDefInd.ConsultaParamEmpresa(oEEmpDefInd); //consulta empresa
                    
                    //ds = oRempr.consultarEmpresa(oEntEmp); //consulta empresa por nombre o consecutivo

                    //int consecDef = Convert.ToInt32(ds2.Tables[0].Rows[0]["consecCategDefault"].ToString());

                    //oEEmpDefInd.consecCategDefault = consecDef;
                    //ds2 = oREmpDefInd.ConsultaParamEmpresa(oEEmpDefInd);

                    if (ds2.Tables[0].Rows.Count != 0)
                    {                       
                        gvcons.DataSource = ds2;                        
                        //ds.Tables[0].Columns[0].ToString()
                        gvcons.DataBind();
                        gvcons.Visible = true;
                        Session["dsParam"] = ds2;
                    }
                    else
                    {
                        grids.Style.Value = "visibility:hidden;";
                        mensaje.Style.Value = "visibility:visible;";
                        lblmensaje.Text = "Esta empresa no ha sido parametrizada.";                        
                    }
                }
                
            }
            catch (Exception er)
            {
                
                throw;
            }
        }

        protected void lbselect_Click(object sender, EventArgs e)
        {
            try
            {
                ds2 = (DataSet)Session["dsParam"];
                string fecha = "", full = "";
                int consecParam = 0;
                LinkButton lbSelect = (LinkButton)sender;
                if ((lbSelect.CommandArgument != null) || (lbSelect.CommandArgument != ""))
                {
                    full = lbSelect.CommandArgument;
                    char[] trimmOff = { ',' };
                    string[] parts = full.Split();
                    consecParam = Convert.ToInt32(parts[0]);
                    fecha = parts[2];

                    oEEmpDefInd.idEmpresaDef = Convert.ToInt32(ds2.Tables[0].Rows[0]["idEmpresaDef"].ToString());
                    oEEmpDefInd.fechaDxE = fecha;
                    oEEmpDefInd.consecCategDefault = consecParam;
                    ds1 = oREmpDefInd.ConsultaParamEmpresa(oEEmpDefInd);

                    Session["dsParamIND"] = (DataSet) ds1;

                    //Enviar Session dsParamIND a Menu.aspx para tomar campos necesarios para la creación y actualización
                    //de ResulxParam
                    
                    Response.Redirect("../Menu.aspx");
                }
            }
            catch (Exception er)
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