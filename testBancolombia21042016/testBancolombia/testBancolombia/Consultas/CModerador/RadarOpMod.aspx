<%@ Page Title="" Language="C#" MasterPageFile="~/master/ModConsultas.Master" AutoEventWireup="true" CodeBehind="RadarOpMod.aspx.cs" Inherits="testBancolombia.Consultas.CModerador.RadarOpMod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <link href="../../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/datepicker.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../../css/btn.css" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../../js/Chart.js"></script>
    <script src="../../js/jquery.quicksearch.js"></script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg" id="page-top">
        <form runat="server" class="form-horizontal">
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="col-md-12 inner">
                        <div class="row">
                            <div class="col-md-12 text-box">
                                <h2><small>Resultados Oportunidad</small></h2>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <p>
                                        Empresa:&nbsp;
                                <asp:Label ID="lblempresa" runat="server" Text=""></asp:Label>
                                    </p>
                                    <p hidden="hidden">
                                        <asp:Label ID="lblGraficar" runat="server" Text=""></asp:Label></p>
                                </div>
                                <br />
                                <hr />
                                <div class="col-lg-6">
                                    <br />
                                    <br />
                                    <table id="tresult" class="table table-condensed">
                                        <thead class="text-center">
                                            <tr>
                                                <th><h5>Oportunidad</h5></th>
                                                <th><h5>Ideal %</h5></th>
                                                <th><h5>Calificación %</h5></th>
                                                <th><h5>Real %</h5></th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-left"><h5>Propuesta de Valor</h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblIdealpdv" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblcalif1" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblRealpdv" runat="server" Text=""></asp:Label></h5></td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-left"><h5>Tecnología</h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblIdealtec" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblcalif2" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblRealtec" runat="server" Text=""></asp:Label></h5></td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-left"><h5>Innovación</h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblIdealinn" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblcalif3" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                <h5><asp:Label ID="lblRealinn" runat="server" Text=""></asp:Label></h5></td>
                                                </tr>
                                            <tr>
                                                <td class="text-left"><h5>Mercado</h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblIdealmer" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblcalif4" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblRealmer" runat="server" Text=""></asp:Label></h5></td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-left"><h5>Propiedad Intelectual</h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblIdealpri" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblcalif5" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblRealpri" runat="server" Text=""></asp:Label></h5></td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="text-left"><h5>Escalabilidad</h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblIdealesc" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblcalif6" runat="server" Text=""></asp:Label></h5></td>
                                                <td>
                                                    <h5><asp:Label ID="lblRealesc" runat="server" Text=""></asp:Label></h5></td>
                                                
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td><h5>Totales</h5>
                                                </td>
                                                <td class="text-center">
                                                    <h5><asp:Label ID="lblTotIdeal" runat="server"></asp:Label></h5></td>
                                                <td class="text-center">
                                                    <h5><asp:Label ID="lblcalifT" runat="server"></asp:Label></h5></td>                                                    
                                                <td class="text-center">
                                                    <h5><asp:Label ID="lblTotReal" runat="server"></asp:Label></h5></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12 col-md-offset-0">
                                        <div style="width: 100%">
                                            <canvas id="canvas" height="450" width="450"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <br />
                        <div class="row">
                            <div class="col-md-12">
                                <h3>Porcentaje de cumplimiento</h3>
                                <img src="../../images/Línea.png" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-3 col-md-offset-9">
                                    <div class="">
                                        <a href="MenuConsultaMod.aspx" class="btn btn-info btn-lg">
                                            <center>Regresar</center>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
        </form>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">

    <script src="../../js/bootstrap.js"></script>
    <script src="../../js/bootstrap.min.js"></script>

    <script>    
        $(document).ready(function () {
            var ide1 = 0.0, ide2 = 0.0, ide3 = 0.0, ide4 = 0.0, ide5 = 0.0, ide6 = 0.0;
            var real1 = 0.0, real2 = 0.0, real3 = 0.0, real4 = 0.0, real5 = 0.0, real6 = 0.0;
            var c1 = "rgba(255, 0, 0, 0.5)", c2 = "rgba(224, 120, 19, 0.5)", c3 = "rgba(0, 169, 0, 0.5)"; //rojo...naranja...verde
            var l1 = "rgba(255, 0, 0, 1)", l2 = "rgba(224, 120, 19, 1)", l3 = "rgba(0, 169, 0, 1)"; //rojo...naranja...verde

            var x = 0;
            x = $('#' + '<%= lblGraficar.ClientID %>').text();            

            ide1 = $('#' + '<%= lblIdealpdv.ClientID %>').text();
            ide2 = $('#' + '<%= lblIdealtec.ClientID %>').text();
            ide3 = $('#' + '<%= lblIdealinn.ClientID %>').text();
            ide4 = $('#' + '<%= lblIdealmer.ClientID %>').text();
            ide5 = $('#' + '<%= lblIdealpri.ClientID %>').text();
            ide6 = $('#' + '<%= lblIdealesc.ClientID %>').text();

            ide1 = parseFloat(ide1);
            ide2 = parseFloat(ide2);
            ide3 = parseFloat(ide3);
            ide4 = parseFloat(ide4);
            ide5 = parseFloat(ide5);
            ide6 = parseFloat(ide6);

            real1 = $('#' + '<%= lblRealpdv.ClientID %>').text();
            real2 = $('#' + '<%= lblRealtec.ClientID %>').text();
            real3 = $('#' + '<%= lblRealinn.ClientID %>').text();
            real4 = $('#' + '<%= lblRealmer.ClientID %>').text();
            real5 = $('#' + '<%= lblRealpri.ClientID %>').text();
            real6 = $('#' + '<%= lblRealesc.ClientID %>').text();

            real1 = parseFloat(real1);
            real2 = parseFloat(real2);
            real3 = parseFloat(real3);
            real4 = parseFloat(real4);
            real5 = parseFloat(real5);
            real6 = parseFloat(real6);


            if (x == 1) {
                var radarChartData = {
                    labels: [" Propuesta de Valor ", " Tecnología ", " Innovación ", " Mercado ", " Propiedad Intelectual ", " Escalabilidad "],
                    datasets: [
                        {
                            label: "Ideal",
                            fillColor: "rgba(220,220,220,0.2)",
                            strokeColor: "rgba(220,220,220,1)",
                            pointColor: "#fff",
                            pointStrokeColor: "#ff5722",
                            pointHighlightFill: "#ff5722",
                            pointHighlightStroke: "rgba(151,187,205,1)",
                            data: [ide1, ide2, ide3, ide4, ide5, ide6]
                        },
                        {
                            label: "Real",
                            fillColor: c1,
                            strokeColor: l1,
                            pointColor: c1,
                            pointStrokeColor: "#ff5722",
                            pointHighlightFill: "#ff5722",
                            pointHighlightStroke: "rgba(151,187,205,1)",
                            data: [real1, real2, real3, real4, real5, real6]
                        }
                    ]
                };

                window.onload = function () {
                    var ctx = document.getElementById("canvas").getContext("2d");
                    window.myLine = new Chart(ctx).Radar(radarChartData, {
                        responsive: true,
                        pointDot: false,
                        pointLabelFontSize: 11

                    });
                }
            }
            else {
                if (x == 2) {
                    var radarChartData = {
                        labels: [" Propuesta de Valor ", " Tecnología ", " Innovación ", " Mercado ", " Propiedad Intelectual ", " Escalabilidad "],
                        datasets: [
                            {
                                label: "Ideal",
                                fillColor: "rgba(220,220,220,0.2)",
                                strokeColor: "rgba(220,220,220,1)",
                                pointColor: "#fff",
                                pointStrokeColor: "#ff5722",
                                pointHighlightFill: "#ff5722",
                                pointHighlightStroke: "rgba(151,187,205,1)",
                                data: [ide1, ide2, ide3, ide4, ide5, ide6]
                            },
                            {
                                label: "Real",
                                fillColor: c2,
                                strokeColor: l2,
                                pointColor: c2,
                                pointStrokeColor: "#ff5722",
                                pointHighlightFill: "#ff5722",
                                pointHighlightStroke: "rgba(151,187,205,1)",
                                data: [real1, real2, real3, real4, real5, real6]
                            }
                        ]
                    };

                    window.onload = function () {
                        var ctx = document.getElementById("canvas").getContext("2d");
                        window.myLine = new Chart(ctx).Radar(radarChartData, {
                            responsive: true,
                            pointDot: false,
                            pointLabelFontSize: 11

                        });
                    }
                }
                else {
                    if (x == 3) {
                        var radarChartData = {
                            labels: [" Propuesta de Valor ", " Tecnología ", " Innovación ", " Mercado ", " Propiedad Intelectual ", " Escalabilidad "],
                            datasets: [
                                {
                                    label: "Ideal",
                                    fillColor: "rgba(220,220,220,0.2)",
                                    strokeColor: "rgba(220,220,220,1)",
                                    pointColor: "#fff",
                                    pointStrokeColor: "#ff5722",
                                    pointHighlightFill: "#ff5722",
                                    pointHighlightStroke: "rgba(151,187,205,1)",
                                    data: [ide1, ide2, ide3, ide4, ide5, ide6]
                                },
                                {
                                    label: "Real",
                                    fillColor: c3,
                                    strokeColor: l3,
                                    pointColor: c3,
                                    pointStrokeColor: "#ff5722",
                                    pointHighlightFill: "#ff5722",
                                    pointHighlightStroke: "rgba(151,187,205,1)",
                                    data: [real1, real2, real3, real4, real5, real6]
                                }
                            ]
                        };

                        window.onload = function () {
                            var ctx = document.getElementById("canvas").getContext("2d");
                            window.myLine = new Chart(ctx).Radar(radarChartData, {
                                responsive: true,
                                pointDot: false,
                                pointLabelFontSize: 11

                            });
                        }
                    }
                }
            }
        
            
        });
    </script>
</asp:Content>
