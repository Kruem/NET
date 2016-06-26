using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testBancolombia.Consultas
{
    public partial class MenuConsulta : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOptPrueba_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("ConOportunidad.aspx");
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
                Response.Redirect("ConTHumano.aspx");
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
                Response.Redirect("ConRecursos.aspx");
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}