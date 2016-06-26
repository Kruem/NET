using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;
using System.Globalization;

namespace testBancolombia.Empresasbanc
{
    public partial class EmpresaB : System.Web.UI.Page
    {
        tblEmpresa euempresa = new tblEmpresa();
        CRempresa rempresa = new CRempresa();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlPaises.Items.Add("Seleccione");
                List<string> listas = carregaListaPaises();
                foreach (string lista in listas)
                {
                    ddlPaises.Items.Add(lista);
                }
                ddlPaises.DataBind();
                divcomuna.Attributes.Add("style", "visibility:hidden;");

            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            try
            {
                string fecha, cel, univ, nombreE, descrip, empty = "", face, tw, pgw;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();
                lblmensaje.Text = fecha;
                nombreE = txtempresa.Text.Trim().ToUpper();
                descrip = txtdescripcion.Text.Trim();

                if (ddlUniversidad.SelectedItem.ToString() == "Otro")
                {
                    univ = txtUniOtro.Text.Trim();
                }
                else
                {
                    univ = ddlUniversidad.SelectedItem.ToString();
                }

                if (txtpagweb.Text.Trim() == "")
                {
                    pgw = "";
                }
                else
                {
                    pgw = txtpagweb.Text.Trim();
                }

                if (txttwitter.Text.Trim() == "")
                {
                    tw = "";
                }
                else
                {
                    tw = txttwitter.Text.Trim();
                }

                if (txtface.Text.Trim() == "")
                {
                    face = "";
                }
                else
                {
                    face = txtface.Text.Trim();
                }

                if (txtxcelular.Text.Trim() == "")
                {
                    cel = "";
                }
                else
                {
                    cel = txtxcelular.Text.Trim();
                }

                if (ddlEstado_C.SelectedItem.ToString() == "Si")
                {
                    euempresa.figuraJuridicaApps = ddlfjuridica.SelectedItem.ToString();
                    euempresa.sectEconoEmpresApps = ddlSector_E.SelectedItem.ToString();
                    euempresa.fechaConstituApps = txtFecha_Inicio.Text.Trim();
                    euempresa.NitApps = txtnit.Text.Trim();

                }
                else
                {
                    euempresa.figuraJuridicaApps = empty;
                    euempresa.sectEconoEmpresApps = empty;
                    euempresa.fechaConstituApps = empty;
                    euempresa.NitApps = empty;
                }

                euempresa.nombreEmpresaApps = nombreE;
                
                //
                euempresa.universidad = univ;
                euempresa.sitioWebApps = pgw;
                euempresa.twiterApps = tw;
                euempresa.facebookApps = face;
                euempresa.paisAppa = ddlPaises.SelectedValue.ToString().Trim();
                euempresa.estadoApps = txtDepto.Text.Trim();
                euempresa.municipioApps = txtMunicipio.Text.Trim();
                euempresa.comunaApps = ddlComuna.SelectedItem.ToString();
                euempresa.direccionApps = txtdireccion.Text.Trim();
                euempresa.telefonoApps = txttelefono.Text.Trim();
                euempresa.celularApps = cel;
                euempresa.nroSociosApps = ddlNum_socio.SelectedItem.ToString();
                euempresa.representanteLegalApps = txtrepres.Text.Trim();
                euempresa.faseAcompActualApps = empty;
                euempresa.appsCo = 0;
                euempresa.bancolombia = 1;
                euempresa.fechaRegistro = fecha;
                euempresa.observ = descrip;


                if (rempresa.CrearEmpresa(euempresa))
                {
                    lblmensaje.Text = "Registro exitoso";
                }
                else
                {
                    lblmensaje.Text = "Error al crear registro";
                }


            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        protected void btnconsultaEmp_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtempresa.Text == "")
                {
                    lblmensaje.Text = "Indique el nombre de la empresa.";
                    txtempresa.Focus();
                }
                else
                {
                    string nombreE = txtempresa.Text.Trim().ToUpper();
                    euempresa.nombreEmpresaApps = nombreE;
                    ds = rempresa.consultarEmpresa(euempresa);


                    if (ds.Tables[0].Rows.Count != 0)
                    {
                        string fecha, sectEcono, nit, fjuridica, pais, depto, ciudad, comuna, direcc, nroSocios, repLegal, univ, tel, cel, urlWeb, faceb, twitt, observ;

                        #region Traer Datos
                        fecha = ds.Tables[0].Rows[0]["fechaConstituApps"].ToString().Trim();
                        sectEcono = ds.Tables[0].Rows[0]["sectEconoEmpresApps"].ToString().Trim();
                        nit = ds.Tables[0].Rows[0]["NitApps"].ToString().Trim();
                        pais = ds.Tables[0].Rows[0]["paisAppa"].ToString().Trim();
                        depto = ds.Tables[0].Rows[0]["estadoApps"].ToString().Trim();
                        ciudad = ds.Tables[0].Rows[0]["municipioApps"].ToString().Trim();
                        comuna = ds.Tables[0].Rows[0]["comunaApps"].ToString().Trim();
                        direcc = ds.Tables[0].Rows[0]["direccionApps"].ToString().Trim();
                        nroSocios = ds.Tables[0].Rows[0]["nroSociosApps"].ToString().Trim();
                        repLegal = ds.Tables[0].Rows[0]["representanteLegalApps"].ToString().Trim();
                        univ = ds.Tables[0].Rows[0]["universidad"].ToString().Trim();
                        tel = ds.Tables[0].Rows[0]["telefonoApps"].ToString().Trim();
                        cel = ds.Tables[0].Rows[0]["celularApps"].ToString().Trim();
                        urlWeb = ds.Tables[0].Rows[0]["sitioWebApps"].ToString().Trim();
                        faceb = ds.Tables[0].Rows[0]["facebookApps"].ToString().Trim();
                        twitt = ds.Tables[0].Rows[0]["twiterApps"].ToString().Trim();
                        observ = ds.Tables[0].Rows[0]["observ"].ToString().Trim();
                        fjuridica = ds.Tables[0].Rows[0]["figuraJuridicaApps"].ToString();
                        #endregion

                        // habilitar campos
                        ddlPaises.Enabled = true;
                        txtDepto.Enabled = true;
                        txtMunicipio.Enabled = true;
                        txtdescripcion.Enabled = true;
                        txtdireccion.Enabled = true;
                        ddlNum_socio.Enabled = true;
                        txtrepres.Enabled = true;
                        txttelefono.Enabled = true;
                        txtxcelular.Enabled = true;
                        txtpagweb.Enabled = true;
                        txtface.Enabled = true;
                        txttwitter.Enabled = true;
                        // habilitar campos

                        #region if-Constituida
                        if (((fecha == null) || (fecha == "")) && ((fjuridica == null) || (fjuridica == "")))
                        {
                            ddlEstado_C.SelectedIndex = 2;
                            ddlEstado_C.Enabled = true;
                        }
                        else
                        {

                            int n;
                            if (fjuridica == "SAS")
                            {
                                n = 1;
                                ddlfjuridica.SelectedIndex = n;
                            }
                            else if (fjuridica == "SA")
                            {
                                n = 2;
                                ddlfjuridica.SelectedIndex = n;
                            }
                            else if (fjuridica == "LTDA")
                            {
                                n = 3;
                                ddlfjuridica.SelectedIndex = n;
                            }
                            else if (fjuridica == "ESAL")
                            {
                                n = 4;
                                ddlfjuridica.SelectedIndex = n;
                            }
                            else if (fjuridica == "Otro")
                            {
                                ddlfjuridica.Visible = false;
                                txtfigjurid.Visible = true;
                                txtfigjurid.Text = fjuridica;
                            }

                            ddlEstado_C.SelectedIndex = 1;
                            txtFecha_Inicio.Text = ds.Tables[0].Rows[0]["fechaConstituApps"].ToString();
                            txtnit.Text = ds.Tables[0].Rows[0]["NitApps"].ToString();
                            ddlSector_E.SelectedValue = sectEcono;
                        }
                        #endregion

                        ddlPaises.SelectedValue = pais;
                        txtDepto.Text = depto;
                        txtMunicipio.Text = ciudad;
                        if (pais == "Colombia")
                        {
                            divcomuna.Attributes.Add("style", "visibility:visible;");
                            ddlComuna.Enabled = true;
                            ddlComuna.SelectedValue = comuna;
                        }

                        txtdireccion.Text = direcc;
                        txtdescripcion.Text = observ;
                        ddlNum_socio.SelectedValue = nroSocios;
                        txtrepres.Text = repLegal;

                        int sw = 0;
                        foreach (ListItem item in ddlUniversidad.Items)
                        {
                            if (item.Value == univ)
                            {
                                item.Selected = true;
                                if (item.Selected == true)
                                {
                                    ddlUniversidad.Visible = true;
                                    txtUniOtro.Visible = false;
                                    ddlUniversidad.SelectedValue = univ;
                                    ddlUniversidad.Enabled = true;
                                    sw = 1;
                                }
                                break;
                            }

                            if (sw == 0)
                            {
                                ddlUniversidad.Visible = false;
                                txtUniOtro.Text = univ;
                                txtUniOtro.Visible = true;
                            }

                        }
                        txttelefono.Text = tel;
                        txtxcelular.Text = cel;
                        txtpagweb.Text = urlWeb;
                        txtface.Text = faceb;
                        txttwitter.Text = twitt;

                        lblmensaje.Text = "";
                        btnmodificar.Visible = true;
                        btnguardar.Visible = false;

                    }
                    else
                    {
                        // habilitar campos
                        ddlSector_E.Enabled = true;
                        ddlPaises.Enabled = true;
                        ddlEstado_C.Enabled = true;
                        txtMunicipio.Enabled = true;
                        ddlComuna.Enabled = true;
                        txtdescripcion.Enabled = true;
                        txtdireccion.Enabled = true;
                        ddlNum_socio.Enabled = true;
                        txtrepres.Enabled = true;
                        ddlUniversidad.Enabled = true;
                        txttelefono.Enabled = true;
                        txtxcelular.Enabled = true;
                        txtpagweb.Enabled = true;
                        txtface.Enabled = true;
                        txttwitter.Enabled = true;
                        // habilitar campos
                        
                    }
                    txtempresa.Enabled = false;
                    btnbuscar.Enabled = false;
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        public void limpiar()
        {
            txtempresa.Text = "";
            txtdescripcion.Text = "";
            txtdireccion.Text = "";
            txtface.Text = "";
            txtFecha_Inicio.Text = "";
            txtMunicipio.Text = "";
            txtnit.Text = "";
            txtpagweb.Text = "";
            //txtPais.Text = "";
            txtrepres.Text = "";
            txttelefono.Text = "";
            txttwitter.Text = "";
            txtUniOtro.Text = "";
            txtxcelular.Text = "";
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
            lblmensaje.Text = "";
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        public static List<string> carregaListaPaises()
        {
            //cria uma lista de paises
            List<string> CulturaLista = new List<string>();
            //Obtem a cultura especifica a partir da classe CultureInfo
            CultureInfo[] getCultureInfo = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
            foreach (CultureInfo getCulture in getCultureInfo)
            {
                //cria um objeto da classe RegionInfo
                RegionInfo GetRegionInfo = new RegionInfo(getCulture.LCID);
                //Incluir cada nome de pais no arraylist
                if (!(CulturaLista.Contains(GetRegionInfo.DisplayName)))
                {
                    CulturaLista.Add(GetRegionInfo.DisplayName);
                }
            }
            //ordena o array usando o método sort para obter os paises em ordem alfabética
            CulturaLista.Sort();
            //retorna a lista de paises
            return CulturaLista;
        }

        protected void ddlEstado_C_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (ddlEstado_C.SelectedValue.ToString().Trim() == "Si")
                {
                    txtFecha_Inicio.Enabled = true;
                    ddlfjuridica.Enabled = true;
                    txtnit.Enabled = true;
                    ddlSector_E.Enabled = true;
                }
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void ddlfjuridica_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (ddlfjuridica.SelectedValue.ToString().Trim() == "Otro")
                {
                    ddlfjuridica.Visible = false;
                    txtfigjurid.Visible = true;
                }
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void ddlSector_E_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (ddlSector_E.SelectedValue.ToString().Trim() == "Otro")
                {
                    ddlSector_E.Visible = false;
                    txtsector.Visible = true;
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void ddlComuna_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (ddlComuna.SelectedValue.ToString().Trim() == "Otro")
                {
                    ddlComuna.Visible = false;
                    txtcomuna.Visible = true;
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void ddlUniversidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (ddlUniversidad.SelectedValue.ToString().Trim() == "Otro")
                {
                    ddlUniversidad.Visible = false;
                    txtUniOtro.Visible = true;
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void ddlPaises_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (ddlPaises.SelectedValue.ToString().Trim() == "Colombia")
                {
                    txtDepto.Enabled = true;
                    divcomuna.Attributes.Add("style", "visibility:visible;");
                }
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void btnmodificar_Click(object sender, EventArgs e)
        {
            try
            {
                string cel, univ, nombreE, descrip, empty = "", face, tw, pgw;
                nombreE = txtempresa.Text.Trim().ToUpper();
                descrip = txtdescripcion.Text.Trim();

                if (ddlUniversidad.SelectedItem.ToString() == "Otro")
                {
                    univ = txtUniOtro.Text.Trim();
                }
                else
                {
                    univ = ddlUniversidad.SelectedItem.ToString();
                }

                if (txtpagweb.Text.Trim() == "")
                {
                    pgw = "";
                }
                else
                {
                    pgw = txtpagweb.Text.Trim();
                }

                if (txttwitter.Text.Trim() == "")
                {
                    tw = "";
                }
                else
                {
                    tw = txttwitter.Text.Trim();
                }

                if (txtface.Text.Trim() == "")
                {
                    face = "";
                }
                else
                {
                    face = txtface.Text.Trim();
                }

                if (txtxcelular.Text.Trim() == "")
                {
                    cel = "";
                }
                else
                {
                    cel = txtxcelular.Text.Trim();
                }

                if (ddlEstado_C.SelectedItem.ToString() == "Si")
                {
                    euempresa.figuraJuridicaApps = ddlfjuridica.SelectedItem.ToString();
                    euempresa.sectEconoEmpresApps = ddlSector_E.SelectedItem.ToString();
                    euempresa.fechaConstituApps = txtFecha_Inicio.Text.Trim();
                    euempresa.NitApps = txtnit.Text.Trim();

                }
                else
                {
                    euempresa.figuraJuridicaApps = empty;
                    euempresa.sectEconoEmpresApps = empty;
                    euempresa.fechaConstituApps = empty;
                    euempresa.NitApps = empty;
                }

                euempresa.nombreEmpresaApps = nombreE;
                //
                euempresa.universidad = univ;
                euempresa.sitioWebApps = pgw;
                euempresa.twiterApps = tw;
                euempresa.facebookApps = face;
                euempresa.paisAppa = ddlPaises.SelectedValue.ToString().Trim();
                euempresa.estadoApps = txtDepto.Text.Trim();
                euempresa.municipioApps = txtMunicipio.Text.Trim();
                euempresa.comunaApps = ddlComuna.SelectedItem.ToString();
                euempresa.direccionApps = txtdireccion.Text.Trim();
                euempresa.telefonoApps = txttelefono.Text.Trim();
                euempresa.celularApps = cel;
                euempresa.nroSociosApps = ddlNum_socio.SelectedItem.ToString();
                euempresa.representanteLegalApps = txtrepres.Text.Trim();
                euempresa.faseAcompActualApps = empty;
                euempresa.appsCo = 0;
                euempresa.bancolombia = 1;
                euempresa.observ = txtdescripcion.Text.Trim();

                if (rempresa.ModificarEmpresa(euempresa))
                {
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
            }
            catch (Exception er)
            {

                throw;
            }
        }
    }
}