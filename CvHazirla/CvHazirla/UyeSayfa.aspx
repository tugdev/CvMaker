<%@ Page Title="" Language="C#" MasterPageFile="~/CvMaster.Master" AutoEventWireup="true" CodeBehind="UyeSayfa.aspx.cs" Inherits="CvHazirla.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-fluid">
		<div class="row-fluid" style="
    margin-left: 50px;
    width: 2000px;
">


     <div class="bs-docs-grid">
           
           
            <div class="row show-grid" style="
    width: 1000px;
">
                <div class="span4">
			  
			  <div>
                    <div class="col-xs-4" style=" margin-top: 21px; ">
                        <label>Kullanıcı İsim</label>
                       <%--<input type="text" class="form-control" id="isim" />--%>
                        <asp:TextBox  class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-xs-4" style=" margin-top: 21px; ">
                    <label>Kullanıcı Soyisim</label>
                        <input type="text" class="form-control" id="soyisim" />
                    </div>
					<div class="col-xs-4" style=" margin-top: 21px;margin-bottom:25px; ">
                        <label>Kullanıcı E-Posta</label>
                       <input type="text" class="form-control" id="mail"/>
                    </div>
                    <div class="col-xs-4" style=" margin-top: 21px;margin-bottom:25px; ">
                       
    <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Şifremi Güncelle" 
                    onclick="Button1_Click" />
                    </div>
                   
                    <div class="col-xs-4" style=" margin-top: 21px;margin-bottom:25px; ">
                  <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="Üyelik Bilgilerimi Güncelle" 
                      onclick="Button2_Click" />
                    </div>

                     <div class="col-xs-4" style=" margin-top: 21px;margin-bottom:25px; ">
                  <asp:Button ID="Button3" class="btn btn-success" runat="server" Text="Cv Güncelle" onclick="Button3_Click" 
                      />
                    </div>
                </div>
			  </div>
             
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                

              <div class="span4" style="
    margin-left: 15px;
">
			  
			  <div>
                   <div class="col-xs-4" style=" margin-top: 21px; ">
                        <label>eski şifre</label>
                       <input type="text" class="form-control" id="mail" />
                    </div>
					<div class="col-xs-4" style=" margin-top: 21px; ">
                        <label>yeni şifre</label>
                       <input type="text" class="form-control" id="mail" />
                    </div>

                    <div class="col-xs-4" style=" margin-top: 21px; ">
                    <label>tekrar yeni Şifre</label>
                        <input type="text" class="form-control" id="sifre" />
                    </div>
					
					<div class="col-xs-4" style=" margin-top: 21px; margin-bottom:25px;">
					 
                        <button class="btn btn-primary" type="submit">Şifremi Güncelle</button>
                    </div>
					
					
                </div>
			  
			  
			  </div>
               </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" Visible="False">

              
                   <div class="span4" style="
    margin-left: 15px;
" >
			  
			  <div>
                   <div class="col-xs-4" style=" margin-top: 21px; ">
                        <label>Kullanıcı İsim</label>
                       <input type="text" class="form-control" id="Text1" />
                    </div>
					<div class="col-xs-4" style=" margin-top: 21px; ">
                        <label>Kullanıcı Soyisim</label>
                       <input type="text" class="form-control" id="Text2" />
                    </div>

                    <div class="col-xs-4" style=" margin-top: 21px; ">
                    <label>Kullanıcı E-Posta</label>
                        <input type="text" class="form-control" id="Text3" />
                    </div>
					
					<div class="col-xs-4" style=" margin-top: 21px; margin-bottom:25px;">
					 
                        <button class="btn btn-primary" type="submit">Bilgileri Güncelle</button>
                    </div>
					
					
                </div>
			  </div>
             


                </asp:Panel>









            </div>
            
          </div>
          </div>
          </div>
</asp:Content>
