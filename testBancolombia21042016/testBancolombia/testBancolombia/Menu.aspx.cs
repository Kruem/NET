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

namespace testBancolombia
{
    public partial class Menu : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        DataSet dsSession = new DataSet();
        tblResultxParam oEresxpar = new tblResultxParam();
        CRtblResultxParam oRresxpar = new CRtblResultxParam();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CrearDefaultEmpresa();
            }
        }

        protected DataSet dsDatosEmpresa()
        {
            try
            {
                dsSession = (DataSet)Session["dsParamIND"];
                return dsSession;
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void CrearDefaultEmpresa()
        {
            try
            {
                llenarEntidades();
                oRresxpar.crearDefaultEmpresa(oEresxpar);
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void llenarEntidades()
        {
            try
            {

                string fecha;
                DateTime fechafull = DateTime.Now;
                CultureInfo CurrentCulture = new CultureInfo("es-CO");
                fecha = fechafull.ToShortDateString();

                dsSession = dsDatosEmpresa();
                oEresxpar.idEmpresa = Convert.ToInt32(dsSession.Tables[0].Rows[0]["idEmpresaDef"].ToString());
                oEresxpar.idparam = Convert.ToInt32(dsSession.Tables[0].Rows[0]["consecCategDefault"].ToString());
                oEresxpar.fechaparam = dsSession.Tables[0].Rows[0]["fechaDxE"].ToString();
                oEresxpar.fechaOtra = fecha;
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void btnOptPrueba_Click(object sender, EventArgs e)
        {
            try
            {
                llenarEntidades();
                oEresxpar.nro = 1;

                if (oRresxpar.ModificarDefaultEmpresa(oEresxpar))
                {
                    Response.Redirect("MenuOportunidad.aspx");
                }


            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void btnTHPrueba_Click(object sender, EventArgs e)
        {
            try
            {
                llenarEntidades();
                oEresxpar.nro = 2;

                if (oRresxpar.ModificarDefaultEmpresa(oEresxpar))
                {
                    Response.Redirect("MenuTHumano.aspx");
                }


            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void btnRecPrueba_Click(object sender, EventArgs e)
        {
            try
            {
                llenarEntidades();
                oEresxpar.nro = 3;

                if (oRresxpar.ModificarDefaultEmpresa(oEresxpar))
                {
                    Response.Redirect("MenuRecursos.aspx");
                }


            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void btnCargarArch_Click(object sender, EventArgs e)
        {

        }
    }
}