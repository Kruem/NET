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
    public partial class ConsultarEcoADM : System.Web.UI.Page
    {
        CEEco oEeco = new CEEco();
        CREco oReco = new CREco();
        DataSet dsSesion = new DataSet();
        string ruta = "~/Data/CYC/";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                incativarCampos();
                validarUsuario();
            }
        }
        private void validarUsuario()
        {
            dsSesion = (DataSet)Session["ingresar"];
            int tipo;
            string seccion;
            tipo = int.Parse(dsSesion.Tables[0].Rows[0]["Tipo"].ToString());
            seccion = dsSesion.Tables[0].Rows[0]["Seccion"].ToString();


            dsSesion = (DataSet)Session["ingresar"];
            if (dsSesion != null)
            {
                casita.HRef = "../inicio.aspx";

            }
            else
            {
                casita.HRef = "Index.aspx";
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
                GridView2.Visible = true;
                GridView2.DataSource = files;
                GridView2.DataBind();
            }
            else
            {
                lblmensaje.Text = "Aun no hay documentos de seguimiento.";
            }
        }

        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            txtconsulta.Text = "";
            GridView2.Visible = false;
        }

        protected void UploadFile(object sender, EventArgs e)
        {
            string codseg = "";
            if (txtconsulta.Text != "")
            {
                codseg = txtconsulta.Text;
                if (FileUpload1.HasFile)
                {
                    ruta = ruta + "/" + codseg + "/";
                    FileUpload1.Enabled = true;
                    btnUpload.Enabled = true;
                    GridView1.Visible = true;
                    string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.PostedFile.SaveAs(Server.MapPath(ruta) + fileName);
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
                else
                {
                    lblmensaje.Visible = true;
                    lblmensaje.Text = "Debe elegir un archivo";
                    FileUpload1.Focus();
                }
            }

        }

    }
}

