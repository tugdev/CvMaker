<%@ Page Title="" Language="C#" MasterPageFile="~/CvMaster.Master" AutoEventWireup="true" CodeBehind="CvOlustur.aspx.cs" Inherits="CvHazirla.CvOlustur" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
        <div class="col-lg-3">  
            <div class="well sidebar-nav small">    
                <h6>CV Oluştur</h6>

                 <!-- sol tab menu -->
                <div class="tabbable tabs-left">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#lA" data-toggle="tab">Kişisel Bilgiler</a></li>
                        <li><a href="#lC" data-toggle="tab">İletişim Bilgileri</a></li>
                        <li><a href="#lD" data-toggle="tab">Eğitim Bilgileri</a></li>
                        <li><a href="#lE" data-toggle="tab">İş Tecrübesi</a></li>
                        <li><a href="#lF" data-toggle="tab">Sertifika Bilgileri</a></li>
                        <li><a href="#lG" data-toggle="tab">Bilgisayar Bilgileri</a></li>
                        <li><a href="#lH" data-toggle="tab">Üye Olunan Kulüpler/Hobiler</a></li>
                        <li><a href="#lJ" data-toggle="tab">Referanslar</a></li>
                        <li><a href="#lK" data-toggle="tab">Burslar/Ödüller/Başarılar/Projeler</a></li>
                        <li><a href="#lL" data-toggle="tab">Tamamlayıcı/Özet Bilgiler</a></li>
                        <li><a href="#lM" data-toggle="tab">Yabancı Dil Bilgisi</a></li>
                        <li><a href="#lN" data-toggle="tab">Section 3</a></li>
                    </ul>

                    <!-- menu icerik kişisel bil,iletisim vs-->
                    <div class="tab-content">

                        <!--Kişisel Bilgiler -->
                        <div class="tab-pane active" id="lA">
                            <asp:UpdatePanel runat="server" ID="UpdatePanel4" UpdateMode="Conditional">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ButtonKisiselBilgiler" EventName="Click" />
                                </Triggers>
                                <ContentTemplate>
                                    <div class="bs-docs-grid">
                                        <div class="row show-grid">
                                            <div class="span4">
                                                <div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                            <ContentTemplate>
                                                                <asp:Image ID="Image1" runat="server" Height="150" Width="150" />
                                                                <asp:FileUpload ID="FileUploadResim" runat="server" Style="margin-left: 70px; margin-top: 20px;
                                                                    margin-bottom: 10px;" />
                                                                <asp:Button ID="ButtonSec" runat="server" Text="Yükle" OnClick="ButtonSec_Click"
                                                                    class="btn btn-primary" />
                                                            </ContentTemplate>
                                                            <Triggers>
                                                                <asp:PostBackTrigger ControlID="ButtonSec" />
                                                            </Triggers>
                                                        </asp:UpdatePanel>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            Ad</label>
                                                        <asp:TextBox ID="Txtbxad" class="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px; margin-bottom: 55px;">
                                                        <label>
                                                            Soyad</label>
                                                        <asp:TextBox ID="Txtbxsoyad" class="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span4">
                                                <div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            Doğum yeri</label>
                                                        <%-- <select class="form-control" id="Select1">
						          <option>erzincan</option>
						          <option>2</option>
						          <option>3</option>
						          <option>4</option>
						          <option>5</option>
						        </select>--%>
                                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            Doğum Tarihi</label>
                                                        <asp:TextBox type="date"  ID="TextboxDogumTarihi" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;" id="codebehindCinsiyet" runat="server">
                                                        <!--  cinsiyet secim   -->
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;" id="codebehindmedeniDurum" runat="server">
                                                      <!--   <label>
                                                            Medeni Durum</label>
                                                        <input type="radio" name="optionsRadiosMedeniDurum" id="Radio3" value="0" />
                                                        Bekar
                                                        <input type="radio" name="optionsRadiosMedeniDurum" id="Radio4" value="1" />
                                                        Evli -->
                                                    </div> 
                                                    <div class="col-xs-4" style="margin-top: 21px;" id="codebehindsurucuBelgesi" runat="server">
                                                        <!--  <label>
                                                            Sürücü Belgesi</label>
                                                        <input type="radio" name="optionsRadiosSurucuBelgesi" id="Radio5" value="0" />
                                                        Yok
                                                        <input type="radio" name="optionsRadiosSurucuBelgesi" id="Radio6" value="1" />
                                                        Var  -->
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px; margin-bottom: 5px;">
                                                        <label>
                                                            Ülke</label>
                                                        <asp:DropDownList ID="DropDownListulke1" runat="server">
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonKisiselBilgiler" runat="server" Text="Kaydet" 
                                    class="btn btn-primary" onclick="ButtonKisiselBilgiler_Click"/>
                            </div>
                        </div>

                        <!-- İletişim -->
                        <div class="tab-pane" id="lC">
                            <asp:UpdatePanel runat="server" ID="UpdatePanel5" UpdateMode="Conditional">
	                            <Triggers>
		                            <asp:AsyncPostBackTrigger ControlID="ButtonIletisim" EventName="Click" />
	                            </Triggers>
	                            <ContentTemplate>
                                    <div class="bs-docs-grid">
                                        <div class="row show-grid">
                                            <div class="span5">
                                                <h3>
                                                    Adres Bilgileri</h3>
                                                <div>
                                                    <table style="margin-left: 110px; margin-top: 20px; margin-bottom: 35px;" border="0">
                                                        <tr>
                                                            <td class="sol" style="width: 50px;">
                                                                <label>
                                                                    İl
                                                                </label>
                                                            </td>
                                                            <td class="sag">
                                                                <asp:DropDownList ID="DropDownListAdresIl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListAdresIl_SelectedIndexChanged"
                                                                    Style="width: 173px; height: 23px;">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="sol">
                                                                İlçe
                                                            </td>
                                                            <td class="sag">
                                                                <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                                                    <Triggers>
                                                                        <asp:AsyncPostBackTrigger ControlID="DropDownListAdresIl" EventName="SelectedIndexChanged" />
                                                                    </Triggers>
                                                                    <ContentTemplate>
                                                                        <asp:DropDownList ID="DropDownListAdresIlce" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListAdresIlce_SelectedIndexChanged"
                                                                            Style="width: 173px; height: 23px;">
                                                                        </asp:DropDownList>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="sol">
                                                                Semt
                                                            </td>
                                                            <td class="sag">
                                                                <asp:UpdatePanel runat="server" ID="UpdatePanel3" UpdateMode="Conditional">
                                                                    <Triggers>
                                                                        <asp:AsyncPostBackTrigger ControlID="DropDownListAdresIlce" EventName="SelectedIndexChanged" />
                                                                    </Triggers>
                                                                    <ContentTemplate>
                                                                        <asp:DropDownList ID="DropDownListAdresSemt" runat="server" Style="width: 173px;
                                                                            height: 23px;">
                                                                        </asp:DropDownList>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="col-xs-4" style="margin-top: 21px; margin-bottom: 150px;">
                                                        <label>
                                                            Adres</label>
                                                        <textarea name="adres"  class="form-control" cols="20" rows="3"></textarea>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span4">
                                                <h3>
                                                    Erişim Bilgileri</h3>
                                                <div>
                                                    <div class="col-xs-4" style="margin-top: 21px;" >
                                                        <label> 
                                                            cep tl1</label>
                                                        <asp:TextBox id="phone1"  tabindex="3"  runat="server"></asp:TextBox>
                                                       <%-- <input id="phone1"  tabindex="3" type="text" />--%>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;" id="codebehindIletisimCepTel2" runat="server">
                                                        
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            e-posta</label>
                                                        <asp:TextBox ID="Txtbxmail1" class="form-control" runat="server"></asp:TextBox>
                                            <!--            <asp:RequiredFieldValidator ID="reqTxtbxmail1" runat="server"
            ControlToValidate="Txtbxmail1" ErrorMessage="mail Boş Geçilemez"
            ValidationGroup="Kaydet"></asp:RequiredFieldValidator> -->
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            e-posta(2)</label>
                                                        <asp:TextBox ID="Txtbxmail2" class="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            web sayfam</label>
                                                        <asp:TextBox ID="Txtbxweb" class="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonIletisim" runat="server" ValidationGroup="Kaydet" Text="Kaydet" class="btn btn-primary" onclick="ButtonIletisim_Click"/>
                            </div>

                        </div>

                        <!-- Eğitim Bilgileri -->
                        <div class="tab-pane" id="lD">
                             <asp:UpdatePanel runat="server" ID="UpdatePanel6" UpdateMode="Conditional">
	                            <Triggers>
		                            <asp:AsyncPostBackTrigger ControlID="ButtonEgitimBilgileri" EventName="Click" />
	                            </Triggers>
	                            <ContentTemplate>
                                    <div class="bs-docs-grid">
                                        <div class="row show-grid">
                                            <div class="span5">
                                                <h3>
                                                    Eğitim Bilgisi Üniversite</h3>
                                                <div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            eğitim seviyesi</label>
                                                             <asp:DropDownList  class="form-control"  ID="DropDownListegitimseviye" runat="server">
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem>Ön Lisans</asp:ListItem>
                                                                    <asp:ListItem>Lisans</asp:ListItem>
                                                                    <asp:ListItem>Yüksek Lisans</asp:ListItem>
                                                                    <asp:ListItem>Doktora</asp:ListItem>
                                                                </asp:DropDownList>
                                                      
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            başlangıç</label>
                                                        <%--  <select class="form-control input-small" placeholder=".input-small" id="isim">
						          <option>seçiniz</option>
						          <option>ocak</option>
						          <option>şubat</option>
						          <option>aArt</option>
						          <option>Doktora</option>
						        </select>
					           <select class="form-control input-small" placeholder=".input-small" id="isim">
						          <option>seçiniz</option>
						          <option>1992</option>
						          <option>2014</option>
						          <option>Yüksek Lisans</option>
						          <option>Doktora</option>
						        </select>--%>
                                                        <asp:DropDownList class="form-control input-small" ID="DropDownListay" runat="server">
                                                            <asp:ListItem>Ay</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:DropDownList class="form-control input-small" ID="DropDownListyil" runat="server">
                                                            <asp:ListItem>Yıl</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            bitiş
                                                        </label>
                                                        <asp:DropDownList class="form-control input-small" ID="DropDownListay2" runat="server">
                                                            <asp:ListItem>Ay</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:DropDownList class="form-control input-small" ID="DropDownListyil2" runat="server">
                                                            <asp:ListItem>Yıl</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <input type="checkbox" value="" />Devam ediyorum
                                                        <input type="checkbox" value="" />Terk
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            üni adı</label>
                                                        <asp:DropDownList ID="DropDownListuniadi" runat="server">
                                                        </asp:DropDownList>
                                               <!--         <select class="form-control " name="selectuniadi">
                                                            <option value="0">- Seçiniz -</option>
                                                            <option value="1">Abant İzzet Baysal Üniversitesi</option>
                                                            <option value="207">Abdullah Gül Üniversitesi</option>
                                                            <option value="140">Acıbadem Üniversitesi</option>
                                                            <option value="2">Adıyaman Üniversitesi</option>
                                                            <option value="3">Adnan Menderes Üniversitesi</option>
                                                            <option value="4">Afyon Kocatepe Üniversitesi</option>
                                                            <option value="120">Ağrı İbrahim Çeçen Üniversitesi</option>
                                                            <option value="5">Ahi Evran Üniversitesi</option>
                                                            <option value="100">Ahmet Yesevi Üniversitesi</option>
                                                            <option value="6">Akdeniz Üniversitesi</option>
                                                            <option value="7">Aksaray Üniversitesi</option>
                                                            <option value="113">Allame Tabatabaei Üniversitesi</option>
                                                            <option value="199">Altın Koza Üniversitesi</option>
                                                            <option value="118">Amasya Üniversitesi</option>
                                                            <option value="8">Anadolu Üniversitesi</option>
                                                            <option value="9">Ankara Üniversitesi</option>
                                                            <option value="121">Ardahan Üniversitesi</option>
                                                            <option value="122">Artvin Çoruh Üniversitesi</option>
                                                            <option value="206">Ataşehir Adıgüzel Meslek Yüksekokulu</option>
                                                            <option value="10">Atatürk Üniversitesi</option>
                                                            <option value="11">Atılım Üniversitesi</option>
                                                            <option value="165">Avrasya Üniversitesi</option>
                                                            <option value="175">Avrupa Meslek Yüksekokulu</option>
                                                            <option value="181">Azerbaycan Devlet Diller Üniversitesi</option>
                                                            <option value="188">Azerbaycan Devlet İktisat Üniversitesi</option>
                                                            <option value="187">Azerbaycan Devlet Kültür Ve Güzel Sanatlar Üniversitesi</option>
                                                            <option value="186">Azerbaycan Devlet Neft Akademisi</option>
                                                            <option value="178">Azerbaycan Devlet Pedagoji Üniversitesi</option>
                                                            <option value="185">Azerbaycan Mimarlık ve İnşaat Üniversitesi</option>
                                                            <option value="109">Azerbaycan Teknik Üniversitesi</option>
                                                            <option value="12">Bahçeşehir Üniversitesi</option>
                                                            <option value="110">Bakü Devlet Üniversitesi</option>
                                                            <option value="13">Balıkesir Üniversitesi</option>
                                                            <option value="123">Bartın Üniversitesi</option>
                                                            <option value="14">Başkent Üniversitesi (Adana)</option>
                                                            <option value="172">Başkent Üniversitesi (Ankara)</option>
                                                            <option value="171">Başkent Üniversitesi (Konya)</option>
                                                            <option value="124">Batman Üniversitesi</option>
                                                            <option value="125">Bayburt Üniversitesi</option>
                                                            <option value="15">Beykent Üniversitesi</option>
                                                            <option value="158">Beykoz Lojistik Meslek Yüksekokulu</option>
                                                            <option value="160">Bezm-i Alem Vakıf Üniversitesi</option>
                                                            <option value="112">Bilecik Şeyh Edebali Üniversitesi</option>
                                                            <option value="16">Bilkent Üniversitesi</option>
                                                            <option value="126">Bingöl Üniversitesi</option>
                                                            <option value="127">Bitlis Eren Üniversitesi</option>
                                                            <option value="17">Boğaziçi Üniversitesi</option>
                                                            <option value="18">Bozok Üniversitesi</option>
                                                            <option value="198">Bursa Orhangazi Üniversitesi</option>
                                                            <option value="189">Bursa Teknik Üniversitesi</option>
                                                            <option value="96">Bülent Ecevit Üniversitesi</option>
                                                            <option value="197">Canik Başarı Üniversitesi</option>
                                                            <option value="19">Celal Bayar Üniversitesi</option>
                                                            <option value="20">Cumhuriyet Üniversitesi</option>
                                                            <option value="21">Çağ Üniversitesi</option>
                                                            <option value="97">Çanakkale Onsekiz Mart Üniversitesi</option>
                                                            <option value="22">Çankaya Üniversitesi</option>
                                                            <option value="102">Çankırı Karatekin Üniversitesi</option>
                                                            <option value="23">Çukurova Üniversitesi</option>
                                                            <option value="192">Deniz Astsubay Meslek Yüksek Okulu</option>
                                                            <option value="114">Deniz Harp Okulu</option>
                                                            <option value="24">Dicle Üniversitesi</option>
                                                            <option value="25">Doğu Akdeniz Üniversitesi</option>
                                                            <option value="26">Doğuş Üniversitesi</option>
                                                            <option value="27">Dokuz Eylül Üniversitesi</option>
                                                            <option value="183">Donetsk Milli Teknik Üniversitesi</option>
                                                            <option value="28">Dumlupınar Üniversitesi</option>
                                                            <option value="103">Düzce Üniversitesi</option>
                                                            <option value="29">Ege Üniversitesi</option>
                                                            <option value="30">Erciyes Üniversitesi</option>
                                                            <option value="31">Erzincan Üniversitesi</option>
                                                            <option value="191">Erzurum Teknik Üniversitesi</option>
                                                            <option value="78">Eskişehir Osmangazi Üniversitesi</option>
                                                            <option value="174">Faruk Saraç Tasarım Meslek Yüksekokulu</option>
                                                            <option value="177">Fatih Sultan Mehmet Vakıf Üniversitesi</option>
                                                            <option value="32">Fatih Üniversitesi</option>
                                                            <option value="33">Fırat Üniversitesi</option>
                                                            <option value="34">Galatasaray Üniversitesi</option>
                                                            <option value="35">Gazi Üniversitesi</option>
                                                            <option value="76">Gaziantep Üniversitesi</option>
                                                            <option value="141">Gazikent Üniversitesi</option>
                                                            <option value="36">Gaziosmanpaşa Üniversitesi</option>
                                                            <option value="37">Gebze Yüksek Teknoloji Enstitüsü</option>
                                                            <option value="164">Gedik Üniversitesi</option>
                                                            <option value="142">Gediz Üniversitesi</option>
                                                            <option value="38">Giresun Üniversitesi</option>
                                                            <option value="39">Girne Amerikan Üniversitesi</option>
                                                            <option value="156">Gülhane Askeri Tıp Akademisi</option>
                                                            <option value="128">Gümüşhane Üniversitesi</option>
                                                            <option value="40">Hacettepe Üniversitesi</option>
                                                            <option value="129">Hakkari Üniversitesi</option>
                                                            <option value="41">Haliç Üniversitesi</option>
                                                            <option value="42">Harran Üniversitesi</option>
                                                            <option value="116">Hava Harp Okulu</option>
                                                            <option value="43">Hitit Üniversitesi</option>
                                                            <option value="130">Iğdır Üniversitesi</option>
                                                            <option value="44">Işık Üniversitesi</option>
                                                            <option value="180">İlke Eğitim ve Sağlık Vakfı</option>
                                                            <option value="45">İnönü Üniversitesi</option>
                                                            <option value="208">İpek Üniversitesi</option>
                                                            <option value="162">İstanbul 29 Mayıs Üniversitesi</option>
                                                            <option value="105">İstanbul Arel Üniversitesi</option>
                                                            <option value="46">İstanbul Aydın Üniversitesi</option>
                                                            <option value="47">İstanbul Bilgi Üniversitesi</option>
                                                            <option value="48">İstanbul Bilim Üniversitesi</option>
                                                            <option value="159">İstanbul Gelişim Üniversitesi</option>
                                                            <option value="176">İstanbul Kavram Meslek Yüksekokulu</option>
                                                            <option value="143">İstanbul Kemerburgaz Üniversitesi</option>
                                                            <option value="49">İstanbul Kültür Üniversitesi</option>
                                                            <option value="203">İstanbul Medeniyet Üniversitesi</option>
                                                            <option value="144">İstanbul Medipol Üniversitesi</option>
                                                            <option value="195">İstanbul Sabahattin Zaim Üniversitesi</option>
                                                            <option value="145">İstanbul Şehir Üniversitesi</option>
                                                            <option value="50">İstanbul Teknik Üniversitesi</option>
                                                            <option value="51">İstanbul Ticaret Üniversitesi</option>
                                                            <option value="52">İstanbul Üniversitesi</option>
                                                            <option value="53">İzmir Ekonomi Üniversitesi</option>
                                                            <option value="167">İzmir Katip Çelebi Üniversitesi</option>
                                                            <option value="146">İzmir Üniversitesi</option>
                                                            <option value="98">İzmir Yüksek Teknoloji Enstitüsü</option>
                                                            <option value="54">Kadir Has Üniversitesi</option>
                                                            <option value="57">Kafkas Üniversitesi</option>
                                                            <option value="64">Kahramanmaraş Sütçü İmam Üniversitesi</option>
                                                            <option value="55">Kapadokya Meslek Yüksekokulu</option>
                                                            <option value="115">Kara Harp Okulu</option>
                                                            <option value="107">Karabük Üniversitesi</option>
                                                            <option value="56">Karadeniz Teknik Üniversitesi</option>
                                                            <option value="111">Karamanoğlu Mehmetbey Üniversitesi</option>
                                                            <option value="147">Karatay Üniversitesi</option>
                                                            <option value="99">Kastamonu Üniversitesi</option>
                                                            <option value="58">Kırgızistan Türkiye Manas Üniversitesi</option>
                                                            <option value="59">Kırıkkale Üniversitesi</option>
                                                            <option value="108">Kırklareli Üniversitesi</option>
                                                            <option value="131">Kilis 7 Aralık Üniversitesi</option>
                                                            <option value="60">Kocaeli Üniversitesi</option>
                                                            <option value="61">Koç Üniversitesi</option>
                                                            <option value="194">Konya Üniversitesi</option>
                                                            <option value="182">Korkut Ata Kızılorda Devlet Üniversitesi</option>
                                                            <option value="184">l.Mechnikov Odessa Milli Üniversitesi</option>
                                                            <option value="62">Lefke Avrupa Üniversitesi</option>
                                                            <option value="63">Maltepe Üniversitesi</option>
                                                            <option value="132">Mardin Artuklu Üniversitesi</option>
                                                            <option value="65">Marmara Üniversitesi</option>
                                                            <option value="66">Mehmet Akif Ersoy Üniversitesi</option>
                                                            <option value="148">Melikşah Üniversitesi</option>
                                                            <option value="67">Mersin Üniversitesi</option>
                                                            <option value="149">Mevlana Üniversitesi</option>
                                                            <option value="68">Mimar Sinan Güzel Sanatlar Üniversitesi</option>
                                                            <option value="69">Muğla Sıtkı Koçman Üniversitesi</option>
                                                            <option value="70">Mustafa Kemal Üniversitesi</option>
                                                            <option value="133">Muş Alparslan Üniversitesi</option>
                                                            <option value="179">Nahcivan Devlet Üniversitesi</option>
                                                            <option value="71">Namık Kemal Üniversitesi</option>
                                                            <option value="190">Necmettin Erbakan Üniversitesi</option>
                                                            <option value="72">Nevşehir Üniversitesi</option>
                                                            <option value="73">Niğde Üniversitesi</option>
                                                            <option value="173">Nişantaşı Üniversitesi</option>
                                                            <option value="168">Nuh Naci Yazgan Üniversitesi</option>
                                                            <option value="74">Okan Üniversitesi</option>
                                                            <option value="75">Ondokuz Mayıs Üniversitesi</option>
                                                            <option value="134">Ordu Üniversitesi</option>
                                                            <option value="77">Orta Doğu Teknik Üniversitesi</option>
                                                            <option value="135">Osmaniye Korkut Ata Üniversitesi</option>
                                                            <option value="117">Özyeğin Üniversitesi</option>
                                                            <option value="79">Pamukkale Üniversitesi</option>
                                                            <option value="150">Piri Reis Üniversitesi</option>
                                                            <option value="161">Plato Meslek Yüksekokulu</option>
                                                            <option value="157">Polis Akademisi</option>
                                                            <option value="80">Recep Tayyip Erdoğan Üniversitesi</option>
                                                            <option value="81">Sabancı Üniversitesi</option>
                                                            <option value="82">Sakarya Üniversitesi</option>
                                                            <option value="83">Selçuk Üniversitesi</option>
                                                            <option value="136">Siirt Üniversitesi</option>
                                                            <option value="101">Sinop Üniversitesi</option>
                                                            <option value="106">Sofya Teknik Üniversitesi</option>
                                                            <option value="84">Süleyman Demirel Üniversitesi</option>
                                                            <option value="166">Süleyman Şah Üniversitesi</option>
                                                            <option value="137">Şırnak Üniversitesi</option>
                                                            <option value="170">Şifa Üniversitesi</option>
                                                            <option value="200">Şişli Meslek Yüksekokulu</option>
                                                            <option value="151">TED Üniversitesi</option>
                                                            <option value="85">Tobb Ekonomi ve Teknoloji Üniversitesi</option>
                                                            <option value="152">Toros Üniversitesi</option>
                                                            <option value="86">Trakya Üniversitesi</option>
                                                            <option value="138">Tunceli Üniversitesi</option>
                                                            <option value="155">Turgut Özal Üniversitesi</option>
                                                            <option value="169">Türk Hava Kurumu Üniversitesi</option>
                                                            <option value="204">Türk-Alman Üniversitesi</option>
                                                            <option value="87">Ufuk Üniversitesi</option>
                                                            <option value="88">Uludağ Üniversitesi</option>
                                                            <option value="193">Uluslararası Antalya Üniversitesi</option>
                                                            <option value="201">Uluslararası Balkan Üniversitesi</option>
                                                            <option value="89">Uluslararası Kıbrıs Üniversitesi</option>
                                                            <option value="205">Uluslararası Saraybosna Üniversitesi</option>
                                                            <option value="90">Uşak Üniversitesi</option>
                                                            <option value="202">Üsküdar Üniversitesi</option>
                                                            <option value="104">Varna Teknik Üniversitesi</option>
                                                            <option value="119">Varna Tıp Üniversitesi</option>
                                                            <option value="92">Yakın Doğu Üniversitesi</option>
                                                            <option value="139">Yalova Üniversitesi</option>
                                                            <option value="93">Yaşar Üniversitesi</option>
                                                            <option value="94">Yeditepe Üniversitesi</option>
                                                            <option value="153">Yeni Yüzyıl Üniversitesi</option>
                                                            <option value="163">Yıldırım Beyazıt Üniversitesi</option>
                                                            <option value="95">Yıldız Teknik Üniversitesi</option>
                                                            <option value="91">Yüzüncü Yıl Üniversitesi</option>
                                                            <option value="154">Zirve Üniversitesi</option>
                                                        </select> -->

                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            şehir</label>
                                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            bölüm</label>
                                                        <asp:DropDownList ID="DropDownListbolumadi" runat="server">
                                                        </asp:DropDownList>
                    <!--                                    <select class="form-control " name="selectbolumadi">
                                                            <option value="0">- Seçiniz -</option>
                                                            <option value="140">Acil Durum ve Afet Yönetimi</option>
                                                            <option value="2042">Acil Yardım ve Afet Yönetimi</option>
                                                            <option value="82">Adalet</option>
                                                            <option value="64">Adalet Meslek Yüksekokulu</option>
                                                            <option value="5305">Ağaç İşleri Endüstri Mühendisliği</option>
                                                            <option value="75">Ağız ve Diş Sağlığı</option>
                                                            <option value="354">Aile Ekonomisi ve Beslenme Öğretmenliği</option>
                                                            <option value="3764">Aile ve Tüketici Bilimleri</option>
                                                            <option value="419">Aile ve Tüketici Bilimleri Öğretmenliği</option>
                                                            <option value="268">Aksesuar Tasarımı</option>
                                                            <option value="5855">Aktüerya</option>
                                                            <option value="3758">Aktüerya Bilimleri</option>
                                                            <option value="877">Alman Dili ve Edebiyatı</option>
                                                            <option value="828">Almanca Öğretmenliği</option>
                                                            <option value="108">Alterbatif Enerji Kaynakları Teknolojisi</option>
                                                            <option value="109">Ameliyathane Hizmetleri</option>
                                                            <option value="878">Amerikan Kültürü ve Edebiyatı</option>
                                                            <option value="66">Anestezi</option>
                                                            <option value="8286">Animasyon</option>
                                                            <option value="286">Ankara Devlet Konservatuvarı</option>
                                                            <option value="198">Antrenörlük Eğitimi</option>
                                                            <option value="331">Antrenörlük Eğitimi ve Spor Yöneticiliği</option>
                                                            <option value="666">Antropoloji</option>
                                                            <option value="880">Arap Dili ve Edebiyatı</option>
                                                            <option value="3267">Arapça Öğretmenliği</option>
                                                            <option value="123">Arıcılık</option>
                                                            <option value="522">Arkeoloji</option>
                                                            <option value="5552">Arkeoloji ve Sanat Tarihi</option>
                                                            <option value="7353">Arnavutça</option>
                                                            <option value="230">Arp</option>
                                                            <option value="394">Asfaltit ve Petrol-Gaz Üretiminin Fiziki Süreçleri</option>
                                                            <option value="387">Astronomi</option>
                                                            <option value="923">Astronomi ve Uzay Bilimleri</option>
                                                            <option value="1">Aşçılık</option>
                                                            <option value="1259">Avrupa Birliği İlişkileri</option>
                                                            <option value="126">Ayakkabı Tasarım ve Üretimi</option>
                                                            <option value="5090">Azerbaycan Türkçesi ve Edebiyatı</option>
                                                            <option value="185">Bağcılık</option>
                                                            <option value="557">Bahçe Bitkileri</option>
                                                            <option value="5681">Bahçe Bitkileri Üretimi ve Pazarlaması</option>
                                                            <option value="55">Bahçe Tarımı</option>
                                                            <option value="279">Bale</option>
                                                            <option value="287">Bale Dansçılığı</option>
                                                            <option value="2079">Balıkçılık Teknolojisi</option>
                                                            <option value="5314">Balıkçılık Teknolojisi Mühendisliği</option>
                                                            <option value="288">Bando Şefliği</option>
                                                            <option value="1494">Bankacılık</option>
                                                            <option value="1330">Bankacılık ve Finans</option>
                                                            <option value="3685">Bankacılık ve Finansman</option>
                                                            <option value="19">Bankacılık ve Sigortacılık</option>
                                                            <option value="86">Basım ve Yayın Teknolojileri</option>
                                                            <option value="861">Basın ve Yayın</option>
                                                            <option value="161">Basın ve Yayıncılık</option>
                                                            <option value="236">Baskı Sanatları</option>
                                                            <option value="398">Batı Dilleri</option>
                                                            <option value="199">Beden Eğitimi ve Spor Öğretmenliği</option>
                                                            <option value="565">Beslenme ve Diyetetik</option>
                                                            <option value="326">Bileşik Sanatlar</option>
                                                            <option value="345">Bilgi Teknolojileri</option>
                                                            <option value="881">Bilgi ve Belge Yönetimi</option>
                                                            <option value="41">Bilgi Yönetimi</option>
                                                            <option value="418">Bilgisayar Bilimleri</option>
                                                            <option value="78">Bilgisayar Destekli Tasarım ve Animasyon</option>
                                                            <option value="417">Bilgisayar Donanımı ve Teknolojisi</option>
                                                            <option value="865">Bilgisayar Mühendisliği</option>
                                                            <option value="183">Bilgisayar Operatörlüğü</option>
                                                            <option value="338">Bilgisayar Öğretmenliği</option>
                                                            <option value="2">Bilgisayar Programcılığı</option>
                                                            <option value="337">Bilgisayar Sistemleri Öğretmenliği</option>
                                                            <option value="372">Bilgisayar Sistemleri ve Ağları</option>
                                                            <option value="162">Bilgisayar Teknolojisi</option>
                                                            <option value="1746">Bilgisayar Teknolojisi ve Bilişim Sistemleri</option>
                                                            <option value="334">Bilgisayar Teknolojisi ve Programlama</option>
                                                            <option value="407">Bilgisayar Uygulamalı Ekonomi</option>
                                                            <option value="5635">Bilgisayar ve Enformasyon Sistemleri</option>
                                                            <option value="360">Bilgisayar ve Kontrol Öğretmenliği</option>
                                                            <option value="423">Bilgisayar ve Öğretim Teknolojileri Öğretmenliği</option>
                                                            <option value="7715">Bilgisayar-Enformatik</option>
                                                            <option value="4768">Bilim Tarihi</option>
                                                            <option value="8275">Bilim ve Teknoloji Politikası Çalışmaları</option>
                                                            <option value="1181">Bilişim Sistemleri Mühendisliği</option>
                                                            <option value="6493">Bilişim Sistemleri ve Teknolojileri</option>
                                                            <option value="130">Bitki Koruma</option>
                                                            <option value="7643">Bitkisel Üretim ve Teknolojileri</option>
                                                            <option value="2751">Biyokimya</option>
                                                            <option value="440">Biyoloji</option>
                                                            <option value="1058">Biyoloji Öğretmenliği</option>
                                                            <option value="28">Biyomedikal Cihaz Teknolojisi</option>
                                                            <option value="1466">Biyomedikal Mühendisliği</option>
                                                            <option value="2781">Biyomühendislik</option>
                                                            <option value="3499">Biyosistem Mühendisliği</option>
                                                            <option value="927">Biyoteknoloji</option>
                                                            <option value="7354">Boşnakça</option>
                                                            <option value="177">Boya Teknolojisi</option>
                                                            <option value="355">Bölge Bilim</option>
                                                            <option value="882">Bulgar Dili ve Edebiyatı</option>
                                                            <option value="353">Büro Yönetimi Öğretmenliği</option>
                                                            <option value="20">Büro Yönetimi ve Yönetici Asistanlığı</option>
                                                            <option value="106">Büyük ve Küçükbaş Hayvan Yetiştiriciliği</option>
                                                            <option value="237">Cam</option>
                                                            <option value="269">Canlandırma Filmi Tasarım ve Yönetimi</option>
                                                            <option value="289">Caz</option>
                                                            <option value="4675">Cevher Hazırlama Mühendisliği</option>
                                                            <option value="153">Coğrafi Bilgi Sistemleri</option>
                                                            <option value="581">Coğrafya</option>
                                                            <option value="1059">Coğrafya Öğretmenliği</option>
                                                            <option value="583">Çağdaş Türk Lehçeleri ve Edebiyatları</option>
                                                            <option value="885">Çağdaş Yunan Dili ve Edebiyatı</option>
                                                            <option value="145">Çağrı Merkezi Hizmetleri</option>
                                                            <option value="282">Çalgı</option>
                                                            <option value="281">Çalgı Yapımı</option>
                                                            <option value="733">Çalışma Ekonomisi ve Endüstri İlişkileri</option>
                                                            <option value="187">Çay Eksperliği</option>
                                                            <option value="1799">Çeviribilim</option>
                                                            <option value="395">Çevre Bilimleri ve Yönetimi</option>
                                                            <option value="8259">Çevre Kirlenmesi ve Kontrolü</option>
                                                            <option value="56">Çevre Koruma ve Kontrol</option>
                                                            <option value="464">Çevre Mühendisliği</option>
                                                            <option value="91">Çevre Sağlığı</option>
                                                            <option value="178">Çevre Temizliği ve Denetim</option>
                                                            <option value="397">Çiçek, Örgü, Dokuma Öğretmenliği</option>
                                                            <option value="2804">Çin Dili ve Edebiyatı</option>
                                                            <option value="262">Çini</option>
                                                            <option value="238">Çizgi Film</option>
                                                            <option value="16">Çocuk Gelişimi</option>
                                                            <option value="379">Çocuk Gelişimi ve Eğitimi Öğretmenliği</option>
                                                            <option value="195">Çorap ve Moda Tasarımı</option>
                                                            <option value="328">Dans</option>
                                                            <option value="385">Dekoratif Sanatlar Öğretmenliği</option>
                                                            <option value="7698">Deniz İşletmeciliği ve Yönetimi</option>
                                                            <option value="367">Deniz Teknolojisi Mühendisliği</option>
                                                            <option value="2576">Deniz Ulaştırma İşletme Mühendisliği</option>
                                                            <option value="164">Deniz Ulaştırma ve İşletme</option>
                                                            <option value="101">Deniz ve Liman İşletmeciliği</option>
                                                            <option value="2579">Denizcilik İşletmeleri Yönetimi</option>
                                                            <option value="413">Denizde Petrol ve Gaz Üretim Araçları</option>
                                                            <option value="2782">Deri Mühendisliği</option>
                                                            <option value="127">Deri Teknolojisi</option>
                                                            <option value="391">Dericilik</option>
                                                            <option value="42">Dış Ticaret</option>
                                                            <option value="886">Dilbilim</option>
                                                            <option value="4772">Dilbilimi</option>
                                                            <option value="352">Din Kültürü ve Ahlak Bilgisi Öğretmenliği</option>
                                                            <option value="422">Diş Hekimliği</option>
                                                            <option value="77">Diş Protez Teknolojisi</option>
                                                            <option value="97">Diyaliz</option>
                                                            <option value="29">Doğal Yapı Taşları Teknolojisi</option>
                                                            <option value="182">Doğalgaz ve Tesisatı Teknolojisi</option>
                                                            <option value="167">Döküm</option>
                                                            <option value="369">Döküm Öğretmenliği</option>
                                                            <option value="297">Drama ve Oyunculuk</option>
                                                            <option value="317">Dramatik Yazarlık</option>
                                                            <option value="270">Dramatik Yazarlık-Dramaturji</option>
                                                            <option value="327">Duysal Sanatları Tasarımı</option>
                                                            <option value="936">Dünya Dinleri</option>
                                                            <option value="389">E-Ticaret</option>
                                                            <option value="507">Ebelik</option>
                                                            <option value="820">Eczacılık</option>
                                                            <option value="67">Eczane Hizmetleri</option>
                                                            <option value="405">Edebiyat</option>
                                                            <option value="8270">Eğitim Programları ve Öğretim</option>
                                                            <option value="8276">Eğitim Teknolojisi</option>
                                                            <option value="734">Ekonometri</option>
                                                            <option value="1261">Ekonomi</option>
                                                            <option value="2503">Ekonomi ve Finans</option>
                                                            <option value="8285">El Sanatları Öğretmenliği</option>
                                                            <option value="284">El Sanatları Tasarım ve Üretimi</option>
                                                            <option value="3336">El Sanatları Tasarımı ve Üretimi</option>
                                                            <option value="3">Elektrik</option>
                                                            <option value="115">Elektrik Cihaz Teknolojisi</option>
                                                            <option value="87">Elektrik Enerjisi Üretim,İletim ve Dağıtımı</option>
                                                            <option value="4624">Elektrik Mühendisliği</option>
                                                            <option value="341">Elektrik Öğretmenliği</option>
                                                            <option value="465">Elektrik-Elektronik Mühendisliği</option>
                                                            <option value="945">Elektronik Mühendisliği</option>
                                                            <option value="340">Elektronik Öğretmenliği</option>
                                                            <option value="30">Elektronik Teknolojisi</option>
                                                            <option value="357">Elektronik ve Bilgisayar Öğretmenliği</option>
                                                            <option value="1619">Elektronik ve Haberleşme Mühendisliği</option>
                                                            <option value="356">Elektronik ve Haberleşme Öğretmenliği</option>
                                                            <option value="62">Elektronik ve Haberleşme Teknolojisi</option>
                                                            <option value="34">Elektronörofizyoloji</option>
                                                            <option value="110">Emlak ve Emlak Yönetimi</option>
                                                            <option value="868">Endüstri Mühendisliği</option>
                                                            <option value="4942">Endüstri Sistemleri Mühendisliği</option>
                                                            <option value="322">Endüstri Tasarımı</option>
                                                            <option value="251">Endüstri Ürünleri Tasarım</option>
                                                            <option value="1290">Endüstri Ürünleri Tasarımı</option>
                                                            <option value="188">Endüstriyel Bitkiler Yetiştiriciliği</option>
                                                            <option value="170">Endüstriyel Cam ve Seramik</option>
                                                            <option value="336">Endüstriyel Elektronik</option>
                                                            <option value="85">Endüstriyel Kalıpçılık</option>
                                                            <option value="347">Endüstriyel Otomasyon</option>
                                                            <option value="840">Endüstriyel Tasarım</option>
                                                            <option value="358">Endüstriyel Teknoloji Öğretmenliği</option>
                                                            <option value="88">Endüstriyel Ürünleri Tasarımı</option>
                                                            <option value="400">Enerji Öğretmenliği</option>
                                                            <option value="1195">Enerji Sistemleri Mühendisliği</option>
                                                            <option value="193">Enerji Tesisleri İşletmeciliği</option>
                                                            <option value="3930">Enformasyon Teknolojileri</option>
                                                            <option value="8278">Engelli Bakımı ve Rehabilitasyon</option>
                                                            <option value="296">Engellilerde Egzersiz ve Spor Eğitimi</option>
                                                            <option value="3787">Ergoterapi</option>
                                                            <option value="2805">Ermeni Dili ve Edebiyatı</option>
                                                            <option value="65">Eser Koruma</option>
                                                            <option value="271">Eski Çini Onarımları</option>
                                                            <option value="700">Eski Yunan Dili ve Edebiyatı</option>
                                                            <option value="981">Eşit Ağırlıklı Programlar</option>
                                                            <option value="31">Et ve Ürünleri Teknolojisi</option>
                                                            <option value="152">Ev İdaresi</option>
                                                            <option value="184">Evde Hasta Bakımı</option>
                                                            <option value="302">Fagot</option>
                                                            <option value="887">Fars Dili ve Edebiyatı</option>
                                                            <option value="526">Felsefe</option>
                                                            <option value="1060">Felsefe Grubu Öğretmenliği</option>
                                                            <option value="424">Fen Bilgisi Öğretmenliği</option>
                                                            <option value="406">Fermantasyon Teknikerliği</option>
                                                            <option value="160">Fındık Eksperliği</option>
                                                            <option value="131">Fidan Yetiştiriciliği</option>
                                                            <option value="272">Film Tasarım ve Yazarlık</option>
                                                            <option value="273">Film Tasarım ve Yazarlık Yönetmenliği</option>
                                                            <option value="7840">Film Tasarımı</option>
                                                            <option value="8261">Finans</option>
                                                            <option value="4297">Finans Matematiği</option>
                                                            <option value="442">Fizik</option>
                                                            <option value="946">Fizik Mühendisliği</option>
                                                            <option value="1063">Fizik Öğretmenliği</option>
                                                            <option value="35">Fizyoterapi</option>
                                                            <option value="463">Fizyoterapi ve Rehabilitasyon</option>
                                                            <option value="303">Flüt</option>
                                                            <option value="333">Fortepiano</option>
                                                            <option value="219">Fotoğraf</option>
                                                            <option value="252">Fotoğraf ve Video</option>
                                                            <option value="129">Fotoğrafçılık ve Kameramanlık</option>
                                                            <option value="528">Fransız Dili ve Edebiyatı</option>
                                                            <option value="830">Fransızca Öğretmenliği</option>
                                                            <option value="2080">Gastronomi</option>
                                                            <option value="323">Gastronomi ve Mutfak Sanatları</option>
                                                            <option value="5068">Gayrimenkul ve Varlık Değerleme</option>
                                                            <option value="44">Gaz ve Tesisatı Teknolojisi</option>
                                                            <option value="740">Gazetecilik</option>
                                                            <option value="60">Geleneksel El Sanatları</option>
                                                            <option value="248">Geleneksel Türk El Sanatları</option>
                                                            <option value="320">Geleneksel Türk Müziği</option>
                                                            <option value="283">Geleneksel Türk Sanatları</option>
                                                            <option value="112">Gemi İnşaatı</option>
                                                            <option value="4637">Gemi İnşaatı ve Gemi Makineleri Mühendisliği</option>
                                                            <option value="165">Gemi Makineleri İşletme</option>
                                                            <option value="2583">Gemi Makineleri İşletme Mühendisliği</option>
                                                            <option value="4639">Gemi ve Deniz Teknolojisi Mühendisliği</option>
                                                            <option value="5781">Gemi ve Yat Tasarımı</option>
                                                            <option value="8262">Gemoloji</option>
                                                            <option value="231">Genel Müzikoloji</option>
                                                            <option value="1242">Genetik ve Biyoinformatik</option>
                                                            <option value="3136">Genetik ve Biyomühendislik</option>
                                                            <option value="1965">Geomatik Mühendisliği</option>
                                                            <option value="139">Geoteknik</option>
                                                            <option value="703">Gerontoloji</option>
                                                            <option value="117">Gıda Kalite Kontrolü ve Analizi</option>
                                                            <option value="466">Gıda Mühendisliği</option>
                                                            <option value="4">Gıda Teknolojisi</option>
                                                            <option value="6744">Girişimcilik</option>
                                                            <option value="213">Gitar</option>
                                                            <option value="383">Giyim Endüstrisi Öğretmenliği</option>
                                                            <option value="363">Giyim Öğretmenliği</option>
                                                            <option value="83">Giyim Üretim Teknolojisi</option>
                                                            <option value="3276">Görme Engelliler Öğretmenliği</option>
                                                            <option value="1606">Görsel İletişim</option>
                                                            <option value="267">Görsel İletişim Tasarımı</option>
                                                            <option value="294">Görsel Sanatlar</option>
                                                            <option value="332">Görsel Sanatlar ve Görsel İletişim Tasarımı</option>
                                                            <option value="220">Grafik</option>
                                                            <option value="234">Grafik Sanatlar</option>
                                                            <option value="295">Grafik Sanatlar ve Grafik Tasarım</option>
                                                            <option value="84">Grafik Tasarım</option>
                                                            <option value="3338">Grafik Tasarımı</option>
                                                            <option value="7400">Gümrük İşletme</option>
                                                            <option value="5093">Gürcü Dili ve Edebiyatı</option>
                                                            <option value="8264">Güvenlik Bilimleri</option>
                                                            <option value="3622">Güverte</option>
                                                            <option value="221">Halı,Kilim ve Eski Kumaş Desenleri</option>
                                                            <option value="48">Halıcılık ve Kilimcilik</option>
                                                            <option value="890">Halkbilim</option>
                                                            <option value="1275">Halkla İlişkiler</option>
                                                            <option value="862">Halkla İlişkiler ve Reklamcılık</option>
                                                            <option value="57">Halkla İlişkiler ve Tanıtım</option>
                                                            <option value="611">Harita Mühendisliği</option>
                                                            <option value="22">Harita ve Kadastro</option>
                                                            <option value="196">Hava Lojistiği</option>
                                                            <option value="8274">Hava Trafik</option>
                                                            <option value="240">Hava Trafik Kontrol</option>
                                                            <option value="873">Havacılık Elektrik ve Elektroniği</option>
                                                            <option value="6710">Havacılık ve Uzay Mühendisliği</option>
                                                            <option value="197">Havacılıkta Yer Hizmetleri Yönetimi</option>
                                                            <option value="421">Hemşirelik</option>
                                                            <option value="1484">Hemşirelik ve Sağlık Hizmetleri</option>
                                                            <option value="223">Heykel</option>
                                                            <option value="3779">Hidrojeoloji Mühendisliği</option>
                                                            <option value="891">Hindoloji</option>
                                                            <option value="892">Hititoloji</option>
                                                            <option value="732">Hukuk</option>
                                                            <option value="893">Hungaroloji</option>
                                                            <option value="2806">İbrani Dili ve Edebiyatı</option>
                                                            <option value="175">İç Mekan Tasarımı</option>
                                                            <option value="239">İç Mimarlık</option>
                                                            <option value="222">İç Mimarlık ve Çevre Tasarımı</option>
                                                            <option value="45">İklimlendirme ve Soğutma Teknolojisi</option>
                                                            <option value="100">İkram Hizmetleri</option>
                                                            <option value="8280">İktisadi ve Mali Analiz</option>
                                                            <option value="227">İktisat</option>
                                                            <option value="146">İlahiyat</option>
                                                            <option value="3235">İletişim</option>
                                                            <option value="2488">İletişim Bilimleri</option>
                                                            <option value="4534">İletişim Sanatları</option>
                                                            <option value="1278">İletişim Tasarımı</option>
                                                            <option value="863">İletişim Tasarımı ve Yönetimi</option>
                                                            <option value="258">İletişim ve Tasarım</option>
                                                            <option value="54">İlk ve Acil Yardım</option>
                                                            <option value="632">İlköğretim Din Kültürü ve Ahlak Bilgisi Öğretmenliği</option>
                                                            <option value="426">İlköğretim Matematik Öğretmenliği</option>
                                                            <option value="1199">İmalat Mühendisliği</option>
                                                            <option value="3734">İngiliz Dil Bilimi</option>
                                                            <option value="776">İngiliz Dili ve Edebiyatı</option>
                                                            <option value="5554">İngiliz Dili ve Karşılaştırmalı Edebiyat</option>
                                                            <option value="428">İngilizce Öğretmenliği</option>
                                                            <option value="43">İnsan Kaynakları Yönetimi</option>
                                                            <option value="3934">İnsan ve Toplum Bilimleri</option>
                                                            <option value="746">İnşaat Mühendisliği</option>
                                                            <option value="5">İnşaat Teknolojisi</option>
                                                            <option value="163">İnternet Ağve Teknolojileri</option>
                                                            <option value="138">İpek Böcekçiliği</option>
                                                            <option value="4062">İslam ve Din Bilimleri</option>
                                                            <option value="3004">İslami İlimler</option>
                                                            <option value="895">İspanyol Dili ve Edebiyatı</option>
                                                            <option value="586">İstatistik</option>
                                                            <option value="5259">İstatistik ve Bilgisayar Bilimleri</option>
                                                            <option value="50">İş Makineleri Operatörlüğü</option>
                                                            <option value="79">İş Sağlığı ve Güvenliği</option>
                                                            <option value="180">İş ve Uğraşı Terapisi</option>
                                                            <option value="834">İşitme Engelliler Öğretmenliği</option>
                                                            <option value="229">İşletme</option>
                                                            <option value="1748">İşletme Bilgi Yönetimi</option>
                                                            <option value="8271">İşletme Eğitimi</option>
                                                            <option value="3820">İşletme Enformatiği</option>
                                                            <option value="1634">İşletme Mühendisliği</option>
                                                            <option value="8260">İşletme Öğretmenliği</option>
                                                            <option value="6">İşletme Yönetimi</option>
                                                            <option value="4339">İşletme-Ekonomi</option>
                                                            <option value="896">İtalyan Dili ve Edebiyatı</option>
                                                            <option value="897">Japon Dili ve Edebiyatı</option>
                                                            <option value="2054">Japonca Öğretmenliği</option>
                                                            <option value="8258">Jeodezi ve Fotogrametri Mühendisliği</option>
                                                            <option value="388">Jeodezi ve Haritacılık</option>
                                                            <option value="948">Jeofizik Mühendisliği</option>
                                                            <option value="747">Jeoloji Mühendisliği</option>
                                                            <option value="176">Kağıt Teknolojisi</option>
                                                            <option value="377">Kalıpçılık Öğretmenliği</option>
                                                            <option value="228">Kamu Yönetimi</option>
                                                            <option value="2954">Karşılaştırmalı Edebiyat</option>
                                                            <option value="89">Kaynak Teknolojisi</option>
                                                            <option value="242">Keman</option>
                                                            <option value="1705">Kentsel Tasarım ve Peyzaj Mimarisi</option>
                                                            <option value="444">Kimya</option>
                                                            <option value="613">Kimya Mühendisliği</option>
                                                            <option value="1207">Kimya Mühendisliği ve Uygulamalı Kimya</option>
                                                            <option value="1070">Kimya Öğretmenliği</option>
                                                            <option value="47">Kimya Teknolojisi</option>
                                                            <option value="1685">Kimya ve Süreç Mühendisliği</option>
                                                            <option value="5581">Kimya-Biyoloji Mühendisliği</option>
                                                            <option value="304">Klarnet</option>
                                                            <option value="898">Klasik Arkeoloji</option>
                                                            <option value="214">Klasik Bale</option>
                                                            <option value="290">Kompozisyon</option>
                                                            <option value="253">Kompozisyon ve Müzik Teorisi</option>
                                                            <option value="280">Kompozisyon ve Orkestra Şefliği</option>
                                                            <option value="549">Konaklama İşletmeciliği</option>
                                                            <option value="370">Konaklama İşletmeciliği Öğretmenliği</option>
                                                            <option value="3688">Konaklama ve Turizm İşletmeciliği</option>
                                                            <option value="243">Kontrabas</option>
                                                            <option value="2539">Kontrol Mühendisliği</option>
                                                            <option value="402">Kontrol Öğretmenliği</option>
                                                            <option value="8070">Kontrol ve Otomasyon Mühendisliği</option>
                                                            <option value="63">Kontrol ve Otomasyon Teknolojisi</option>
                                                            <option value="7">Kooperatifçilik</option>
                                                            <option value="899">Kore Dili ve Edebiyatı</option>
                                                            <option value="305">Korno</option>
                                                            <option value="122">Kozmetik Teknolojisi</option>
                                                            <option value="368">Kuaförlük ve Güzellik Bilgisi Öğretmenliği</option>
                                                            <option value="274">Kurgu-Ses ve Görüntü Yönetimi</option>
                                                            <option value="8273">Kurumsal Yönetim ve Liderlik</option>
                                                            <option value="159">Kuruyemiş Üretimi ve Teknolojisi</option>
                                                            <option value="51">Kuyumculuk ve Takı Tasarımı</option>
                                                            <option value="416">Kültür Bitkileri Üretimi ve Pazarlaması</option>
                                                            <option value="257">Kültür Varlıklarını Koruma ve Onarım</option>
                                                            <option value="411">Kültür Yönetimi</option>
                                                            <option value="151">Kültürel Miras ve Turizm</option>
                                                            <option value="113">Kümes Hayvanları Yetiştiriciliği</option>
                                                            <option value="1713">Küresel ve Uluslararası İlişkiler</option>
                                                            <option value="103">Laborant ve Veteriner Sağlık</option>
                                                            <option value="125">Laboratuvar Teknolojisi</option>
                                                            <option value="90">Lastik ve Plastik Teknolojisi</option>
                                                            <option value="900">Latin Dili ve Edebiyatı</option>
                                                            <option value="901">Leh Dili ve Edebiyatı</option>
                                                            <option value="92">Lojistik</option>
                                                            <option value="4919">Lojistik Yönetimi</option>
                                                            <option value="614">Maden Mühendisliği</option>
                                                            <option value="111">Maden Teknolojisi</option>
                                                            <option value="8">Makine</option>
                                                            <option value="467">Makine Mühendisliği</option>
                                                            <option value="342">Makine Resim ve Konstrüksiyonu Öğretmenliği</option>
                                                            <option value="1686">Makine ve İmalat Mühendisliği</option>
                                                            <option value="72">Makine,Resim ve Konstrüksiyon</option>
                                                            <option value="102">Maliye</option>
                                                            <option value="615">Malzeme Bilimi ve Mühendisliği</option>
                                                            <option value="1889">Malzeme Mühendisliği</option>
                                                            <option value="174">Mantarcılık</option>
                                                            <option value="169">Marina İşletme</option>
                                                            <option value="192">Marka İletişimi</option>
                                                            <option value="150">Marka ve İletişim</option>
                                                            <option value="366">Matbaa Öğretmenliği</option>
                                                            <option value="446">Matematik</option>
                                                            <option value="3937">Matematik Mühendisliği</option>
                                                            <option value="1071">Matematik Öğretmenliği</option>
                                                            <option value="2365">Matematik ve Bilgisayar Bilimleri</option>
                                                            <option value="1248">Matematik-Bilgisayar</option>
                                                            <option value="5557">Medya ve Görsel Sanatlar</option>
                                                            <option value="124">Medya ve İletişim</option>
                                                            <option value="4365">Medya ve İletişim Sistemleri</option>
                                                            <option value="46">Mekatronik</option>
                                                            <option value="1215">Mekatronik Mühendisliği</option>
                                                            <option value="373">Mekatronik Öğretmenliği</option>
                                                            <option value="107">Menkul Kıymetler ve Sermaye Piyasası</option>
                                                            <option value="343">Metal Öğretmenliği</option>
                                                            <option value="119">Metalurji</option>
                                                            <option value="386">Metalurji Mühendisliği</option>
                                                            <option value="619">Metalurji ve Malzeme Mühendisliği</option>
                                                            <option value="4696">Meteoroloji Mühendisliği</option>
                                                            <option value="172">Meyve ve Sebze İşleme Teknolojisi</option>
                                                            <option value="9">Mimari Dekoratif Sanatlar</option>
                                                            <option value="61">Mimari Restorasyon</option>
                                                            <option value="468">Mimarlık</option>
                                                            <option value="10">Mobilya Dekorasyon</option>
                                                            <option value="344">Mobilya ve Dekorasyon Öğretmenliği</option>
                                                            <option value="275">Moda Giyim Tasarımı</option>
                                                            <option value="94">Moda Tasarımı</option>
                                                            <option value="364">Moda Tasarımı Öğretmenliği</option>
                                                            <option value="244">Modern Dans</option>
                                                            <option value="1025">Moleküler Biyoloji ve Genetik</option>
                                                            <option value="2701">Muhasebe</option>
                                                            <option value="1754">Muhasebe Bilgi Sistemleri</option>
                                                            <option value="8263">Muhasebe Denetimi</option>
                                                            <option value="4238">Muhasebe ve Finans Yönetimi</option>
                                                            <option value="1497">Muhasebe ve Finansal Yönetim</option>
                                                            <option value="351">Muhasebe ve Finansman Öğretmenliği</option>
                                                            <option value="11">Muhasebe ve Vergi Uygulamaları</option>
                                                            <option value="316">Mutfak Sanatları ve Yönetimi</option>
                                                            <option value="6872">Mühendislik ve Doğa Bilimleri Programları</option>
                                                            <option value="1130">Mütercim-Tercümanlık</option>
                                                            <option value="224">Müzik</option>
                                                            <option value="300">Müzik Teorisi</option>
                                                            <option value="250">Müzik Bilimleri</option>
                                                            <option value="201">Müzik Öğretmenliği</option>
                                                            <option value="261">Müzik Teknolojisi</option>
                                                            <option value="329">Müzik Toplulukları</option>
                                                            <option value="291">Müzikoloji</option>
                                                            <option value="390">Nakış Öğretmenliği</option>
                                                            <option value="208">Nefesli Çalgılar ve Vurma Çalgılar</option>
                                                            <option value="3783">Nükleer Enerji Mühendisliği</option>
                                                            <option value="306">Obua</option>
                                                            <option value="4875">Odyoloji</option>
                                                            <option value="68">Odyometri</option>
                                                            <option value="430">Okul Öncesi Öğretmenliği</option>
                                                            <option value="232">Opera</option>
                                                            <option value="292">Opera ve Konser Şarkıcılığı</option>
                                                            <option value="254">Opera,Koro ve Popüler Müzik Şarkıcılığı</option>
                                                            <option value="158">Optisyenlik</option>
                                                            <option value="23">Organik Tarım</option>
                                                            <option value="307">Orkestra Şefliği</option>
                                                            <option value="996">Orman Endüstrisi Mühendisliği</option>
                                                            <option value="997">Orman Mühendisliği</option>
                                                            <option value="104">Ormancılık ve Orman Ürünleri</option>
                                                            <option value="36">Ortopedik Protez ve Ortez</option>
                                                            <option value="6760">Otel Yöneticiliği</option>
                                                            <option value="171">Oto Boya ve Karoseri</option>
                                                            <option value="53">Otobüs Kaptanlığı</option>
                                                            <option value="621">Otomotiv Mühendisliği</option>
                                                            <option value="339">Otomotiv Öğretmenliği</option>
                                                            <option value="32">Otomotiv Teknolojisi</option>
                                                            <option value="137">Otopsi Yardımcılığı</option>
                                                            <option value="215">Oyunculuk</option>
                                                            <option value="6188">Özel Eğitim Öğretmenliği</option>
                                                            <option value="8282">Özel Güvenlik ve Koruma</option>
                                                            <option value="17">Patoloji Laboratuvar Teknikleri</option>
                                                            <option value="12">Pazarlama</option>
                                                            <option value="393">Pazarlama Öğretmenliği</option>
                                                            <option value="93">Perakende Satış ve Mağaza Yönetimi</option>
                                                            <option value="136">Perfüzyon Teknikleri</option>
                                                            <option value="401">Petrol ve Doğalgaz Jeolojisi</option>
                                                            <option value="4683">Petrol ve Doğalgaz Mühendisliği</option>
                                                            <option value="414">Petrol ve Gaz Kuyularının Açılması</option>
                                                            <option value="415">Petrol ve Gaz Üretim Makineleri ve Teçhizatı</option>
                                                            <option value="410">Petrol-Gaz Boru Hatlarının ve Depolarının Projelendirilmesi, İnşaası
                                                                ve İşletilmesi</option>
                                                            <option value="409">Petrol-Gaz Yataklarının İşletilmesi ve Kullanımı</option>
                                                            <option value="362">Peyzaj Mimarisi ve Kentsel Tasarım</option>
                                                            <option value="758">Peyzaj Mimarlığı</option>
                                                            <option value="58">Peyzaj ve Süs Bitkileri</option>
                                                            <option value="241">Pilotaj</option>
                                                            <option value="205">Piyano</option>
                                                            <option value="255">Piyano,Arp,Gitar</option>
                                                            <option value="321">Piyano-Gitar</option>
                                                            <option value="298">Plastik Sanatlar</option>
                                                            <option value="8277">Plotaj</option>
                                                            <option value="8269">Podoloji</option>
                                                            <option value="7753">Polimer Mühendisliği</option>
                                                            <option value="141">Posta Hizmetleri</option>
                                                            <option value="902">Prehistorya</option>
                                                            <option value="903">Protohistorya ve Ön Asya Arkeolojisi</option>
                                                            <option value="448">Psikoloji</option>
                                                            <option value="7616">Radyo ve Televizyon</option>
                                                            <option value="73">Radyo ve Televizyon Programcılığı</option>
                                                            <option value="33">Radyo ve Televizyon Teknolojisi</option>
                                                            <option value="742">Radyo, Televizyon ve Sinema</option>
                                                            <option value="350">Radyoloji</option>
                                                            <option value="69">Radyoterapi</option>
                                                            <option value="118">Rafineri ve Petro-Kimya Teknolojisi</option>
                                                            <option value="142">Raylı Sistemler Elektrik ve Elektronik Tekn.</option>
                                                            <option value="143">Raylı Sistemler İşletmeciliği</option>
                                                            <option value="157">Raylı Sistemler Makine Teknolojisi</option>
                                                            <option value="156">Raylı Sistemler Makinistlik</option>
                                                            <option value="5205">Raylı Sistemler Mühendisliği</option>
                                                            <option value="144">Raylı Sistemler Yol Teknolojisi</option>
                                                            <option value="431">Rehberlik ve Psikolojik Danışmanlık</option>
                                                            <option value="7925">Reklam Tasarımı ve İletişimi</option>
                                                            <option value="1281">Reklamcılık</option>
                                                            <option value="7619">Reklamcılık ve Halkla İlişkiler</option>
                                                            <option value="207">Rekreasyon</option>
                                                            <option value="3362">Rekreasyon Yönetimi</option>
                                                            <option value="203">Resim</option>
                                                            <option value="202">Resim-İş Öğretmenliği</option>
                                                            <option value="349">Restorasyon</option>
                                                            <option value="823">Rus Dili ve Edebiyatı</option>
                                                            <option value="74">Saç Bakımı ve Güzellik Hiz.</option>
                                                            <option value="3770">Sağlık İdaresi</option>
                                                            <option value="37">Sağlık Kurumları İşletmeciliği</option>
                                                            <option value="568">Sağlık Kurumları Yöneticiliği</option>
                                                            <option value="473">Sağlık Yönetimi</option>
                                                            <option value="319">Sahne Dekorları ve Kostümü</option>
                                                            <option value="249">Sahne Sanatları</option>
                                                            <option value="276">Sahne Tasarımı</option>
                                                            <option value="96">Sahne ve Gösteri Sanatları Teknolojisi</option>
                                                            <option value="259">Sahne ve Gösteri Sanatları Yönetimi</option>
                                                            <option value="308">Saksafon</option>
                                                            <option value="494">Sanat Tarihi</option>
                                                            <option value="408">Sanat Tarihi ve Teorisi</option>
                                                            <option value="325">Sanat Tasarımı</option>
                                                            <option value="6876">Sanat ve Sosyal Bilimler Programları</option>
                                                            <option value="6402">Sanat ve Tasarım Yönetimi</option>
                                                            <option value="324">Sanat Yönetimi</option>
                                                            <option value="378">Sayısal Programlar</option>
                                                            <option value="24">Seracılık</option>
                                                            <option value="382">Seracılık ve Süs Bitkileri Yetiştiriciliği</option>
                                                            <option value="204">Seramik</option>
                                                            <option value="2696">Seramik Mühendisliği</option>
                                                            <option value="235">Seramik Sanatlar</option>
                                                            <option value="277">Seramik ve Cam Tasarımı</option>
                                                            <option value="121">Seramik,Cam ve Çinicilik</option>
                                                            <option value="5859">Sermaye Piyasası</option>
                                                            <option value="5072">Sermaye Piyasası Denetim ve Derecelendirme</option>
                                                            <option value="264">Ses Eğitimi</option>
                                                            <option value="551">Seyahat İşletmeciliği</option>
                                                            <option value="510">Seyahat İşletmeciliği ve Turizm Rehberliği</option>
                                                            <option value="361">Seyahat İşletmeciliği ve Turizm Rehberliği Öğretmenliği</option>
                                                            <option value="432">Sınıf Öğretmenliği</option>
                                                            <option value="5861">Sigortacılık</option>
                                                            <option value="1500">Sigortacılık ve Risk Yönetimi</option>
                                                            <option value="598">Sinema ve Televizyon</option>
                                                            <option value="907">Sinoloji</option>
                                                            <option value="7955">Sistem Mühendisliği</option>
                                                            <option value="98">Sivil Hava Ulaştırma İşletmeciliği</option>
                                                            <option value="154">Sivil Havacılık Kabin Hizmetleri</option>
                                                            <option value="99">Sivil Savunma ve İtfaiyecilik</option>
                                                            <option value="1718">Siyaset Bilimi</option>
                                                            <option value="961">Siyaset Bilimi ve Kamu Yönetimi</option>
                                                            <option value="1266">Siyaset Bilimi ve Uluslararası İlişkiler</option>
                                                            <option value="13">Sondaj Teknolojisi</option>
                                                            <option value="434">Sosyal Bilgiler Öğretmenliği</option>
                                                            <option value="133">Sosyal Güvenlik</option>
                                                            <option value="545">Sosyal Hizmet</option>
                                                            <option value="148">Sosyal Hizmetler</option>
                                                            <option value="225">Sosyoloji</option>
                                                            <option value="256">Spor Bilimleri</option>
                                                            <option value="200">Spor Yöneticiliği</option>
                                                            <option value="147">Spor Yönetimi</option>
                                                            <option value="81">Su Altı Teknolojisi</option>
                                                            <option value="25">Su Ürünleri</option>
                                                            <option value="191">Su Ürünleri İşleme Teknolojisi</option>
                                                            <option value="749">Su Ürünleri Mühendisliği</option>
                                                            <option value="420">Sualtı Teknolojisi</option>
                                                            <option value="186">Subtropikal Bitki Yetiştiriciliği</option>
                                                            <option value="166">Sulama Teknolojisi</option>
                                                            <option value="909">Sümeroloji</option>
                                                            <option value="128">Süs Bitkileri Yetiştiriciliği</option>
                                                            <option value="969">Süt Teknolojisi</option>
                                                            <option value="59">Süt ve Ürünleri Teknolojisi</option>
                                                            <option value="245">Şan</option>
                                                            <option value="71">Şarap Üretim Teknolojisi</option>
                                                            <option value="1843">Şehir ve Bölge Planlama</option>
                                                            <option value="181">Şeker Teknolojisi</option>
                                                            <option value="194">Tahribatsız Muayene</option>
                                                            <option value="299">Takı Tasarımı</option>
                                                            <option value="318">Takı Teknolojisi ve Tasarımı</option>
                                                            <option value="376">Talaşlı Üretim Öğretmenliği</option>
                                                            <option value="8267">Tapu ve Kadastro</option>
                                                            <option value="149">Tarım</option>
                                                            <option value="559">Tarım Ekonomisi</option>
                                                            <option value="5685">Tarım İşletmeciliği</option>
                                                            <option value="76">Tarım Makineleri</option>
                                                            <option value="689">Tarımsal Biyoteknoloji</option>
                                                            <option value="105">Tarımsal İşletmecilik</option>
                                                            <option value="132">Tarımsal Ürünler Muhafaza ve Depolama Teknolojisi</option>
                                                            <option value="561">Tarımsal Yapılar ve Sulama</option>
                                                            <option value="451">Tarih</option>
                                                            <option value="1080">Tarih Öğretmenliği</option>
                                                            <option value="26">Tarla Bitkileri</option>
                                                            <option value="8266">Tasarım Mühendisliği</option>
                                                            <option value="380">Tasarım ve Konstrüksiyon Öğretmenliği</option>
                                                            <option value="314">Taşınabilir Kültür Varlıklarını Koruma ve Onarım</option>
                                                            <option value="392">Tekstil Dokuma ve Örgü Öğretmenliği</option>
                                                            <option value="301">Tekstil Geliştirme ve Pazarlama</option>
                                                            <option value="2246">Tekstil Mühendisliği</option>
                                                            <option value="381">Tekstil Öğretmenliği</option>
                                                            <option value="2213">Tekstil Tasarım</option>
                                                            <option value="285">Tekstil Tasarım ve Üretimi</option>
                                                            <option value="263">Tekstil Tasarımı</option>
                                                            <option value="3342">Tekstil Tasarımı ve Üretimi</option>
                                                            <option value="14">Tekstil Teknolojisi</option>
                                                            <option value="399">Tekstil Terbiye Öğretmenliği</option>
                                                            <option value="260">Tekstil ve Moda Tasarımı</option>
                                                            <option value="365">Telekomünikasyon Mühendisliği</option>
                                                            <option value="396">Telekomünikasyon Öğretmenliği</option>
                                                            <option value="1612">Televizyon Haberciliği ve Programcılığı</option>
                                                            <option value="265">Temel Bilimler</option>
                                                            <option value="309">Teori</option>
                                                            <option value="348">Tesisat Öğretmenliği</option>
                                                            <option value="278">Tezhip</option>
                                                            <option value="38">Tıbbi Dökümantasyon ve Sekreterlik</option>
                                                            <option value="39">Tıbbi Görüntüleme Teknikleri</option>
                                                            <option value="18">Tıbbi Laboratuvar Teknikleri</option>
                                                            <option value="95">Tıbbi Tanıtım ve Pazarlama</option>
                                                            <option value="27">Tıbbi ve Aromatik Bitkiler</option>
                                                            <option value="469">Tıp</option>
                                                            <option value="8265">Tıp Bilişimi</option>
                                                            <option value="233">Tiyatro</option>
                                                            <option value="315">Tiyatro Eleştirmenliği ve Dramaturji</option>
                                                            <option value="80">Tohumculuk</option>
                                                            <option value="563">Toprak Bilimi ve Bitki Besleme</option>
                                                            <option value="310">Trombon</option>
                                                            <option value="311">Trompet</option>
                                                            <option value="312">Tuba</option>
                                                            <option value="346">Turist Rehberliği</option>
                                                            <option value="173">Turizm Animasyonu</option>
                                                            <option value="693">Turizm İşletmeciliği</option>
                                                            <option value="1331">Turizm İşletmeciliği ve Otelcilik</option>
                                                            <option value="70">Turizm Rehberliği</option>
                                                            <option value="15">Turizm ve Otel İşletmeciliği</option>
                                                            <option value="1503">Turizm ve Otelcilik</option>
                                                            <option value="52">Turizm ve Seyahat Hizmetleri</option>
                                                            <option value="226">Türk Dili ve Edebiyatı</option>
                                                            <option value="1081">Türk Dili ve Edebiyatı Öğretmenliği</option>
                                                            <option value="359">Türk Dünyası Türk Dili ve Edebiyatı</option>
                                                            <option value="216">Türk Halk Müziği</option>
                                                            <option value="209">Türk Halk Müziği Çalgı Eğitimi</option>
                                                            <option value="210">Türk Halk Müziği Ses Eğitimi</option>
                                                            <option value="266">Türk Halk Oyunları</option>
                                                            <option value="1916">Türk Halkbilimi</option>
                                                            <option value="293">Türk Musikisi</option>
                                                            <option value="217">Türk Sanat Müziği</option>
                                                            <option value="211">Türk Sanat Müziği Ses Eğitimi</option>
                                                            <option value="212">Türk Sanat Müziği Temel Bilimler</option>
                                                            <option value="436">Türkçe Öğretmenliği</option>
                                                            <option value="403">Türkoloji</option>
                                                            <option value="1892">Tütün Eksperliği</option>
                                                            <option value="2893">Uçak Elektrik-Elektronik</option>
                                                            <option value="875">Uçak Gövde-Motor</option>
                                                            <option value="5525">Uçak Gövde-Motor Bakım</option>
                                                            <option value="4698">Uçak Mühendisliği</option>
                                                            <option value="155">Uçak Teknolojisi</option>
                                                            <option value="114">Ulaştırma Trafik Hizmetleri</option>
                                                            <option value="3625">Ulaştırma ve Lojistik</option>
                                                            <option value="8268">Uluslararası Ekonomik İlişkiler</option>
                                                            <option value="1269">Uluslararası Finans</option>
                                                            <option value="7299">Uluslararası Girişimcilik</option>
                                                            <option value="461">Uluslararası İlişkiler</option>
                                                            <option value="4922">Uluslararası İlişkiler ve Avrupa Birliği</option>
                                                            <option value="7722">Uluslararası İşletme</option>
                                                            <option value="7913">Uluslararası İşletme Yönetimi</option>
                                                            <option value="3670">Uluslararası İşletmecilik</option>
                                                            <option value="2624">Uluslararası İşletmecilik ve Ticaret</option>
                                                            <option value="6428">Uluslararası Lojistik</option>
                                                            <option value="1595">Uluslararası Lojistik ve Taşımacılık</option>
                                                            <option value="4460">Uluslararası Lojistik Yönetimi</option>
                                                            <option value="695">Uluslararası Ticaret</option>
                                                            <option value="4175">Uluslararası Ticaret ve Finans</option>
                                                            <option value="607">Uluslararası Ticaret ve Finansman</option>
                                                            <option value="1272">Uluslararası Ticaret ve İşletmecilik</option>
                                                            <option value="1173">Uluslararası Ticaret ve Lojistik</option>
                                                            <option value="5765">Uluslararası Ticaret ve Lojistik Yönetimi</option>
                                                            <option value="3545">Uluslararası Ticaret ve Pazarlama</option>
                                                            <option value="912">Urdu Dili ve Edebiyatı</option>
                                                            <option value="8281">Uygulamalı İngilizce ve Çevirmenlik</option>
                                                            <option value="404">Uygulamalı Matematik</option>
                                                            <option value="412">Uygulamalı Matematik ve Bilgisayar</option>
                                                            <option value="4700">Uzay Mühendisliği</option>
                                                            <option value="218">Üflemeli ve Vurmalı Çalgılar</option>
                                                            <option value="371">Üretim Mühendisliği</option>
                                                            <option value="120">Üretimde Kalite Kontrol</option>
                                                            <option value="4820">Üstün Zekalılar Öğretmenliği</option>
                                                            <option value="556">Veteriner Hekimliği</option>
                                                            <option value="246">Viyola</option>
                                                            <option value="247">Viyolonsel</option>
                                                            <option value="313">Vurmalı Çalgılar</option>
                                                            <option value="135">Yağ Endüstrisi</option>
                                                            <option value="49">Yapı Denetimi</option>
                                                            <option value="374">Yapı Öğretmenliği</option>
                                                            <option value="134">Yapı Ressamlığı</option>
                                                            <option value="375">Yapı Ressamlığı Öğretmenliği</option>
                                                            <option value="384">Yapı Tasarımı Öğretmenliği</option>
                                                            <option value="168">Yapı Tesisat Teknolojisi</option>
                                                            <option value="179">Yapı Yalıtım Teknolojisi</option>
                                                            <option value="8279">Yapım Yönetimi</option>
                                                            <option value="40">Yaşlı Bakımı</option>
                                                            <option value="190">Yat İşletmeciliği</option>
                                                            <option value="939">Yaygın Din Öğretimi ve Uygulamaları</option>
                                                            <option value="206">Yaylı Çalgılar</option>
                                                            <option value="330">Yaylı Çalgılar Yapımı</option>
                                                            <option value="1227">Yazılım Mühendisliği</option>
                                                            <option value="189">Yem Teknolojisi ve Hayvan Besleme</option>
                                                            <option value="1287">Yeni Medya</option>
                                                            <option value="21">Yerel Yönetimler</option>
                                                            <option value="511">Yiyecek-İçecek İşletmeciliği</option>
                                                            <option value="6880">Yönetim Bilimleri Programları</option>
                                                            <option value="1398">Yönetim Bilişim Sistemleri</option>
                                                            <option value="913">Yunan Dili ve Edebiyatı</option>
                                                            <option value="7363">Yunanca</option>
                                                            <option value="116">Zeytincilik ve Zeytin İşletme Teknolojisi</option>
                                                            <option value="438">Zihin Engelliler Öğretmenliği</option>
                                                            <option value="335">Ziraat Mühendisliği</option>
                                                            <option value="564">Zootekni</option>
                                                        </select> -->
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            Öğretim tipi</label>
                                                        <select class="form-control " name="selectogretimtipi">
                                                            <option>seçiniz</option>
                                                            <option>Örgün Öğretim</option>
                                                            <option>İkinci Öğretim</option>
                                                            <option>Açık Öğretim</option>
                                                            <option>Uzaktan Öğretim</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            öğretim dili</label>
                                                        <asp:DropDownList ID="DropDownListdil" runat="server">
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            eklemek istediğiniz Notlar</label>
                                                        <textarea class="form-control" name="üninot" cols="20" rows="3"></textarea>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span4" style="height: 790px;">
                                                <h3>
                                                    Lise Bilgisi
                                                </h3>
                                                <div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            Lise Adı</label>
                                                        <asp:TextBox ID="Txtbxlise" class="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            Lise Şehir</label>
                                                            
                                                        <asp:DropDownList ID="DropDownListlisesehir" runat="server">
                                                        </asp:DropDownList>
                                                      
                                                       
                                                    </div>
                                                    <div class="col-xs-4" style="margin-top: 21px;">
                                                        <label>
                                                            Lise Bitiş Tarihi</label>
                                                        <asp:DropDownList class="form-control input-small" ID="DropDownListay3" runat="server">
                                                            <asp:ListItem>Ay</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:DropDownList class="form-control input-small" ID="DropDownListyil3" runat="server">
                                                            <asp:ListItem>Yıl</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <input type="checkbox" value="" />Devam ediyorum
                                                        <input type="checkbox" value="" />Terk
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonEgitimBilgileri" runat="server" Text="Kaydet" class="btn btn-primary" onclick="ButtonEgitimBilgileri_Click"/>
                            </div>
                        </div>

                        <!-- İş Tecrübesi -->
                        <div class="tab-pane" id="lE">
                        <asp:UpdatePanel runat="server" ID="UpdatePanel7" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ButtonIsTecrubesi" EventName="Click" />
                            </Triggers>
                                <ContentTemplate>
                                <div class="bs-docs-grid">
                                    <div class="row show-grid">
                                        <!--  <div class="span5"> -->
                                        <div class="span5 offset2" style="margin-left: 30px; width: 850px;">
                                            <h3>
                                                İş Tecrübesi
                                            </h3>
                                            <br />
                                            <div>
                                                <table border="0" style="text-align: center;" class="table table-striped">
                                                    <caption>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                &nbsp;&nbsp
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>Firma Adı</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>Başlangıç</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>Bitiş</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>Firmadaki Pozisyon</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>Çalışma Şekli</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>İş tanımı/Firma Sektörü/İş Alanı Genel Bilgi</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>Şehir</strong>
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr style="background-color: #9999CC;">
                                                            <td style="text-align: center;">
                                                                1
                                                            </td>
                                                            <td style="text-align: center;">
                                                                <asp:TextBox class="form-control input-small" ID="Txtbx1frm" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td style="text-align: center;">
                                                                <asp:DropDownList ID="DropDownListay4" class="form-control input-small" runat="server">
                                                                    <asp:ListItem>Ay</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownListyil4" class="form-control input-small" runat="server">
                                                                    <asp:ListItem>Yıl</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td style="text-align: center;">
                                                                <asp:DropDownList ID="DropDownListay5" class="form-control input-small" runat="server">
                                                                    <asp:ListItem>Ay</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownListyil5" class="form-control input-small" runat="server">
                                                                    <asp:ListItem>Yıl</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <br />
                                                                <input type="checkbox" value="" />Devam
                                                            </td>
                                                            <td style="text-align: center;">
                                                                <asp:TextBox class="form-control input-small" ID="Txtbx1frmpzsyn" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td style="text-align: center;">
                                                                <asp:DropDownList  class="form-control input-small"  ID="DropDownListcalismasekli" runat="server">
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem>Yarı Zamanlı</asp:ListItem>
                                                                    <asp:ListItem Value="Dönemsel/Proje Bazlı">Dönemsel/Proje Bazlı</asp:ListItem>
                                                                    <asp:ListItem>Stajyer</asp:ListItem>
                                                                    <asp:ListItem>Tam Zamanlı</asp:ListItem>
                                                                </asp:DropDownList>

                                                             <!--   <select class="form-control input-small" id="Select17">
                                                                    <option>seçiniz</option>
                                                                    <option>Yarı Zamanlı</option>
                                                                    <option>Dönemsel/Proje Bazlı</option>
                                                                    <option>Stajyer</option>
                                                                    <option>Tam Zamanlı</option>
                                                                </select> -->
                                                            </td>
                                                            <td style="text-align: center;">
                                                                
                                                                <textarea  class="form-control input-small" name="istanimi" cols="20" rows="2"></textarea>

                                                            </td>
                                                            <td style="text-align: center;">
                                                                <asp:DropDownList class="form-control input-small" ID="DropDownList3" runat="server" >
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>


                                              <!--  <asp:GridView ID="GridViewistecrube" runat="server"> 
                                                </asp:GridView>-->

                 <div class="panel-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                    #
                                </th>
                                <th>
                                    Firma Adı
                                </th>
                                <th>
                                    Başlangıç Tarihi
                                </th>
                                <th>
                                    Bitiş Tarihi
                                </th>
                                 <th>
                                    Pozisyon
                                </th>
                                 <th>
                                    Çalışma Şekli
                                </th>
                                 <th>
                                    Firma Bilgi
                                </th>
                                 <th>
                                    Şehir
                                </th>
                            </tr>
                        </thead>
                        <tbody id="codebehindIs" runat="server">
                            
                            
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>







                                            </div>
                                        </div>
                                    </div>
                                </div>
                             </ContentTemplate>
                            </asp:UpdatePanel>

                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonIsTecrubesi" runat="server" Text="Kaydet" class="btn btn-primary" onclick="ButtonIsTecrubesi_Click"/>
                            </div>
                        </div>

                         <!--Sertifika Bilgileri -->
                        <div class="tab-pane" id="lF">
                            <asp:UpdatePanel runat="server" ID="UpdatePanel8" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ButtonSertifikaBilgileri" EventName="Click" />
                            </Triggers>
                                <ContentTemplate>
                            <div class="bs-docs-grid">
                                <div class="row show-grid">
                                    <div class="span5 offset2" style="margin-left: 100px; width: 750px;">
                                        <h3>
                                            Sertifika Bilgileri
                                        </h3>
                                        <h5>
                                            Almış olduğunuz sertifikaları girebilirsiniz.
                                        </h5>
                                        <div>
                                            <div class="col-xs-4" style="margin-top: 21px;">
                                                <CKEditor:CKEditorControl ID="CKEditorControlSertifika" runat="server"></CKEditor:CKEditorControl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonSertifikaBilgileri" onclick="ButtonSertifikaBilgileri_Click" runat="server" Text="Kaydet" class="btn btn-primary"/>
                            </div>
                        </div>
                        
                        <!--Bilgisayar Bilgisileri -->
                        <div class="tab-pane" id="lG">
                            <asp:UpdatePanel runat="server" ID="UpdatePanel9" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ButtonBilgisayarBilgisi" EventName="Click" />
                            </Triggers>
                                <ContentTemplate>
                            <div class="bs-docs-grid">
                                <div class="row show-grid">
                                    <div class="span5 offset2" style="margin-left: 100px; width: 750px;">
                                        <h3>
                                            Bilgisayar Bilgisi
                                        </h3>
                                        <h5>
                                            Bilgisayar kullanımıyla ilgili bilgileri bu alanda belirtebilirsiniz.</h5>
                                        <div>
                                            <div class="col-xs-4" style="margin-top: 21px;">
                                                <CKEditor:CKEditorControl ID="CKEditorControlBil" runat="server"></CKEditor:CKEditorControl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonBilgisayarBilgisi" onclick="ButtonBilgisayarBilgisi_Click" runat="server" Text="Kaydet" class="btn btn-primary"/>
                            </div>
                        </div>

                        <!--Üye Olunan Kulüpler/Hobiler -->
                        <div class="tab-pane" id="lH">
                          <asp:UpdatePanel runat="server" ID="UpdatePanel10" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ButtonKulupler" EventName="Click" />
                            </Triggers>
                                <ContentTemplate>  
                            <div class="bs-docs-grid">
                                <div class="row show-grid">
                                    <div class="span5 offset2" style="margin-left: 100px; width: 750px;">
                                        <h3>
                                            Üye Olunan Kulüpler/Hobiler
                                        </h3>
                                        <div>
                                            <div class="col-xs-4" style="margin-top: 21px;">
                                                <CKEditor:CKEditorControl ID="CKEditorControlkulup" runat="server"></CKEditor:CKEditorControl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonKulupler" onclick="ButtonKulupler_Click" runat="server" Text="Kaydet" class="btn btn-primary"/>
                            </div>
                        </div>

                        <!--Referanslar -->
                        <div class="tab-pane" id="lJ">
                          <asp:UpdatePanel runat="server" ID="UpdatePanel13" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ButtonReferanslar" EventName="Click" />
                            </Triggers>
                                <ContentTemplate>     
                            <div class="bs-docs-grid">
                                <div class="row show-grid">
                                    <div class="span5 offset2" style="margin-left: 100px; width: 750px;">
                                        <h3>
                                            Referanslar
                                        </h3>
                                        <h5>
                                            Referansın Adı / Referansın Soyadı / E-Mail Adresi / Telefonu</h5>
                                        <div>
                                            <div class="col-xs-4" style="margin-top: 21px;">
                                                <!-- <CKEditor:CKEditorControl ID="CKEditorControlReferans" runat="server"></CKEditor:CKEditorControl> -->
                                                <table border="0" style="text-align: center;" class="table table-striped">
                                                    <caption>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                &nbsp;&nbsp
                                                            </th>

                                                            <th style="text-align: center;">
                                                                <strong>Referans Adı</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>Referans Soyadı</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>Mesleği</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>E-Mail Adresi</strong>
                                                            </th>
                                                            <th style="text-align: center;">
                                                                <strong>Cep Telefonu</strong>
                                                            </th>
                                                           
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr style="background-color: #9999CC;">
                                                            <td style="text-align: center;">
                                                                1
                                                            </td>
                                                            <td style="text-align: center;">
                                                                <asp:TextBox class="form-control input-small" ID="txtbxreferansadi" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td style="text-align: center;">
                                                                 <asp:TextBox class="form-control input-small" ID="txtbxreferanssoyadi" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td style="text-align: center;">
                                                                 <asp:TextBox class="form-control input-small" ID="txtbxreferansmeslek" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td style="text-align: center;">
                                                                <asp:TextBox class="form-control input-small" ID="txtbxreferansmail" runat="server"></asp:TextBox>
                                                            </td>
                                                           <td style="text-align: center;">
                                                                 <asp:TextBox class="form-control input-small" ID="txtbxreferanstl" runat="server"></asp:TextBox>
                                                            </td>
                                                           
                                                           
                                                        </tr>
                                                    </tbody>
                                                </table>
                                             <!--   <asp:GridView ID="GridViewreferans" runat="server"> 
                                                </asp:GridView> -->


              <div class="panel-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                    #
                                </th>
                                <th>
                                    Referans Adı
                                </th>
                                <th>
                                    Referans Soyadı
                                </th>
                                <th>
                                    Mesleği
                                </th>
                                 <th>
                                    E-Mail Adresi
                                </th>
                                 <th>
                                    Cep Telefonu
                                </th>
                               
                            </tr>
                        </thead>
                        <tbody id="codebehindref" runat="server">
                            
                            
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>



                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                             </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonReferanslar"  onclick="ButtonReferanslar_Click" runat="server" Text="Kaydet" class="btn btn-primary"/>
                            </div>
                        </div>

                         <!--Burslar/Ödüller/Başarılar/Projeler -->
                        <div class="tab-pane" id="lK">
                            <asp:UpdatePanel runat="server" ID="UpdatePanel11" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ButtonBursOdul" EventName="Click" />
                            </Triggers>
                                <ContentTemplate>  
                            <div class="bs-docs-grid">
                                <div class="row show-grid">
                                    <div class="span5 offset2" style="margin-left: 100px; width: 750px;">
                                        <h3>
                                            Burslar/Ödüller/Başarılar/Projeler
                                        </h3>
                                        <h5>
                                            Almış olduğunuz burs, ödül, başarı ve yapmış olduğunuz projelerinizi paylaşabilirsiniz.
                                        </h5>
                                        <div>
                                            <div class="col-xs-4" style="margin-top: 21px;">
                                                <CKEditor:CKEditorControl ID="CKEditorControlbobpbilgi" runat="server"></CKEditor:CKEditorControl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonBursOdul" onclick="ButtonBursOdul_Click" runat="server" Text="Kaydet" class="btn btn-primary"/>
                            </div>
                        </div>

                         <!--Tamamlayıcı/Özet Bilgiler -->
                        <div class="tab-pane" id="lL">
                            <asp:UpdatePanel runat="server" ID="UpdatePanel12" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ButtonOzet" EventName="Click" />
                            </Triggers>
                                <ContentTemplate>
                            <div class="bs-docs-grid">
                                <div class="row show-grid">
                                    <!--  <div class="span5"> -->
                                    <div class="span5 offset2" style="margin-left: 100px; width: 750px;">
                                        <h3>
                                            Özet Bilgiler
                                        </h3>
                                        <div>
                                            <div class="col-xs-4" style="margin-top: 21px;">
                                                <CKEditor:CKEditorControl ID="CKEditorControlozetbilgi" runat="server"></CKEditor:CKEditorControl>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonOzet" onclick="ButtonOzet_Click" runat="server" Text="Kaydet" class="btn btn-primary"/>
                            </div>
                        </div>

                         <!--YABANCI DİL BİLGİSİ -->
                        <div class="tab-pane" id="lM">
                            <asp:UpdatePanel runat="server" ID="UpdatePanel14" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ButtonYabanciDil" EventName="Click" />
                            </Triggers>
                                <ContentTemplate>
                            <div class="bs-docs-grid">
                                <div class="row show-grid">
                                    <!--  <div class="span5"> -->
                                    <div class="span5 offset2" style="margin-left: 100px; width: 730px;">
                                        <h3>
                                            YABANCI DİL BİLGİSİ
                                        </h3>
                                        <br />
                                        <div>
                                            <table border="0" style="text-align: center;" class="table table-striped">
                                                <caption>
                                                </caption>
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            &nbsp;&nbsp
                                                        </th>
                                                        <th style="text-align: center;">
                                                            <strong>Yabancı Dil</strong>
                                                        </th>
                                                        <th style="text-align: center;">
                                                            <strong>Konuşma</strong>
                                                        </th>
                                                        <th style="text-align: center;">
                                                            <strong>Yazma</strong>
                                                        </th>
                                                        <th style="text-align: center;">
                                                            <strong>Anlama</strong>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr style="background-color: #9999CC;">
                                                        <td style="text-align: center;">
                                                           Dil Bilginiz
                                                        </td>
                                                        <td style="text-align: center;">
                                                            <asp:DropDownList class="form-control input-small" ID="DropDownListDil2" runat="server">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="text-align: center;">
                                                            <asp:DropDownList  class="form-control input-small"  ID="DropDownListkonusma" runat="server">
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem>Başlangıç</asp:ListItem>
                                                                    <asp:ListItem Value="Dönemsel/Proje Bazlı">Orta</asp:ListItem>
                                                                    <asp:ListItem>İyi</asp:ListItem>
                                                                    <asp:ListItem>Çok İyi</asp:ListItem>
                                                                </asp:DropDownList>
                                                           
                                                        </td>
                                                        <td style="text-align: center;">
                                                            <asp:DropDownList  class="form-control input-small"  ID="DropDownListYazma" runat="server">
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem>Başlangıç</asp:ListItem>
                                                                    <asp:ListItem Value="Dönemsel/Proje Bazlı">Orta</asp:ListItem>
                                                                    <asp:ListItem>İyi</asp:ListItem>
                                                                    <asp:ListItem>Çok İyi</asp:ListItem>
                                                                </asp:DropDownList>
                                                        </td>
                                                        <td style="text-align: center;">
                                                           <asp:DropDownList  class="form-control input-small"  ID="DropDownListAnlama" runat="server">
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem>Başlangıç</asp:ListItem>
                                                                    <asp:ListItem Value="Dönemsel/Proje Bazlı">Orta</asp:ListItem>
                                                                    <asp:ListItem>İyi</asp:ListItem>
                                                                    <asp:ListItem>Çok İyi</asp:ListItem>
                                                                </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                  
                                                </tbody>
                                            </table>
                                        <!--    <asp:GridView ID="GridViewdil" runat="server">
                                            </asp:GridView> -->

                                            

              <div class="panel-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                    #
                                </th>
                                <th>
                                    Yabancı Dil
                                </th>
                                <th>
                                    Konuşma
                                </th>
                                <th>
                                    Yazma
                                </th>
                                 <th>
                                    Anlama
                                </th>
                                
                            </tr>
                        </thead>
                        <tbody id="codebehinddil" runat="server">
                            
                            
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            <div style="width: 100px; height: 45px; float: right;">
                                <asp:Button ID="ButtonYabanciDil" onclick="ButtonYabanciDil_Click" runat="server" Text="Kaydet" class="btn btn-primary"/>
                            </div>
                        </div>

                        <!-- secim -->
                        <div class="tab-pane" id="lN">
                           
                        </div>
                       
                        <!-- son -->
                    </div>
                </div>
            </div>

            <!--alt sidebar cv bilgi  -->
            <div class="well sidebar-nav small" style="padding-top: 19px; margin-top: 20px;">
                <ul class="nav nav-list small">
                    <li class="nav-header">
                        <h4>
                            <span class="glyphicon glyphicon-tags "></span>Cv Maker Hakkında : &nbsp;</h4>
                    </li>
                    <p class="text-success">
                        Cv hazırlamak neyi nasıl ne şekilde yazmak düşündürücü ve zaman alıcı bunun farkındayız.</p>
                    <p class="text-success">
                        Cv'nizi kolayca hazırlamnız için size alternatif sunuyoruz.</p>
                    <p class="text-success">
                        Dakikalar içerisinde güzel ve profesyonel özgeçmişler oluşturun.</p>
                    <p class="text-success">
                        Cv'nizi kolayca hazırlayabilir ve pdf olarak çıktısını alıp gerekli mercilere kolayca
                        ulaştırabilirsiniz.</p>
                </ul>
            </div>
        </div>
</div>
  
</asp:Content>
