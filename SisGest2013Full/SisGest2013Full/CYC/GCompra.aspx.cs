using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;
using System.Net.Mail;
using System.Net.Mime;

namespace SisGest2013Full.CYC
{
    public partial class GCompra : System.Web.UI.Page
    {
        CEEco objeco = new CEEco();
        CREco objreco = new CREco();
        Cusuario oEusr = new Cusuario();
        CRusuario oRusr = new CRusuario();
        DataSet ds = new DataSet();
        DataSet dsSesion = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                validarUsuario();
            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            dsSesion = (DataSet)Session["ingresar"];
            int tipo, usr;
            string seccion, correo, contra, nomb, apell, completo;
            tipo = int.Parse(dsSesion.Tables[0].Rows[0]["Tipo"].ToString());
            seccion = dsSesion.Tables[0].Rows[0]["Seccion"].ToString();
            usr = int.Parse(dsSesion.Tables[0].Rows[0]["Usuario"].ToString());
            contra = dsSesion.Tables[0].Rows[0]["Contrasena"].ToString();
            correo = dsSesion.Tables[0].Rows[0]["Correo"].ToString();
            nomb = dsSesion.Tables[0].Rows[0]["Nombre"].ToString();
            apell = dsSesion.Tables[0].Rows[0]["Apellido"].ToString();
            completo = nomb + " " + apell;

            objeco.Fechasolicitud = DateTime.Now.ToShortDateString();
            objeco.Area = Convert.ToString(DropDownList1.SelectedValue);
            objeco.Justificacion = txtjustificacion.Text;
            objeco.Nesecidad = txtnesecidad.Text;
            objeco.Valor = txtvalor.Text;
            objeco.Fechaplazo = txtfecha.Text.Trim();
            objeco.FaseInicial = "Solicitud Contratacion";
            oEusr.Usuario = usr;
            oEusr.Contrasena = contra;
            objeco.Solicita = correo;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(correo);// correo de quien envia

            string tabla = "<html><head><title>Solicitud Eco</title><link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css' />" +
            "<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script></head><body><div class='content'>" +
            "<div class='box'><div class='table-responsive'><table class='table table-striped table-condensed'>" +
            "<thead><tr><th colspan='4' style='text-align: center;'><img alt='head' style='width: 100%; height: 100%;'" +
            "src='http://i1026.photobucket.com/albums/y327/buzonsig/eco_correo_zpspbsoqc7n.jpg' />" +
            "</th></tr></thead><tbody><tr><td colspan='4' style='width: 100%;'><label>Remitente: </label><p>" + completo + "</p><hr />" +
            "</td></tr><tr><td colspan='4' style='width: 100%;'><label>Correo de contacto: </label><p>" + correo + "</p><hr />" +
            "</td></tr><tr><td colspan='4' style='width: 100%;'><label>Proceso: </label><p>" + Convert.ToString(DropDownList1.SelectedItem) + "</p><hr /></td></tr><tr>" +
            "<td colspan='4' style='width: 100%;'><label>Plazo Aproximado: </label><p>" + txtfecha.Text + "</p><hr />" +
            "</td></tr><tr><td colspan='4' style='width: 100%;'><label>Necesidad: </label><p>" + txtnesecidad.Text + "</p>" +
            "<hr /></td></tr><tr><td colspan='4' style='width: 100%;'><label>Justificación: </label><p>" + txtjustificacion.Text + "</p>" +
            "</td></tr></tbody><tfoot><tr><td colspan='4' style='text-align: center;'><img alt='foot' style='width: 100%; height: 100%;'" +
            "src='http://i1026.photobucket.com/albums/y327/buzonsig/footer_zps6xiabso0.png' /></td></tr></tfoot></table></div></div>" +
            "</div></body></html>";

            msg.To.Add("buzonsig@parquedelemprendimiento.com"); //correo destinatario de llegada
            msg.Subject = "Solicitud de ECO. ";//asunto 
            msg.Body = tabla.ToString();

            msg.IsBodyHtml = true;


            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential networkcred = new System.Net.NetworkCredential();
            networkcred.UserName = "buzonsig@parquedelemprendimiento.com";//CORREO CONTROL
            networkcred.Password = "buzonparque123";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkcred;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(msg);



            if (objreco.guardar_eco(objeco) == true)
            {
                DropDownList1.SelectedIndex = 0;
                txtvalor.Text = "";
                txtfecha.Text = "";
                txtjustificacion.Text = "";
                txtnesecidad.Text = "";

                lblmensaje.Text = "Registro guardado";
            }
            else
            {
                lblmensaje.Text = "Registro no guardado";
            }


            string script = "MostarrMensaje('Indicador registrado','Se ha guardado la información satisfactoriamente',1);";
            ClientScript.RegisterStartupScript(this.GetType(), "MensajeUsuario", script, true);


        }

        private void validarUsuario()
        {
            dsSesion = (DataSet)Session["ingresar"];
            int tipo;
            string seccion;
            tipo = int.Parse(dsSesion.Tables[0].Rows[0]["Tipo"].ToString());
            seccion = dsSesion.Tables[0].Rows[0]["Seccion"].ToString();
        }
    }
}
