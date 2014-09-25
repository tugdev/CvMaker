<%@ Page Title="" Language="C#" MasterPageFile="~/CvMaster.Master" AutoEventWireup="true" CodeBehind="deneme.aspx.cs" Inherits="CvHazirla.deneme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     <div>
                    <div class="col-xs-4" style=" margin-top: 21px; ">
                        <label>Firma Adı</label>
                       <asp:TextBox ID="Txtbxfirmadi" class="form-control" runat="server"></asp:TextBox>
                    </div>

                	 <div class="col-xs-4" style=" margin-top: 21px; ">
                        <label>başlangıç</label>
						
                  
                         <asp:DropDownList class="form-control input-small" ID="DropDownListay4" runat="server">
                         <asp:ListItem>Ay</asp:ListItem>
                         </asp:DropDownList>

                         <asp:DropDownList class="form-control input-small" ID="DropDownListyil4" runat="server">
                         <asp:ListItem>Yıl</asp:ListItem>
                         </asp:DropDownList>


                    </div>
					 <div class="col-xs-4" style=" margin-top: 21px; ">
                         <label> bitiş </label>
                         <asp:DropDownList class="form-control input-small" ID="DropDownListay5" runat="server">
                         <asp:ListItem>Ay</asp:ListItem>
                         </asp:DropDownList>

                         <asp:DropDownList class="form-control input-small" ID="DropDownListyil5" runat="server">
                         <asp:ListItem>Yıl</asp:ListItem>
                         </asp:DropDownList>

						 <input type="checkbox" value=""/>Devam ediyorum
					     <input type="checkbox" value=""/>Terk
					
							</div>
					<div class="col-xs-4" style=" margin-top: 21px; ">
                        <label>Firmadaki Pozisyon</label>
                      <asp:TextBox ID="Txtbxfirmapzsyn" class="form-control" runat="server"></asp:TextBox>
                    </div>
					  <div class="col-xs-4" style=" margin-top: 21px; ">
                    <label>Çalışma Şekli</label>
                        <select class="form-control" id="Select2">
						  <option>seçiniz</option>
						  <option>Yarı Zamanlı</option>
						  <option>Dönemsel/Proje Bazlı</option>
						  <option>Stajyer</option>
						  <option>Tam Zamanlı</option>
						</select>
                    </div>
                </div>
			  
			  
			  </div>
              <div class="span5" style="
    height: 430px;
">
			  
			  <div>
              <div class="col-xs-4" style=" margin-top: 21px; ">
                        <label>İş tanımı/Firma Sektörü/İş Alanı Genel Bilgi</label>
                         <textarea rows="3" class="form-control" id="Textarea2"></textarea>
                    </div>
                  
					

                    <div class="col-xs-4" style=" margin-top: 21px; ">
                    <label>Şehir</label>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>   
                    </div>
					
					
					
					
                </div>
			  








</asp:Content>
