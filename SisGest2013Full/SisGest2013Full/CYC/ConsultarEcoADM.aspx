<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/CYC.Master" AutoEventWireup="true"
    CodeBehind="ConsultarEcoADM.aspx.cs" Inherits="SisGest2013Full.CYC.ConsultarEcoADM" %>

<asp:Content ID="Content4" ContentPlaceHolderID="navUsr" runat="server" Visible="false">
     <img src="../img/cyc.jpg" class="img-responsive" width="100%" height="100%" alt="" />
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation navbar-static-top">
        <div class="container">
            <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
             <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="../Index.aspx">Parque E</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav">
                    <li>
                        <a class="glyphicon glyphicon-home" id="casita" runat="server"></a>
                    </li>
                   
                    <li>
                        <a href="../CYC/GCompraAdm.aspx">Solicitud ECO</a>
                    </li>
                    <li>
                        <a href="../CYC/ConsultarEcoADM.aspx">Consultar ECO</a>
                    </li>
                      <li>
                        <a href="../CYC/CrearECO.aspx">Crear ECO</a>
                    </li>
                      <li>
                        <a href="../CYC/EditarEco.aspx">Editar ECO</a>
                    </li>
                 

                </ul>
            </div>
            <!-- /.navbar-collapse -->
                </div>
            </div>
        </nav>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <div class="box">
                <div class="row">
                    <hr />
                    <h2 class="intro-text text-center">Consultar Estado de <strong>ECO</strong>
                    </h2>
                    <hr />
                    <p class="text-center">
                        Si no tiene el codigo de seguimiento puede hacer una consulta general
                    </p>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Activos</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <br />
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtfiltro1" CssClass="form-control f1" runat="server" placeholder="Filtro"></asp:TextBox>
                                    </div>
                                    <div class="table-responsive col-lg-12" style="height: 400px; overflow: scroll;">
                                        <br />

                                        <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered f2" runat="server"
                                            AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">                                            
                                            <Columns>
                                                <asp:BoundField DataField="codseguimiento" HeaderText="Código" ReadOnly="True" SortExpression="codseguimiento" />
                                                <asp:BoundField DataField="fase" HeaderText="Fase" SortExpression="fase" />
                                                <asp:BoundField DataField="fecharealizacion" HeaderText="Realización" SortExpression="fecharealizacion" />
                                                <asp:BoundField DataField="contratacion" HeaderText="Contratacion" SortExpression="contratacion" />
                                                <asp:BoundField DataField="centrogestor" HeaderText="Centrogestor" SortExpression="centrogestor" />
                                                <asp:BoundField DataField="tipocontrato" HeaderText="Tipo de Contrato" SortExpression="tipocontrato" />
                                                <asp:BoundField DataField="interventor" HeaderText="Interventor" SortExpression="interventor" />
                                                <asp:BoundField DataField="observaciones" HeaderText="Observaciones" SortExpression="observaciones" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SisGest2013Full.CYC.DataSet1TableAdapters.pa_consultaTblEcoFULLActivosTableAdapter"></asp:ObjectDataSource>
                                        <br />
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Inactivos</a>
                                </h4>
                            </div>
                            <div id="collapse2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <div class="col-lg-4">
                                        <br />
                                        <asp:TextBox ID="txtfiltro2" CssClass="form-control" runat="server" placeholder="Filtro"></asp:TextBox>
                                    </div>
                                    <div class="table-responsive col-lg-12" style="height: 400px; overflow: scroll;">
                                        <br />

                                        <asp:GridView ID="GridView3" CssClass="table table-striped table-bordered" runat="server"
                                            AutoGenerateColumns="False" DataSourceID="ObjectDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="codseguimiento" HeaderText="Código" SortExpression="codseguimiento" />
                                                <asp:BoundField DataField="fase" HeaderText="Fase" SortExpression="fase" />
                                                <asp:BoundField DataField="fecharealizacion" HeaderText="Realizacion" SortExpression="fecharealizacion" />
                                                <asp:BoundField DataField="contratacion" HeaderText="Contratacion" SortExpression="contratacion" />
                                                <asp:BoundField DataField="centrogestor" HeaderText="Centrogestor" SortExpression="centrogestor" />
                                                <asp:BoundField DataField="tipocontrato" HeaderText="Tipo de Contrato" SortExpression="tipocontrato" />
                                                <asp:BoundField DataField="interventor" HeaderText="Interventor" SortExpression="interventor" />
                                                <asp:BoundField DataField="fechafinaltotal" HeaderText="Fecha Final" SortExpression="fechafinaltotal" />
                                                <asp:BoundField DataField="observaciones" HeaderText="Observaciones" SortExpression="observaciones" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SisGest2013Full.CYC.DataSet1TableAdapters.pa_consultaTblEcoFULLInactivosTableAdapter"></asp:ObjectDataSource>
                                        <br />
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Documentos</a>
                                </h4>
                            </div>
                            <div id="collapse3" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div class="col-lg-12">
                                    </div>
                                    <div class="col-lg-10 col-lg-offset-1">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <div class="col-md-6">
                                                    <label>
                                                        N° Seguimiento</label>
                                                    <asp:TextBox ID="txtconsulta" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <br />
                                                <asp:Button ID="btnconsulta" class="btn btn-danger " Text="Consultar" runat="server"
                                                    OnClick="btnconsulta_Click" />
                                                <asp:Button ID="btnlimpiar" class="btn btn-default" runat="server" Text="Limpiar" OnClick="btnlimpiar_Click" />
                                                <br />
                                            </div>
                                            <div class="col-lg-12">
                                                <br />
                                                 <asp:FileUpload ID="FileUpload1" runat="server" Width="230px" Height="25px" />
                                                <br />
                                                <asp:Button ID="btnUpload" runat="server" class="btn btn-primary" Text="CARGAR" OnClick="UploadFile"/> 
                                                <br />
                                                <div class="col-lg-offset-2" style="height: 400px; overflow: scroll;">
                                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" EmptyDataText="No files uploaded"
                                                        Width="600px" HeaderStyle-Font-Size="24px" HeaderStyle-Height="30" HeaderStyle-BackColor="Gray"
                                                        HeaderStyle-ForeColor="White" AlternatingRowStyle-BackColor="#ebebeb" AutoPostBack="True">
                                                        <Columns>
                                                            <asp:BoundField DataField="Text" HeaderText="ARCHIVO" ReadOnly="True" />
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="lnkDownload" Text="Descargar" CommandArgument='<%# Eval("Value") %>'
                                                                        runat="server" OnClick="DownloadFile">
   <img alt="Descargar" src="../img/download-icon.jpg" height="30" width="30"/>
                                                                    </asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="lnkDelete" Text="Eliminar" CommandArgument='<%# Eval("Value") %>'
                                                                        runat="server" OnClick="DeleteFile"> 
   <img alt="Eliminar" src="../img/elim-arch.png" height="25" width="25"/>
                                                                    </asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <HeaderStyle BackColor="Gray" Font-Size="24px" ForeColor="White" Height="30px"></HeaderStyle>
                                                        <AlternatingRowStyle BackColor="#EBEBEB"></AlternatingRowStyle>
                                                    </asp:GridView>
                                                </div>
                                                <asp:Label ID="lblmensaje" CssClass="h3 label-warning text-danger" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script type="text/javascript">
        $(document).ready(function () {
            var txtFiltro = '#' + '<%=txtfiltro1.ClientID %>';
            var grillaJedis = '#' + '<%=GridView1.ClientID %>';
            $(txtFiltro).quicksearch(grillaJedis + ' tbody tr');
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            var txtFiltro = '#' + '<%=txtfiltro2.ClientID %>';
            var grillaJedis = '#' + '<%=GridView3.ClientID %>';
            $(txtFiltro).quicksearch(grillaJedis + ' tbody tr');
        });
    </script>

</asp:Content>
