<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/CYC.Master" AutoEventWireup="true" CodeBehind="EditarEco.aspx.cs" Inherits="SisGest2013Full.CYC.EditarEco" %>

<asp:Content ID="Content2" ContentPlaceHolderID="navUsr" runat="server" Visible="false">
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
    <div class="container">
        <div class="row">
            <div class="box">
                <hr>
                <h2 class="intro-text text-center">
                    Consultar Estado de <strong>ECO</strong>
                </h2>
                <hr>
                <div class="col-lg-10 col-lg-offset-1">
                    <form id="form1" runat="server">
                    <div class="row">
                        <div class="form-group col-xs-3 col-md-3">
                            <label>
                                N° Seguimiento</label>
                            <asp:TextBox ID="txtcodsig" class="form-control" required pattern="^\d+$" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group col-xs-3 col-md-3">
                            <label>
                                Fase Actual</label>
                            <asp:TextBox ID="txtfaseactual" class="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group col-xs-3 col-md-3">
                            <label>
                                Solicitante</label>
                            <asp:TextBox ID="txtsolicita" class="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group col-xs-3 col-md-3">
                            <label>
                                Area</label>
                            <asp:TextBox ID="txtarea" class="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group col-xs-3 col-md-3">
                            <br />
                            <asp:Button ID="btnbuscar" class="btn btn-primary" Text="BUSCAR" runat="server" OnClick="btnbuscar_Click" />
                        </div>
                        <div class="form-group col-xs-6 col-md-5 text-center">
                            <br />
                            
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="form-group col-lg-4">
                            <label>
                                Fase</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i>
                                </span>
                                <asp:DropDownList ID="ddlfase" class="form-control" runat="server" DataSourceID="SqlDataSource1"
                                    DataTextField="fase" DataValueField="consecfase">
                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:oCnx %>"
                                    SelectCommand="SELECT [consecfase], [fase] FROM [tblEcoFase]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="form-group col-sm-4">
                            <label>
                                Fecha Inicial Fase</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <asp:TextBox ID="txtfechafini" class="form-control fecha" placeholder="dd/mm/yyyy" onchange="CalcularGrafico();"
                                    runat="server" data-date-format="dd/mm/yyyy"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-sm-4">
                            <label>
                                Contratacion</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i>
                                </span>
                                <asp:DropDownList ID="ddlcontratacion" class="form-control" runat="server">
                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                    <asp:ListItem>U de A</asp:ListItem>
                                    <asp:ListItem>CIS</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group col-sm-4  col-sm-pull-0">
                            <label>
                                Tipo de Contrato</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i>
                                </span>
                                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                    <asp:ListItem>Compra</asp:ListItem>
                                    <asp:ListItem>Prestación de servicios</asp:ListItem>
                                    <asp:ListItem>Suministros-Compra</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group col-sm-4 col-sm-pull-0">
                            <label>
                                Interventor</label>
                            <div class="">
                                <asp:TextBox ID="txtinterventor" class="form-control" placeholder="Interventor" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-sm-4">
                            <label>
                                Centro Gestor</label>
                            <div class="">
                                <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                    <asp:ListItem>20306401</asp:ListItem>
                                    <asp:ListItem>20306402</asp:ListItem>
                                    <asp:ListItem>20302407</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group col-sm-4">
                            <label>
                                Fecha Finalización</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <asp:TextBox ID="txtfechaftotal" class="form-control fecha" placeholder="dd/mm/yyyy" onchange="CalcularGrafico();"
                                    runat="server" data-date-format="dd/mm/yyyy"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-sm-4 col-sm-offset-0">
                            <label>
                                Observación</label>
                            <div class="">
                                <asp:TextBox ID="txtobservacion" class="form-control" Columns="400" Rows="3" placeholder="Observaciones"
                                    runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="col-lg-12 col-lg-pull-0">
                    <div class="col-lg-6">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                         <br /><br />
                        </div>
                        <div class="col-lg-6">
                        <asp:Button ID="btnUpload" runat="server" class="btn btn-primary" Text="CARGAR" OnClick="UploadFile" />
                         <br /><br />
                        </div>
                        <asp:GridView ID="GridView1" runat="server" CssClass="col-sm-4" AutoGenerateColumns="False" EmptyDataText="No files uploaded"
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
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                         <br /><br /> <br /> <br />
                            <asp:Label ID="lblmensaje" class="h3 label-warning text-danger" runat="server" Text=""></asp:Label><br /><br /><br />
                    </div>
                       
                        <div class="form-group col-sm-6 col-sm-offset-0">
                            <br />
                            <asp:Button ID="Button1" class="btn btn-danger " Text="Guardar" runat="server" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" class="btn btn-default " runat="server" Text="Limpiar" OnClick="Button2_Click" />
                        </div>
                    </div>                    
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script language="javascript" type="text/javascript">
        $('.fecha').datepicker().on('changeDate', function (ev) {
            CalcularGrafico();
        });

        function CalcularGrafico() {
            // Periodos
            var P1;


            P1 = $('.fecha').val();

        }

    </script>

</asp:Content>
