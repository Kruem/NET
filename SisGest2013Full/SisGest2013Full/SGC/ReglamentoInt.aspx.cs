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


namespace SisGest2013Full.SGC
{
    public partial class ReglamentoInt : System.Web.UI.Page
    {
        DataSet dsSesion = new DataSet();
        CRusuario objRegusr = new CRusuario();
        Cusuario objEntusr = new Cusuario();
        string ruta = "~/Data/Documentos_Estrategicos/Reglamento_Interno/";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                validarUsuario();
                llenarDDL();
                incativarCampos();

            }
        }

        private void llenarDDL()
        {
            DropDownList1.Items.Add("Seleccione Ruta");
            string[] filePaths = Directory.GetDirectories(Server.MapPath(ruta));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                DropDownList1.Items.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            DropDownList1.Items.Add("Crear Carpeta...");
        }

        private void incativarCampos()
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                FileUpload1.Enabled = false;
                btnUpload.Enabled = false;
                GridView1.Visible = false;
                TextBox1.Visible = false;
            }
        }

        private void validarUsuario()
        {
            dsSesion = (DataSet)Session["ingresar"];
            int tipo;
            tipo = int.Parse(dsSesion.Tables[0].Rows[0]["Tipo"].ToString());

            if (dsSesion.Tables[0].Rows.Count > 0)
            {

                if (tipo != 1)
                {
                    this.GridView1.Columns[2].Visible = false;
                    this.FileUpload1.Visible = false;
                    this.btnUpload.Visible = false;
                    this.lnkDeleteFolder.Visible = false;
                }
                else
                {
                    this.GridView1.Columns[2].Visible = true;
                    this.FileUpload1.Visible = true;
                    this.btnUpload.Visible = true;
                    this.lnkDeleteFolder.Visible = true;

                }
            }
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((DropDownList1.SelectedItem.ToString() != "Seleccione Ruta") && (DropDownList1.SelectedItem.ToString() != "Crear Carpeta..."))
            {
                ruta += DropDownList1.SelectedItem + "/";
                FileUpload1.Enabled = true;
                btnUpload.Enabled = true;
                GridView1.Visible = true;

                string[] filePaths = Directory.GetFiles(Server.MapPath(ruta));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
            else
            {
                if (DropDownList1.SelectedItem.ToString() == "Crear Carpeta...")
                {
                    TextBox1.Visible = true;
                    btnUpload.Enabled = true;
                }
            }

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

        protected void DeleteFolder(object sender, EventArgs e)
        {
            ruta += DropDownList1.SelectedItem;
            if ((DropDownList1.SelectedItem.ToString() != "Seleccione Ruta") && (DropDownList1.SelectedItem.ToString() != "Crear Carpeta..."))
            {
                Directory.Delete(Server.MapPath(ruta));
                Response.Redirect(Request.Url.AbsoluteUri);
            }

        }

        protected void UploadFile(object sender, EventArgs e)
        {
            if ((DropDownList1.SelectedItem.ToString() != "Seleccione Ruta") && (DropDownList1.SelectedItem.ToString() != "Crear Carpeta..."))
            {
                ruta += DropDownList1.SelectedItem + "/";
                FileUpload1.Enabled = true;
                btnUpload.Enabled = true;
                GridView1.Visible = true;
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath(ruta) + fileName);
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                if (DropDownList1.SelectedItem.ToString() == "Crear Carpeta...")
                {
                    try
                    {
                        string folderName = TextBox1.Text.TrimEnd() + "/";
                        ruta += folderName;
                        Directory.CreateDirectory(Server.MapPath(ruta));
                        Response.Redirect(Request.Url.AbsoluteUri);
                    }
                    catch (Exception error)
                    {
                    }
                }
            }

        }
    }
}