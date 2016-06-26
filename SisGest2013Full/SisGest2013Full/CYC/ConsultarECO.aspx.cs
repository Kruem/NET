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
    public partial class ConsultarECO : System.Web.UI.Page
    {
        CEEco oEeco = new CEEco();
        CREco oReco = new CREco();

        string ruta = "~/Data/CYC/";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                incativarCampos();
            }

        }

        private void incativarCampos()
        {

            GridView2.Visible = false;
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void DeleteFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void btnconsulta_Click(object sender, EventArgs e)
        {
            string codseg = "";
            if (txtconsulta.Text != "")
            {
                codseg = txtconsulta.Text;

                ruta = ruta + "/" + codseg;
                GridView2.Visible = true;

                string[] filePaths = Directory.GetFiles(Server.MapPath(ruta));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                GridView2.DataSource = files;
                GridView2.DataBind();
            }
            else
            {
                lblmensaje.Text = "Aun no hay documentos de seguimiento.";
            }
        }


    }
}
