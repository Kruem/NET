<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/Usuario.Master" AutoEventWireup="true" CodeBehind="MUsuario.aspx.cs" Inherits="SisGest2013Full.Administracion.MUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container box" style="border-radius: 10px;">
        <div class="row">
            <form id="Form1" class="form-vertical" runat="server">
            <div class="col-lg-12">

                
                    <hr />
                    <h2 class="intro-text text-center">Modificar <strong>Usuarios</strong></h2>

                    <hr />
                    <%-- <p class="intro-text text-center">
                        Bienvenido</p>--%>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Usuarios</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-2 col-lg-offset-2">
                                            <asp:TextBox ID="txtfiltro1" CssClass="form-control f1" runat="server" placeholder="Filtro"></asp:TextBox>
                                            <br />
                                        </div>
                                        <div class="col-lg-8 col-lg-offset-2 col-lg-pull-0" style="height: 400px; overflow: scroll;">
                                            <asp:GridView ID="GridView1" CssClass="table table-bordered bg-warning f2" runat="server"
                                                AutoGenerateColumns="False" PagerSettings-Mode="NextPreviousFirstLast"
                                                PagerSettings-FirstPageText="&nbsp;Inicio&nbsp;" PagerSettings-LastPageText="&nbsp;Fin&nbsp;"
                                                PagerSettings-NextPageText="&nbsp;Siguiente&nbsp;" PagerSettings-PreviousPageText="&nbsp;Previo&nbsp;"
                                                PagerSettings-Position="TopAndBottom" DataSourceID="ObjectDataSource1" DataKeyNames="Usuario">
                                                <PagerSettings FirstPageText="&#160;Inicio&#160;" LastPageText="&#160;Fin&#160;" NextPageText="&#160;Siguiente&#160;" Position="TopAndBottom"
                                                    PreviousPageText="&#160;Previo&#160;"></PagerSettings>
                                                <Columns>
                                                    <asp:BoundField DataField="Usuario" ControlStyle-CssClass="text-center" HeaderText="Usuario" ReadOnly="True" SortExpression="Usuario">
                                                        <ControlStyle CssClass="text-center"></ControlStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Nombre" ControlStyle-CssClass="text-center" HeaderText="Nombre" SortExpression="Nombre">
                                                        <ControlStyle CssClass="text-center"></ControlStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Apellido" ControlStyle-CssClass="text-center" HeaderText="Apellido" SortExpression="Apellido">
                                                        <ControlStyle CssClass="text-center"></ControlStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Correo" ControlStyle-CssClass="text-center" HeaderText="Correo" SortExpression="Correo">
                                                        <ControlStyle CssClass="text-center"></ControlStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Estado" ControlStyle-CssClass="text-center" HeaderText="Estado" SortExpression="Estado">
                                                        <ControlStyle CssClass="text-center"></ControlStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Tipo" ControlStyle-CssClass="text-center" HeaderText="Tipo" SortExpression="Tipo">
                                                        <ControlStyle CssClass="text-center"></ControlStyle>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Seccion" ControlStyle-CssClass="text-center" HeaderText="Seccion" SortExpression="Seccion">
                                                        <ControlStyle CssClass="text-center"></ControlStyle>
                                                    </asp:BoundField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SisGest2013Full.CYC.DataSet1TableAdapters.pa_consultarUsrTodosTableAdapter"></asp:ObjectDataSource>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>

            <div class="row">
                <br />
                <div class="row col-lg-offset-2">
                    <div class="form-group col-md-4 col-lg-offset-2">
                        <label>
                            Identificacion</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            <asp:TextBox ID="txtusuario" class="form-control" placeholder="Ejem:12345" runat="server"
                                required=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <br />
                        <asp:Button ID="btnconsultar" runat="server" class="btn btn-primary" Text="Consultar"
                            OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
            <div class="row" id="divVisible" runat="server" visible="false">
                <div class="row col-lg-offset-2">
                    <div class="form-group  col-sm-6 col-md-4">
                        <label>
                            Nombres
                        </label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="txtnombre" class="form-control" pattern="[a-zA-Z\s]+" placeholder="Ejem:juan" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group col-sm-6 col-md-4">
                        <label>
                            Apellidos</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="txtapelldo" class="form-control" pattern="[a-zA-Z\s]+" placeholder="Ejem:Gomez" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row col-lg-offset-2">
                    <div class="form-group  col-sm-6 col-md-4">
                        <label>
                            Clave</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <asp:TextBox ID="txtclave" required="" class="form-control" type="email" placeholder="Ejem:12345"
                                runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group col-sm-6 col-md-4">
                        <label>
                            Correo</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <asp:TextBox ID="txtcorreo" class="form-control" placeholder="Ejem@mail.com"
                                pattern="[a-zA-Z0-9._\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,4}" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row col-lg-offset-2">
                    <div class="form-group col-sm-4 col-md-4">
                        <label>
                            Tipo</label>
                        <asp:DropDownList ID="ddltipo" class="form-control" runat="server" Width="200px">
                        </asp:DropDownList>
                    </div>
                    <div id="div1" class="form-group col-sm-4 col-md-4">
                        <label>
                            Seccion</label>
                        <asp:DropDownList ID="ddlseccion" class="form-control" runat="server">
                            <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                            <asp:ListItem>Dirección</asp:ListItem>
                            <asp:ListItem>Comunicaciones</asp:ListItem>
                            <asp:ListItem>Mejoramiento Contínuo</asp:ListItem>
                            <asp:ListItem>Fortalecimiento del Emprendimiento en las IES</asp:ListItem>
                            <asp:ListItem>Apoyo a la Creación de Empresas</asp:ListItem>
                            <asp:ListItem>Gestión Administrativa</asp:ListItem>
                            <asp:ListItem>Gestión Financiera</asp:ListItem>
                            <asp:ListItem>Estrategias Tecnológicas</asp:ListItem>
                            <asp:ListItem>Gestión de Compras y Contratación</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-sm-4 col-md-4">
                        <br />
                        <br />
                        <asp:CheckBox ID="chkestado" class="" Text="Estado&nbsp;" TextAlign="Left" runat="server" />
                    </div>

                </div>

                <div class="form-group col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                    <asp:Label ID="lblmensaje" CssClass="h3 label-warning text-danger" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group col-md-4 col-center-block">
                    <asp:Button ID="btnguardar" runat="server" class="btn btn-primary" Text="Guardar"
                        OnClick="btnguardar_Click" />
                    <asp:Button ID="btnlimpiar" CssClass="btn btn-default" runat="server" Text="Limpiar" />
                </div>
            </div>
            <h3>
                <a href="../Administracion/ADM.aspx" class="text-center new-account">regresar </a>
            </h3>
            </form>

                

        </div>
    </div>
    <script type="text/javascript">

        var tipo = '#' + '<%=ddltipo.ClientID %>';
        var d = '#div1';
        $(document).ready(function () {
            $(tipo).on("load", function () {
                if (($(tipo).val()) != 'Moderador') {
                    $(d).hide();
                }
                else {
                    $(d).show();
                }
            });
            $(tipo).on("change", function () {
                if (($(tipo).val()) != 'Moderador') {
                    $(d).hide();
                }
                else {
                    $(d).show();
                }
            });

        });
                </script>
    <script type="text/javascript">
        $(document).ready(function () {
            var txtFiltro = '#' + '<%=txtfiltro1.ClientID %>';
            var grillaJedis = '#' + '<%=GridView1.ClientID %>';
            $(txtFiltro).quicksearch(grillaJedis + ' tbody tr');
        });

    </script>
</asp:Content>

