<%@ Page Title="" Language="C#" MasterPageFile="~/master/Consulta.Master" AutoEventWireup="true" CodeBehind="ConRecursos.aspx.cs" Inherits="testBancolombia.Consultas.ConRecursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/datepicker.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/btn.css" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../js/Chart.js"></script>
    <script src="../js/jquery.quicksearch.js"></script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg" id="page-top">
        <form runat="server" class="form-horizontal">
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="col-md-12 inner">
                        <div class="row">
                            <div class="col-md-12 text-box">
                                <h2><small>Consulta de resultados</small></h2>
                            </div>

                        </div>
                        <br />

                        <div class="row col-lg-12">
                            <div class="col-md-12 form-group">
                                <div class="col-md-12">
                                    <div class="input-group col-md-4">
                                        <asp:TextBox ID="txtfiltro" runat="server" placeholder="Filtro" CssClass="form-control"></asp:TextBox>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                    </div>
                                    <br />
                                    <div class="col-md-offset-0 table-responsive text-left" style="height: 300px; overflow: scroll;">
                                        <!-- GridView Inicial-->
                                        <asp:GridView ID="gvEmpresas" runat="server" CssClass="table table-bordered table-condensed" HeaderStyle-CssClass="label-warning text-center"
                                            AutoGenerateColumns="false" DataKeyNames="idEmpresResultAC">
                                            <Columns>
                                                <asp:BoundField DataField="nombreEmpresaApps" HeaderText="Nombre" SortExpression="nombreEmpresaApps"></asp:BoundField>
                                                <asp:BoundField DataField="fechaResultAC" HeaderText="Fecha Prueba" SortExpression="fechaResultAC"></asp:BoundField>
                                                <asp:TemplateField HeaderText="<i class='glyphicon glyphicon-ok'></i>">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="rbSelect" Text="Check" GroupName="rbSelect" AutoPostBack="true" runat="server"
                                                            OnClick="rbSelect_Click" CommandArgument='<%# Eval("idEmpresResultAC") + " , " + Eval("fechaResultAC") %>' ><i class='glyphicon glyphicon-ok'></i></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <!-- GridView Inicial-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-3 col-md-offset-9">
                                    <div class="">
                                        <a href="MenuConsulta.aspx" class="btn btn-info btn-lg">
                                            <center>Regresar</center>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">

    <script src="../js/bootstrap.js"></script>
    <script src="../js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var txtFiltro = '#' + '<%=txtfiltro.ClientID %>';
            var grillaJedis = '#' + '<%=gvEmpresas.ClientID %>';
            $(txtFiltro).quicksearch(grillaJedis + ' tbody tr');
        });
    </script>

</asp:Content>