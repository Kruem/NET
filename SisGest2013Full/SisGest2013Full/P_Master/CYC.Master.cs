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

namespace SisGest2013Full.P_Master
{
    public partial class CYC : System.Web.UI.MasterPage
    {
        CRusuario objRegusr = new CRusuario();
        Cusuario objEntusr = new Cusuario();
        DataSet dsSesion = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}