using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using CReglas;
using CEntidades;

namespace SisGest2013Full.CYC
{
    public partial class inicioCYCAdm : System.Web.UI.Page
    {
        CRusuario objRegusr = new CRusuario();
        Cusuario objEntusr = new Cusuario();
        DataSet dsSesion = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                validarUsuario();
            }
        }
        private void validarUsuario()
        {
            dsSesion = (DataSet)Session["ingresar"];
            try
            {
                if (dsSesion != null)
                {
                    casita.HRef = "../inicio.aspx";

                }
                else
                {
                    casita.HRef = "Index.aspx";
                }
            }
            catch (Exception er)
            {
                Response.Redirect("EditarEco.aspx");
            }


        }
    }
}
