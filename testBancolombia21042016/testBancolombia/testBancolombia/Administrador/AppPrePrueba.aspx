<%@ Page Title="" Language="C#" MasterPageFile="~/master/Moderador.Master" AutoEventWireup="true" CodeBehind="AppPrePrueba.aspx.cs" Inherits="testBancolombia.Administrador.AppPrePrueba" %>

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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg" id="page-top">
        <form runat="server" class="form-horizontal">
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="col-md-12 inner">
                        <div class="row text-box">
                            <div class="col-lg-12">
                                <h2><small>Elija la empresa a la cual desea aplicarle la prueba</small></h2>
                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="row col-lg-12">
                            <div class="col-md-12 form-group">
                                <div id="grids" class="col-md-12" style="visibility: visible;" runat="server">
                                    <div class="input-group col-md-4">
                                        <asp:TextBox ID="txtfiltro" runat="server" placeholder="Filtro" CssClass="form-control"></asp:TextBox>
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                    </div>
                                    <br />
                                    <div class="col-md-offset-0 table-responsive text-left" style="height: 300px; overflow: no-display;">
                                        <!-- GridView Inicial-->
                                        <asp:GridView ID="gvEmpresas" runat="server" CssClass="table table-bordered table-condensed" HeaderStyle-CssClass="label-warning text-center"
                                            AutoGenerateColumns="false" DataKeyNames="consecEA">
                                            <Columns>
                                                <asp:BoundField DataField="nombreEmpresaApps" HeaderText="Nombre" SortExpression="nombreEmpresaApps"></asp:BoundField>
                                                <asp:BoundField DataField="figuraJuridicaApps" HeaderText="Figura Jurídica" SortExpression="figuraJuridicaApps"></asp:BoundField>
                                                <asp:BoundField DataField="fechaDxE" HeaderText="Fecha Parametrización" SortExpression="fechaDxE"></asp:BoundField>
                                                <asp:TemplateField HeaderText="<i class='glyphicon glyphicon-ok'></i>">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="rbSelect" GroupName="rbSelect" AutoPostBack="true" runat="server"
                                                            OnClick="rbSelect_Click" CommandArgument='<%# Eval("consecEA") %>'><i class='glyphicon glyphicon-ok'></i></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <!-- GridView Inicial-->

                                        <!-- GridView Empresa Consultada-->
                                        <asp:GridView ID="gvcons" runat="server" CssClass="table table-bordered table-condensed" HeaderStyle-CssClass="label-warning text-center"
                                            AutoGenerateColumns="false" Visible="false" DataKeyNames="fechaDxE">
                                            <Columns>
                                                <asp:BoundField DataField="consecCategDefault" HeaderText="Consecutivo Interno" SortExpression="consecCategDefault"></asp:BoundField>
                                                <asp:BoundField DataField="nombreEmpresaApps" HeaderText="Nombre" SortExpression="nombreEmpresaApps"></asp:BoundField>
                                                <asp:BoundField DataField="fechaDxE" HeaderText="Fecha" SortExpression="fechaDxE"></asp:BoundField>
                                                <asp:BoundField DataField="opDefault" HeaderText="Oportunidad" SortExpression="opDefault"></asp:BoundField>
                                                <asp:BoundField DataField="thDefault" HeaderText="Talento Humano" SortExpression="thDefault"></asp:BoundField>
                                                <asp:BoundField DataField="recDefault" HeaderText="Recursos" SortExpression="recDefault"></asp:BoundField>
                                                <asp:TemplateField HeaderText="<i class='glyphicon glyphicon-ok'></i>">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lbselect" GroupName="rbSelect" AutoPostBack="true" runat="server"
                                                            OnClick="lbselect_Click" CommandArgument='<%# Eval("consecCategDefault") + " , " + Eval("fechaDxE") %>'><i class='glyphicon glyphicon-ok'></i></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <!-- GridView Empresa Consultada-->
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="mensaje" class="row" style="visibility: hidden;" runat="server">
                            <div class="col-md-12 text-justify">
                                <br />
                                <asp:Label ID="lblmensaje" CssClass="text-danger text-uppercase" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-md-12">
                                <br />
                                <div class="col-md-2 col-md-offset-10">
                                    <asp:Button ID="btnlimpiar" CssClass="btn btn-default btn-lg" runat="server" Text="Limpiar" OnClick="btnlimpiar_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-2 col-md-offset-10">
                                    <div class="">
                                        <a href="../inicioIndex.aspx" class="btn btn-info btn-lg">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/jquery-1.4.1.min.js"></script>
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script src="../js/jquery.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script src="../js/jquery.quicksearch.js"></script>
</asp:Content>
