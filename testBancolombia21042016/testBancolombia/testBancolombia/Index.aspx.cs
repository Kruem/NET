using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;

namespace testBancolombia
{
    public partial class Index : System.Web.UI.Page
    {

        tblUsr eusuario = new tblUsr();
        CRusuario objUsuario = new CRusuario();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        //protected void btnlogin_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        eusuario.nombreUsr = txtusuario.Text;
        //        eusuario.claveUsr = txtcontraseña.Text;
        //        ds = objUsuario.Login(eusuario);
        //        if (ds.Tables[0].Rows.Count != 0)
        //        {
        //            txtusuario.Text = ds.Tables[0].Rows[0]["nombreUsr"].ToString();
        //            txtcontraseña.Text = ds.Tables[0].Rows[0]["claveUsr"].ToString();
        //            Response.Redirect("RegistroUsr.aspx");
        //        }
        //        else
        //        {
        //            lblmensaje.Text = "No existe";
        //        }
        //    }
        //    catch (Exception erro )
        //    {
        //        lblmensaje.Text = erro.Message;
        //    }
        //}
      
    }
}