using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testBancolombia.Consultas
{
    public partial class RadarRecursosCons : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarPagina();
            }
        }

        protected DataSet dsResultadosReal()
        {
            try
            {
                ds2 = (DataSet)Session["ConRecRadReal"];
                return ds2;
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected DataSet dsResultadosIdeal()
        {
            try
            {
                ds = (DataSet)Session["ConRecRadIdeal"];
                return ds;
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void CargarPagina()
        {
            try
            {
                #region traerDS
                //ideal
                ds = dsResultadosIdeal();
                //real
                ds2 = dsResultadosReal();
                #endregion

                #region calculosReales
                double total = 0, ac = 0, af = 0, fff = 0, ief = 0, pe = 0, pf = 0;
                string totReal, ac_, af_, fff_, ief_, pe_, pf_;

                ac = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultAC"].ToString());
                ac = Math.Round(ac, 2);
                ac_ = ac.ToString();
                ac_ = ac_.Replace(",", ".");

                af = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultAF"].ToString());
                af = Math.Round(af, 2);
                af_ = af.ToString();
                af_ = af_.Replace(",", ".");

                fff = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultFFF"].ToString());
                fff = Math.Round(fff, 2);
                fff_ = fff.ToString();
                fff_ = fff_.Replace(",", ".");

                ief = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultIEF"].ToString());
                ief = Math.Round(ief, 2);
                ief_ = ief.ToString();
                ief_ = ief_.Replace(",", ".");

                pe = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultPE"].ToString());
                pe = Math.Round(pe, 2);
                pe_ = pe.ToString();
                pe_ = pe_.Replace(",", ".");

                pf = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultPF"].ToString());
                pf = Math.Round(pf, 2);
                pf_ = pf.ToString();
                pf_ = pf_.Replace(",", ".");

                total = ac + af + fff + ief + pe + pf;
                total = Math.Round(total, 0);
                totReal = total.ToString();
                totReal = totReal.Replace(",", ".");
                #endregion

                #region calculosIdeales
                double rec = 0, tIdeal = 0;
                string recIdeal = "", recurs = "";
                tIdeal = Convert.ToDouble(ds.Tables[0].Rows[0]["recDefault"].ToString());
                rec = tIdeal;

                recIdeal = rec.ToString();
                recIdeal = recIdeal.Replace(",", ".");

                tIdeal = tIdeal / 6.0;
                tIdeal = Math.Round(tIdeal, 4);
                recurs = tIdeal.ToString();
                recurs = recurs.Replace(",", ".");
                #endregion

                #region Calificacion
                // real total ac tec esc ief merc inn
                // ideal tIdeal==>total parcial
                double califTot = 0, calif1 = 0, calif2 = 0, calif3 = 0, calif4 = 0, calif5 = 0, calif6 = 0;

                #region calificacionPropuestaValor
                calif1 = ((af * 100) / tIdeal);
                calif1 = Math.Round(calif1, 2);
                #endregion

                #region calificacionPropTecnologica
                calif2 = ((ief * 100) / tIdeal);
                calif2 = Math.Round(calif2, 2);
                #endregion

                #region calificacionInnovacion
                calif3 = ((pf * 100) / tIdeal);
                calif3 = Math.Round(calif3, 2);
                #endregion

                #region calificacionMercado
                calif4 = ((pe * 100) / tIdeal);
                calif4 = Math.Round(calif4, 2);
                #endregion

                #region calificacionPropIntelectual
                calif5 = ((fff * 100) / tIdeal);
                calif5 = Math.Round(calif5, 2);
                #endregion

                #region calificacionEscalabilidad
                calif6 = ((ac * 100) / tIdeal);
                calif6 = Math.Round(calif6, 2);
                #endregion

                #region calificacionRealTotal
                califTot = ((total * 100) / rec);
                califTot = Math.Round(califTot, 2);


                if ((califTot < 65) && (califTot > 0))
                {
                    lblGraficar.Text = 1.ToString();
                }
                else
                {
                    if ((califTot >= 65) && (califTot < 80))
                    {
                        lblGraficar.Text = 2.ToString();
                    }
                    else
                    {
                        if ((califTot >= 80) && (califTot <= 100))
                        {
                            lblGraficar.Text = 3.ToString();
                        }
                    }
                }
                #endregion

                #endregion

                #region mandarResultados
                //totales
                lblTotIdeal.Text = recIdeal;
                lblTotReal.Text = totReal;

                //ideales
                lblIdealaf.Text = recurs;
                lblIdealief.Text = recurs;
                lblIdealpf.Text = recurs;
                lblIdealpe.Text = recurs;
                lblIdealfff.Text = recurs;
                lblIdealac.Text = recurs;

                //reales
                lblRealaf.Text = af_;
                lblRealief.Text = ief_;
                lblRealpf.Text = pf_;
                lblRealpe.Text = pe_;
                lblRealfff.Text = fff_;
                lblRealac.Text = ac_;

                //calificaciones
                lblcalif1.Text = calif1.ToString();
                lblcalif2.Text = calif2.ToString();
                lblcalif3.Text = calif3.ToString();
                lblcalif4.Text = calif4.ToString();
                lblcalif5.Text = calif5.ToString();
                lblcalif6.Text = calif6.ToString();
                lblcalifT.Text = califTot.ToString();

                //Nombre empresa
                lblempresa.Text = ds2.Tables[0].Rows[0]["nombreEmpresaApps"].ToString();
                #endregion


            }
            catch (Exception ex)
            {

                throw;
            }
        }

    }
}