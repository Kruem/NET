<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/Usuario.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SisGest2013Full.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container box" style="border-radius:10px;">
        <div class="row">
            <div class="col-center-block ">
                <hr/>
                <h2 class="text-center">
                    <strong>Bienvenidos</strong></h2>
                <hr/>
                <div class="col-sm-6 col-md-4 col-md-offset-4 col-center-block ">
                    <div class="account-wall">
                        <img class="profile-img img-responsive" src="../img/page1-img1.png" alt=""/>
                        <form id="Form1" class="form-signin" runat="server">
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="txtusuario" runat="server" placeholder="Usuario"
                                required=""></asp:TextBox>
                                
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtclave" CssClass="form-control" placeholder="Contraseña" runat="server"
                                 required="" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnlogin" CssClass="btn btn-lg btn-primary btn-block" runat="server"
                                Text="Ingresar" onclick="btnlogin_Click1" />
                        </div>
                        <div class="form-group text-center">
                            <asp:Label ID="lblmensaje" runat="server" CssClass="text-warning"></asp:Label>
                        </div>
                        </form>
                    </div>
                    <a href="../Index.aspx" class="text-center new-account">
                        <h3>regresar</h3></a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
