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

namespace testBancolombia.Administrador
{
    public partial class parametrosDefault : System.Web.UI.Page
    {
        CRDefaultOPTHRC orOTHR = new CRDefaultOPTHRC();
        tblCategoriaInicialDefault oeOPTHR = new tblCategoriaInicialDefault();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                consultaDef();
            }
        }

        protected void consultaDef()
        {
            try
            {
                ds = orOTHR.consultaDefaultOPTHRCini();
                txtOpDef.Text = ds.Tables[0].Rows[0]["opDefault"].ToString();
                txtTHDef.Text = ds.Tables[0].Rows[0]["thDefault"].ToString();
                txtRecDef.Text = ds.Tables[0].Rows[0]["recDefault"].ToString();
            }
            catch (Exception ex)
            {
                
                throw;
            }
        }

        protected void btnsaveDefault_Click(object sender, EventArgs e)
        {
            try
            {
                //int op, th, rc, suma;
                //op = Convert.ToInt32(txtOpDef.Text.Trim());
                //th = Convert.ToInt32(txtTHDef.Text.Trim());
                //rc = Convert.ToInt32(txtRecDef.Text.Trim());
                //suma = op + th + rc;
                //if (suma != 100)
                //{
                //    lblmensaje.Text = "La suma de los valores de Oportunidad, Talento humano y Recursos debe ser igual a 100.";
                //}
                //else
                //{

                    string fecha;
                    DateTime fechafull = DateTime.Now;
                    CultureInfo CurrentCulture = new CultureInfo("es-CO");
                    fecha = fechafull.ToShortDateString();
                    oeOPTHR.fechaCatDefault = fecha;
                    oeOPTHR.opDefault = txtOpDef.Text;
                    oeOPTHR.recDefault = txtRecDef.Text;
                    oeOPTHR.thDefault = txtTHDef.Text;
                    if (orOTHR.crearDefOpThRc(oeOPTHR))
                    {
                        lblmensaje.Text = "Se ha guardado la parametrización.";
                        consultaDef();
                    }
                //}
            }
            catch (Exception ex)
            {
                
                throw;
            }
        }

        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            try
            {
                lblmensaje.Text = "";
                consultaDef();
            }
            catch (Exception ex)
            {
                
                throw;
            }
        }

    }
}