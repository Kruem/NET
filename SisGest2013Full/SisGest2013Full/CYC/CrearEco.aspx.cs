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
    public partial class CrearEco : System.Web.UI.Page
    {
        CREco oReco = new CREco();
        CEEco oEeco = new CEEco();
        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        //DateTime dateT1 = new DateTime();
        DataSet ds3 = new DataSet(); // tblEcoModerador
        DataSet ds5 = new DataSet(); // tblEcoModFases
        DataSet dsSesion = new DataSet();
        string dia, mes, ano, ruta = "~/Data/CYC/";
        string format = "dd/mm/yyyy hh:mm tt";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                inactivarCampos();
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

        private void inactivarCampos()
        {
            txtcodsig.Enabled = false;
            ddlcontratacion.Enabled = false;
            ddlfase.Enabled = false;
            DropDownList1.Enabled = false;
            DropDownList2.Enabled = false;
            txtfechafini.Enabled = false;
            txtfechaftotal.Enabled = false;
            txtfechareacion.Enabled = false;
            txtinterventor.Enabled = false;
            txtobservacion.Enabled = false;
        }

        private void activarCampos()
        {
            txtcodsig.Enabled = true;
            ddlcontratacion.Enabled = true;
            ddlfase.Enabled = true;
            DropDownList1.Enabled = true;
            DropDownList2.Enabled = true;
            txtfechafini.Enabled = true;
            txtfechaftotal.Enabled = true;
            txtfechareacion.Enabled = true;
            txtinterventor.Enabled = true;
            txtobservacion.Enabled = true;
        }

        private void limpiarCampos()
        {
            txtconsec.Text = "";
            txtarea.Text = "";
            txtcodsig.Text = "";
            txtfaseactual.Text = "";
            txtfechafini.Text = "";
            txtfechaftotal.Text = "";
            txtfechareacion.Text = "";
            txtfeplazo.Text = "";
            txtfesolici.Text = "";
            txtinterventor.Text = "";
            txtjustif.Text = "";
            txtnecesidad.Text = "";
            txtobservacion.Text = "";
            txtsolicita.Text = "";
            txtvalor.Text = "";
            ddlcontratacion.SelectedIndex = 0;
            ddlfase.SelectedIndex = 0;
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            try
            {
                activarCampos();
                txtcodsig.Enabled = true;
                txtfechafini.Text = Convert.ToString(DateTime.Now.ToShortDateString());
                txtfechareacion.Text = Convert.ToString(DateTime.Now.ToShortDateString());
                if (txtconsec.Text != "")
                {
                    oEeco.Consecutivo = Convert.ToInt32(txtconsec.Text);
                    ds1 = oReco.consulta_eco1(oEeco);
                    txtsolicita.Text = ds1.Tables[0].Rows[0]["solicita"].ToString();
                    txtfaseactual.Text = ds1.Tables[0].Rows[0]["faseInicial"].ToString();
                    txtarea.Text = ds1.Tables[0].Rows[0]["area"].ToString();
                    txtfesolici.Text = ds1.Tables[0].Rows[0]["fechasolicitud"].ToString();
                    txtnecesidad.Text = ds1.Tables[0].Rows[0]["nesecidad"].ToString();
                    txtvalor.Text = ds1.Tables[0].Rows[0]["valor"].ToString();
                    txtjustif.Text = ds1.Tables[0].Rows[0]["justificacion"].ToString();
                    txtfeplazo.Text = ds1.Tables[0].Rows[0]["fechaplazo"].ToString();

                }
            }
            catch (Exception ex)
            {

                lblmensaje.Text = ex.Message;
            }

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtfechaftotal.Text != "")
                {
                    oEeco.Consecutivo = Convert.ToInt32(txtconsec.Text.Trim());
                    oEeco.Codseguimiento = Convert.ToInt32(txtcodsig.Text.Trim());
                    oEeco.Idfase = Convert.ToInt32(ddlfase.SelectedValue);

                    ds1 = oReco.consulta_fases(oEeco);

                    oEeco.Fase = ds1.Tables[0].Rows[0]["fase"].ToString();
                    oEeco.Fecharealizacion = txtfechareacion.Text.Trim();
                    oEeco.Fechainiciofase = txtfechafini.Text.Trim();

                    ds2 = oReco.consulta_eco1(oEeco);

                    oEeco.Fechaplazo = ds2.Tables[0].Rows[0]["fechaplazo"].ToString();
                    oEeco.Fechafinaltotal = txtfechaftotal.Text.Trim();
                    oEeco.Tipocontrato = DropDownList1.SelectedValue;
                    oEeco.Centrogestor = DropDownList2.SelectedValue;
                    oEeco.Contratacion = ddlcontratacion.SelectedValue;
                    oEeco.Interventor = txtinterventor.Text;
                    oEeco.Observaciones = txtobservacion.Text;


                    if (oReco.guardar_CrearEco(oEeco) == true)
                    {
                        if (txtfaseactual.Text == "Solicitud Contratacion")
                        {
                            string folderName = txtcodsig.Text.TrimEnd() + "/";
                            ruta += folderName;
                            Directory.CreateDirectory(Server.MapPath(ruta));
                        }

                        limpiarCampos();
                        inactivarCampos();
                        lblmensaje.Text = "Solicitud Modificada";
                    }

                }
                else
                {
                    if (txtfechaftotal.Text == "")
                    {
                        oEeco.Consecutivo = Convert.ToInt32(txtconsec.Text.Trim());
                        oEeco.Codseguimiento = Convert.ToInt32(txtcodsig.Text.Trim());
                        oEeco.Idfase = Convert.ToInt32(ddlfase.SelectedValue);

                        ds1 = oReco.consulta_fases(oEeco);

                        oEeco.Fase = ds1.Tables[0].Rows[0]["fase"].ToString();
                        oEeco.Fecharealizacion = txtfechareacion.Text.Trim();
                        oEeco.Fechainiciofase = txtfechafini.Text.Trim();

                        ds2 = oReco.consulta_eco1(oEeco);

                        oEeco.Fechaplazo = ds2.Tables[0].Rows[0]["fechaplazo"].ToString();
                        oEeco.Tipocontrato = DropDownList1.SelectedValue;
                        oEeco.Centrogestor = DropDownList2.SelectedValue;
                        oEeco.Contratacion = ddlcontratacion.SelectedValue;
                        oEeco.Interventor = txtinterventor.Text;
                        oEeco.Observaciones = txtobservacion.Text;


                        if (oReco.guardar_CrearEcoNoFFin(oEeco) == true)
                        {
                            if (txtfaseactual.Text == "Solicitud Contratacion")
                            {
                                string folderName = txtcodsig.Text.TrimEnd() + "/";
                                ruta += folderName;
                                Directory.CreateDirectory(Server.MapPath(ruta));
                            }

                            limpiarCampos();
                            inactivarCampos();
                            lblmensaje.Text = "Solicitud Modificada";
                        }

                    }
                }

            }
            catch (Exception ex)
            {
                lblmensaje.Text = ex.Message;
            }
        }


        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            inactivarCampos();
            limpiarCampos();
        }
    }
}
