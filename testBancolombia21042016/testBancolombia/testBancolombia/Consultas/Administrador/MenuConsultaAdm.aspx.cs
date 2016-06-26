using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testBancolombia.Consultas.Administrador
{
    public partial class MenuConsultaAdm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnOptPrueba_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("conOportunidadAdm.aspx");
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void btnTHPrueba_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("conTHumanoAdm.aspx");
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void btnRecPrueba_Click(object sender, EventArgs e)
        {
            try
            {
                
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}