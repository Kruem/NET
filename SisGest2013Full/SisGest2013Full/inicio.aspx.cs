using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CReglas;
using System.Data;
using CEntidades;

namespace SisGest2013Full
{
    public partial class inicio : System.Web.UI.Page
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
            int tipo;
            string seccion;
            if (dsSesion != null)
            {
                tipo = int.Parse(dsSesion.Tables[0].Rows[0]["Tipo"].ToString());
                seccion = dsSesion.Tables[0].Rows[0]["Seccion"].ToString();

                if ((tipo == 1) || (tipo == 2 && seccion == "Gestión de Compras y Contratación"))
                {
                    comcont.HRef = "../CYC/inicioCYCAdm.aspx";
                    if (tipo == 2)
                    {
                        usr.HRef = "../Usuario/ModifUsr_USR.aspx";
                    }
                    else
                    {
                        if (tipo == 1)
                        {
                            usr.HRef = "../Administracion/ADM.aspx";
                        }
                    }
                }
                else
                {
                    comcont.HRef = "../CYC/inicioCYC.aspx";
                    usr.HRef = "../Usuario/ModifUsr_USR.aspx";
                }
            }
        }

    }
}
