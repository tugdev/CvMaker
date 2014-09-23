<%@ Page Title="" Language="C#" MasterPageFile="~/CvMaster.Master" AutoEventWireup="true" CodeBehind="KayitFormu.aspx.cs" Inherits="CvHazirla.KayitFormu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

		<div class="container-fluid">
		<div class="row-fluid">
		
			<div class="row-fluid">
				<div class="span12 center login-header">
					<h2>Kayıt Form</h2>
				</div><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid">
				<div class="well span5 center login-box">
					<div class="alert alert-info">
						Giriş yapabilmeniz için kayıt formunu doldurunuz
					</div>
					<form class="form-horizontal" action="index.html" method="post">
						<fieldset>
					
						<table border="0" style=" margin-left: 111px; ">
                            <tr>
                            <td style="width: 75px;"><h4>isim: </h4></td>

                            <td><div class="input-prepend" title="İsim" data-rel="tooltip">
								
								                            <span class="add-on"><i class="icon-user"></i></span>
								                            <input autofocus class="input-small span10" name="kayitIsim" id="kayitIsim" type="text" value=""/>
							                            </div>
								                            <div class="clearfix"></div>
								                            </td>
                            </tr>

                            <tr>
                                <td><h4>soyisim:</h4> </td>
                                <td>
                                <div class="input-prepend" title="Soyisim" data-rel="tooltip">
								    <span class="add-on"><i class="icon-lock"></i></span><input class="input-large span10" name="kayitSoyisim" id="kayitSoyisim" type="text" value="" />
							    </div>
							    <div class="clearfix"></div>

							
							    <div class="clearfix"></div>
							    </td>
                            </tr>

                            <tr>						
			                            <td><h4>email: </h4></td>
                            <td>
                                <div class="input-prepend" title="Email"  data-rel="tooltip">
								    <span class="add-on"><i class="icon-user"></i></span><input autofocus class="input-large span10" name="kayitEmail" id="kayitEmail" type="email" value="" required/>
							    </div>
							    <div class="clearfix"></div>
							 </td>				
                            
                            </tr>

            <tr>
					            <td><h4>Şifre:</h4></td>
            <td>
                <div class="input-prepend" title="Sifre" data-rel="tooltip">
				    <span class="add-on"><i class="icon-lock"></i></span><input class="input-large span10" name="kayitSifre" id="kayitSifre" type="password" value="" required/>
			    </div>
			    <div class="clearfix"></div>
            </td>		
            </tr>							
		</table>					
							
							 	
							
							
							<div class="clearfix"></div>
							<p class="center span5">

            <%--<asp:Button ID="Button1" runat="server" Text="Kaydol" class="btn btn-primary" style=" margin-left: 45px; width: 175px; "/>--%>
            <input id="Button2" type="submit" class="btn btn-primary" style=" margin-left: 45px; width: 175px;" value="Kaydol" />
            <br />
            <br />
            <a href="#" style=" margin-left: 55px; ">Hesabım Var</a>
							</p>
						</fieldset>
					</form>
				</div><!--/span-->
			</div><!--/row-->
				</div><!--/fluid-row-->
		
	</div><!--/.fluid-container-->

</asp:Content>
