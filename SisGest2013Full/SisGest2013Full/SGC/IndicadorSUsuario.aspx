<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/SGC.Master" AutoEventWireup="true" CodeBehind="IndicadorSUsuario.aspx.cs" Inherits="SisGest2013Full.SGC.IndicadorSUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="box" style="border-radius:10px;">
            <form id="Form1" role="form" runat="server">
            <div class="row">
                <table class=" col-md-3 table-bordered table-condensed table-hover">
                    <tr>
                        <th>
                            <label>
                                Fecha</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtmes" onchange="CalcularGrafico();" runat="server" class="tamanotxt"
                                required placeholder="05/05/2015"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox38" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox39" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox40" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox41" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox42" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox43" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox44" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox45" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox46" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox47" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox48" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox49" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox50" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox51" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox52" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox53" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox54" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox55" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                titulo</label>
                        </th>
                        <th>
                            titulo
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox56" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox57" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy" required></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table class=" col-lg-offset-2 col-lg-pull-6 table-bordered table-condensed table-hover">
                    <tr>
                        <th colspan="6">
                            <h4 class="text-center">
                                RESULTADOS ULTIMAS SEIS MEDICIONES</h4>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label>
                                Periodo</label>
                        </th>
                        <th>
                            <label>
                                Suma Total</label>
                        </th>
                        <th>
                            <label>
                                N° Total Encuestados</label>
                        </th>
                        <th>
                            <label>
                                Resultados</label>
                        </th>
                        <th class="col-md-1">
                            <label>
                                Meta</label>
                        </th>
                        <th>
                            <label>
                                Analisis</label>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPeriodo1" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                data-date-format="dd/mm/yyyy"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtst1" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnt1" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtre1" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblmeta1" class="form-control" runat="server">95</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtA1" onchange="CalcularGrafico();" runat="server" required class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPeriodo2" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                data-date-format="dd/mm/yyyy" Height="30" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtst2" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnt2" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtre2" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblmeta2" class="form-control" runat="server">95</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtA2" onchange="CalcularGrafico();" runat="server" required class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPeriodo3" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                data-date-format="dd/mm/yyyy" Height="30" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtst3" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnt3" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtre3" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblmeta3" class="form-control" runat="server">95</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtA3" onchange="CalcularGrafico();" runat="server" required class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPeriodo4" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                data-date-format="dd/mm/yyyy" Height="30" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtst4" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnt4" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtre4" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblmeta4" class="form-control" runat="server">95</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtA4" onchange="CalcularGrafico();" runat="server" required class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPeriodo5" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                data-date-format="dd/mm/yyyy" Height="30" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtst5" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnt5" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtre5" onchange="CalcularGrafico();" runat="server" class="tamanotxt form-control"
                                required></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblmeta5" class="form-control" runat="server">95</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtA5" onchange="CalcularGrafico();" runat="server" required class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
        </div>
    </div>
    <%--<script language="javascript" type="text/javascript">

        $('#<%= txtPeriodo1.ClientID %>').datepicker().on('changeDate', function(ev) {
            CalcularGrafico();
        });

        $('#<%= txtPeriodo2.ClientID %>').datepicker().on('changeDate', function(ev) {
            CalcularGrafico();
        });

        $('#<%= txtPeriodo3.ClientID %>').datepicker().on('changeDate', function(ev) {
            CalcularGrafico();
        });

        $('#<%= txtPeriodo4.ClientID %>').datepicker().on('changeDate', function(ev) {
            CalcularGrafico();
        });

        $('#<%= txtPeriodo5.ClientID %>').datepicker().on('changeDate', function(ev) {
            CalcularGrafico();
        });

        $('#<%= txtfecha1.ClientID %>').datepicker().on('changeDate', function(ev) {
            //CalcularGrafico();
        });

        $('#<%= txtfecha2.ClientID %>').datepicker().on('changeDate', function(ev) {
            //CalcularGrafico();
        });

        $('#<%= txtfecha3.ClientID %>').datepicker().on('changeDate', function(ev) {
            //CalcularGrafico();
        });
        $('#<%= txtmes.ClientID %>').datepicker().on('changeDate', function(ev) {
            //CalcularGrafico();
        });

        function CalcularGrafico() {
            // Periodos
            var P1, P2, P3, P4, P5;

            // Valores de la columna 1
            var st1, st2, st3, st4, st5;

            // Valores de la columna 2
            var nt1, nt2, nt3, nt4, nt5;

            // Resultados
            var r11 = 0, r22 = 0, r33 = 0, r44 = 0, r55 = 0;

            // Resultados Redondeados
            var rr11 = 0, rr22 = 0, rr33 = 0, rr44 = 0, rr55 = 0;


            //variable meta
            var meta;

            // Capturamos los valores de los periodos:

            P1 = $('#<%= txtPeriodo1.ClientID %>').val();
            P2 = $('#<%= txtPeriodo2.ClientID %>').val();
            P3 = $('#<%= txtPeriodo3.ClientID %>').val();
            P4 = $('#<%= txtPeriodo4.ClientID %>').val();
            P5 = $('#<%= txtPeriodo5.ClientID %>').val();

            // Capturamos los valores de la columna 1

            st1 = $('#<%= txtst1.ClientID %>').val();
            st2 = $('#<%= txtst2.ClientID %>').val();
            st3 = $('#<%= txtst3.ClientID %>').val();
            st4 = $('#<%= txtst4.ClientID %>').val();
            st5 = $('#<%= txtst5.ClientID %>').val();

            // Capturamos los valores de la columna 2

            nt1 = $('#<%= txtnt1.ClientID %>').val();
            nt2 = $('#<%= txtnt2.ClientID %>').val();
            nt3 = $('#<%= txtnt3.ClientID %>').val();
            nt4 = $('#<%= txtnt4.ClientID %>').val();
            nt5 = $('#<%= txtnt5.ClientID %>').val();


            //capturando meta
            meta = $('#<%= txtmeta.ClientID %>').val();

            // Calculamos los resultados

            if ($.isNumeric(st1) && $.isNumeric(nt1)) {
                r11 = (st1 / nt1).toFixed(2);
                $('#<%= txtre1.ClientID %>').val(r11);
            }

            if ($.isNumeric(st2) && $.isNumeric(nt2)) {
                r22 = (st2 / nt2).toFixed(2);
                $('#<%= txtre2.ClientID %>').val(r22);
            }

            if ($.isNumeric(st3) && $.isNumeric(nt3)) {
                r33 = (st3 / nt3).toFixed(2);
                $('#<%= txtre3.ClientID %>').val(r33);
            }

            if ($.isNumeric(st4) && $.isNumeric(nt4)) {
                r44 = (st4 / nt4).toFixed(2);
                $('#<%= txtre4.ClientID %>').val(r44);
            }

            if ($.isNumeric(st5) && $.isNumeric(nt5)) {
                r55 = (st5 / nt5).toFixed(2);
                $('#<%= txtre5.ClientID %>').val(r55);
            }

            // Resultados Redondeados a %
            rr11 = r11 * 100;
            rr22 = r22 * 100;
            rr33 = r33 * 100;
            rr44 = r44 * 100;
            rr55 = r55 * 100;

            var lineChartData = {
                labels: [P1, P2, P3, P4, P5],
                datasets: [
				{
				    fillColor: "rgba(86,222,67,0.5)",
				    strokeColor: "rgba(44,157,28,1)",
				    pointColor: "rgba(0,0,0,1)",
				    pointStrokeColor: "#fff",
				    data: [rr11, rr22, rr33, rr44, rr55]
				},
				{
				    fillColor: "rgba(0,0,0,0)",
				    strokeColor: "rgba(151,187,205,1)",
				    pointColor: "rgba(151,187,205,1)",
				    pointStrokeColor: "#fff",
				    data: [meta, meta, meta, meta, meta]
				}
			]

            }
            var myLine = new Chart(document.getElementById("graficogenerado").getContext("2d")).Line(lineChartData);
        }
        
        
    </script>--%>
</asp:Content>