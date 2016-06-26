<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/Usuario.Master" AutoEventWireup="true" CodeBehind="RUsuario.aspx.cs" Inherits="SisGest2013Full.Usuario.RUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container box" style="border-radius: 10px;">
        <div class="row">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Formulario de <strong>Registro</strong>
                </h2>
                <hr>
                <%-- <p class="intro-text text-center">
                        Bienvenido</p>--%>
                <form id="Form1" class="form-vertical" role="form" runat="server">
                    <div class="row ">
                        <div class="form-group col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                            <label>
                                Identificacion</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                <asp:TextBox ID="txtusuario" class="form-control" placeholder="Ejem:12345" runat="server"
                                    required></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group  col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                            <label>
                                Nombres
                            </label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtnombre" class="form-control" placeholder="Ejem:juan" runat="server"
                                    required></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group  col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                            <label>
                                Apellidos</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtapelldo" class="form-control" placeholder="Ejem:Gomez" runat="server"
                                    required></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group  col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                            <label>
                                Clave</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtclave" class="form-control" type="email" placeholder="Ejem:12345"
                                    runat="server" required TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group  col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                            <label>
                                Confirmar Clave</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtclave2" class="form-control" placeholder="Ejem:12345" runat="server"
                                    required TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group  col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                            <label>
                                Correo</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtcorreo" class="form-control" placeholder="Ejem@gmail.com" runat="server"
                                    required></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group  col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                            <label>
                                Tipo</label>
                            <div class="input-group">
                                <asp:DropDownList ID="ddltipo" class="form-control" runat="server" Width="200px">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div id="div1" class="form-group col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                            <label>
                                Seccion</label>
                            <div class="input-group">
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
                        </div>
                    </div>
                    <div class="form-group col-md-4 col-center-block">
                        <asp:Button ID="btnguardar" runat="server" class="btn btn-primary" Text="Guardar"
                            OnClick="btnguardar_Click1" />
                        <asp:Button ID="btnlimpiar" CssClass="btn btn-default" runat="server" Text="Limpiar" OnClick="btnlimpiar_Click" />

                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lblmensaje" class="h3 label-warning text-danger" runat="server" Text=""></asp:Label>
                    </div>
                    <a href="../Administracion/ADM.aspx" class="text-center new-account">
                        <h3>regresar</h3>
                    </a>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript" language="javascript">
        //var sec = '#' + '<%=ddlseccion.ClientID %>';
        var tipo = '#' + '<%=ddltipo.ClientID %>';
        var d = '#div1';
        $(document).ready(function () {

            $(d).hide();

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
</asp:Content>
