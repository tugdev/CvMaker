<%@ Page Title="" Language="C#" MasterPageFile="~/CvMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CvHazirla.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
		<div class="row-fluid">
		
			<div class="row-fluid">
				<div class="span12 center login-header">
					<h2>Login Form</h2>
				</div><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid">
				<div class="well span5 center login-box" style="
    width: 410px;
">
					<div class="alert alert-info">
						Kullanıcı Adı(e-mail) ve Şifrenizi Giriniz
					</div>
					<form class="form-horizontal" >
						<fieldset>
                        <table border="0" style=" margin-left: 39px; ">
                            <tr>
                                <td style="width: 75px;"><h4>Email: </h4></td>
                                <td>

							        <div class="input-prepend" title="Email" data-rel="tooltip">
								        <span class="add-on"><i class="icon-user"></i></span>
                                        <%--<input autofocus class="input-large span10" name="girisEmail" id="girisEmail" type="text" value="" />--%>

                                        <asp:TextBox ID="girisEmail" class="input-large span10" runat="server" required></asp:TextBox>
							        </div>
							        <div class="clearfix"></div>
                                </td>
							</tr>

                            <tr>
                            <td><h4>Şifre:</h4> </td>
                            <td>
                                <div class="input-prepend" title="Password" data-rel="tooltip">
								    <span class="add-on"><i class="icon-lock"></i></span>
                                    <%--<input class="input-large span10" name="password" id="girisSifre" type="password" value="" />--%>
                                
                                    <asp:TextBox ID="girisSifre" class="input-large span10" type="password" runat="server" required></asp:TextBox>
							    </div>
							    <div class="clearfix"></div>
                             </td>
							</tr>

                            </table>
							<div class="clearfix"></div>

							<p class="center span5">

                            <asp:Button ID="Button1" class="btn btn-primary" 
                                    style=" width: 175px; margin-left: 7px; " runat="server" Text="Giriş" 
                                    onclick="Button1_Click" />
                            <br>
                            <br>
                            <a href="#" style=" margin-left: 55px; ">Şifremi Unuttum</a>
							</p>
						</fieldset>
					</form>
				</div><!--/span-->
			</div><!--/row-->
				</div><!--/fluid-row-->
		
	</div><!--/.fluid-container-->

</asp:Content>
