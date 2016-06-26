using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CReglas;
using CEntidades;

namespace testBancolombia
{
    public partial class login : System.Web.UI.Page
    {
        CRusuario objRegUsr = new CRusuario();
        tblUsr objEntUsr = new tblUsr();
        DataSet ds1 = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                inputEmail.Text = "";
                inputPassword.Text = "";
                inputEmail.Focus();
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                if ((inputEmail.Text != "") && (inputPassword.Text != ""))
                {
                    objEntUsr.nombreUsr = inputEmail.Text;
                    objEntUsr.claveUsr = inputPassword.Text;
                    ds1 = objRegUsr.Login(objEntUsr);
                    if (ds1.Tables[0].Rows.Count != 0)
                    {
                        if (ds1.Tables[0].Rows[0]["rolUsr"].ToString() == "1")
                        {
                            Response.Redirect("Administrador/indexAdm.aspx");
                        }
                        else if (ds1.Tables[0].Rows[0]["rolUsr"].ToString() == "2")
                        {
                            Response.Redirect("inicioIndex.aspx");
                        }
                        else if (ds1.Tables[0].Rows[0]["rolUsr"].ToString() == "3")
                        {
                            //consulta
                            Response.Redirect("Consultas/MenuConsulta.aspx");
                        }
                        else
                        {
                            lblmensaje.Text = "Error";
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                lblmensaje.Text = ex.Message;
            }
        }
    }
}