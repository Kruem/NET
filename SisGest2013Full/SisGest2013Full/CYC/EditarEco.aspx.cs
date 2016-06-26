using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CReglas;
using CEntidades;
using System.Data;
using System.IO;
using System.Globalization;


namespace SisGest2013Full.CYC
{
    public partial class EditarEco : System.Web.UI.Page
    {
        CREco oReco = new CREco();
        CEEco oEeco = new CEEco();
        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        //DateTime dateT1 = new DateTime();
        DataSet ds3 = new DataSet(); // tblEcoModerador
        DataSet ds5 = new DataSet(); // tblEcoModFases
        DataSet dsSesion = new DataSet();
        int idfase;
        string dia, mes, ano, fechaini, fecharealiz, fechatot, ruta = "../Data/CYC/";
        //string format = "dd/mm/yyyy hh:mm tt";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                limpiarcampos();
                validarUsuario();
                ds1 = null;
                ds2 = null;
                ds3 = null;
                ds5 = null;
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

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            lblmensaje.Text = "";
            try
            {
                if (txtcodsig.Text != "")
                {
                    oEeco.Codseguimiento = Convert.ToInt32(txtcodsig.Text);
                    ds1 = oReco.consulta_ecoUsrModer(oEeco); //relación eco solicitado con eco realizado
                    oEeco.Consecutivo = Convert.ToInt32(ds1.Tables[0].Rows[0]["consecEco"].ToString());
                    ds2 = oReco.consulta_eco1(oEeco);//consulta tabla eco inicial
                    ds3 = oReco.consulta_ecoMod(oEeco); //consulta tabla moderador (fases)

                    ds5 = oReco.consulta_ecoModerFase(oEeco); //consulta fecha inicial fase
                    txtfaseactual.Text = ds5.Tables[0].Rows[0]["fase"].ToString();
                    txtsolicita.Text = ds2.Tables[0].Rows[0]["solicita"].ToString();
                    txtarea.Text = ds2.Tables[0].Rows[0]["area"].ToString();
                    idfase = Convert.ToInt32(ds5.Tables[0].Rows[0]["idfase"]);

                    ddlfase.SelectedIndex = idfase - 1;

                    if (ds3.Tables[0].Rows[0]["fechafinaltotal"].ToString() != "")
                    {
                        fechatot = ds3.Tables[0].Rows[0]["fechafinaltotal"].ToString();
                    }
                    else
                    {
                        fechatot = null;
                    }

                    ruta = ruta + txtcodsig.Text.Trim();

                    GridView1.Visible = true;
                    string[] filePaths = Directory.GetFiles(Server.MapPath(ruta));
                    List<ListItem> files = new List<ListItem>();
                    foreach (string filePath in filePaths)
                    {
                        files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                    }
                    GridView1.DataSource = files;
                    GridView1.DataBind();
                    fechaini = Convert.ToString(DateTime.Now.ToShortDateString());
                    txtfechafini.Text = fechaini;
                    ddlcontratacion.SelectedValue = ds3.Tables[0].Rows[0]["contratacion"].ToString();
                    DropDownList1.SelectedValue = ds3.Tables[0].Rows[0]["tipocontrato"].ToString();
                    txtinterventor.Text = ds3.Tables[0].Rows[0]["interventor"].ToString();
                    DropDownList2.SelectedValue = ds3.Tables[0].Rows[0]["centrogestor"].ToString();
                    txtfechaftotal.Text = fechatot;
                    txtobservacion.Text = ds3.Tables[0].Rows[0]["observaciones"].ToString();


                }
            }
            catch (Exception ex)
            {
                lblmensaje.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            oEeco.Codseguimiento = Convert.ToInt32(txtcodsig.Text);
            ds3 = oReco.consulta_ecoMod(oEeco);
            try
            {
                
                if (txtfaseactual.Text == ddlfase.SelectedItem.ToString())
                {
                    
                    oEeco.Fecharealizacion = ds3.Tables[0].Rows[0]["fecharealizacion"].ToString();
                    oEeco.Contratacion = ddlcontratacion.SelectedValue;
                    oEeco.Centrogestor = DropDownList2.SelectedValue;
                    oEeco.Tipocontrato = DropDownList1.SelectedValue;
                    oEeco.Interventor = txtinterventor.Text;
                    oEeco.Observaciones = txtobservacion.Text;

                    if (txtfechaftotal.Text == "")
                    {
                        oReco.actualizar_ecoModeradorNoFF(oEeco);
                        lblmensaje.Text = "Campos modificados";
                        limpiarcampos();
                    }
                    else
                    {
                        oEeco.Fechafinaltotal = txtfechaftotal.Text.Trim();
                        if (oReco.actualizar_ecoModerador(oEeco))
                        {
                            lblmensaje.Text = "Modificaciones Guardadas";
                        }
                    }
                }
                else
                {
                    
                    oEeco.Fecharealizacion = ds3.Tables[0].Rows[0]["fecharealizacion"].ToString();
                    ds1 = oReco.consulta_ecoUsrModer(oEeco);
                    oEeco.Consecutivo = Convert.ToInt32(ds1.Tables[0].Rows[0]["consecEco"].ToString());

                    ds1 = oReco.consulta_eco1(oEeco);
                    oEeco.Fechasolicitud = ds1.Tables[0].Rows[0]["fechasolicitud"].ToString();
                    oEeco.Fase = ddlfase.SelectedValue;
                    oEeco.Fechainiciofase = txtfechafini.Text.Trim();

                    dsSesion = (DataSet)Session["ingresar"];
                    int usr;
                    usr = Convert.ToInt32(dsSesion.Tables[0].Rows[0]["Usuario"].ToString());
                    oEeco.Moderador = usr;

                    if (oReco.guardar_EcoHistorico(oEeco))
                    {
                        oEeco.Fase = ddlfase.SelectedItem.ToString();
                        oEeco.Idfase = ddlfase.SelectedIndex + 1;

                        oEeco.Contratacion = ddlcontratacion.SelectedValue;
                        oEeco.Centrogestor = DropDownList2.SelectedValue;
                        oEeco.Tipocontrato = DropDownList1.SelectedValue;
                        oEeco.Interventor = txtinterventor.Text;

                        if ((txtfechaftotal.Text == "") || (txtfechaftotal.Text == null))
                        {
                            oEeco.Observaciones = txtobservacion.Text;

                            oReco.actualizar_ecoModerFase(oEeco);
                            oReco.actualizar_ecoModeradorNoFF(oEeco);
                            lblmensaje.Text = "Campos modificados";
                            limpiarcampos();
                        }
                        else
                        {
                            oEeco.Fechafinaltotal = txtfechaftotal.Text.Trim();
                            oEeco.Observaciones = txtobservacion.Text;

                            oReco.actualizar_ecoModerFase(oEeco);
                            oReco.actualizar_ecoModerador(oEeco);
                            lblmensaje.Text = "Campos modificados";
                            limpiarcampos();
                        }

                    }

                }
            }
            catch (Exception er)
            {
                lblmensaje.Text = er.Message;
            }
        }

        public void limpiarcampos()
        {
            txtcodsig.Text = "";
            txtarea.Text = "";
            txtfaseactual.Text = "";
            txtfechafini.Text = "";
            txtfechaftotal.Text = "";
            //txtfechareacion.Text = "";
            txtinterventor.Text = "";
            txtobservacion.Text = "";
            txtsolicita.Text = "";
            ddlcontratacion.SelectedIndex = 0;
            ddlfase.SelectedIndex = 0;
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            GridView1.Visible = false;
            FileUpload1.Dispose();
            lblmensaje.Text = "";
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

        protected void UploadFile(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                ruta += "/" + txtcodsig.Text + "/";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            limpiarcampos();
        }

    }
}
