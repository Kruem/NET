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
    public partial class paramOportunidad : System.Web.UI.Page
    {
        tblEmpresa oEntEmp = new tblEmpresa();
        CRempresa oRempr = new CRempresa();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarDDLEmpresas();
            }
        }

        protected void llenarDDLEmpresas()
        {
            try
            {
                ds = oRempr.consultarEmpresa();
                int nroR = ds.Tables[0].Rows.Count;
                ddlEmpresa.Items.Add("Empresa");
                for (int i = 0; i < nroR; i++)
                {
                    ddlEmpresa.Items.Add(ds.Tables[0].Rows[i]["nombreEmpresaApps"].ToString());
                }
                ddlEmpresa.DataBind();
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}