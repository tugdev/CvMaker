<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="CvHazirla.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Panel ID="pnlPerson" runat="server">
   <strong>KİŞİSEL BİLGİLER </strong>
    <hr />

    <table border="1" style="width: 60%;height: 175px;">
    
    <tr>
          <!--  <td class="style2"> -->
            <td style="width: 448px;">
                <table border="1" >
        <tr>
            <td style="width: 110px;">
               <asp:Label ID="Labeladsy" runat="server" Text="Ad,Soyad : "></asp:Label>
            </td>
            <td style="width: 312px;">
                <asp:Label ID="Labelad" runat="server" Text=" "></asp:Label>
                <asp:Label ID="Labelsoyad" runat="server" Text=" "></asp:Label>   
            </td>
        </tr>
        <tr>
            <td >
               <asp:Label ID="Labeldyer" runat="server" Text="Doğum Yeri : "></asp:Label>
            </td>
            <td style="width: 312px;">
                <asp:Label ID="Labeldogumyeri" runat="server" Text=""></asp:Label>
            </td>
       
        </tr>
          <tr>
            <td >
                <asp:Label ID="Labeldog" runat="server" Text="Doğum Tarihi : "></asp:Label>
            </td>
            <td style="width: 312px;">
                <asp:Label ID="Labeldogumtrh" runat="server" Text=""></asp:Label>
            </td>
          
        </tr>
        <tr>
            <td >
                <asp:Label ID="Labelcin" runat="server" Text="Cinsiyet : "></asp:Label>
            </td>
            <td style="width: 312px;">
                <asp:Label ID="Labelcinsiyet" runat="server" Text=""></asp:Label>
            </td>
         </tr>
      
         <tr>
            <td >
                <asp:Label ID="Labelmed" runat="server" Text="Medeni Durum : "></asp:Label>
            </td>
            <td style="width: 312px;"> 
                <asp:Label ID="Labelmedenidrm" runat="server" Text=""></asp:Label>
            </td>
         
        </tr>
         <tr>
            <td>
                <asp:Label ID="Labelsrb" runat="server" Text="Sürücü Belgesi : "></asp:Label>
            </td>
            <td style="width: 312px;"> 
                <asp:Label ID="Labelsurucubelgesi" runat="server" Text=""></asp:Label>
            </td>
        
        </tr>
         <tr>
            <td>
                <asp:Label ID="Labeluy" runat="server" Text="Uyruk : "></asp:Label>
            </td>
            <td style="width: 312px;"> 
                <asp:Label ID="Labeluyruk" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/a.jpg" 
                   style="height: 150px;width: 150px;margin-left: 45px;" />
            </td>
    </tr>

    </table>

    <br />

   <strong> İLETİŞİM BİLGİLERİ  </strong>                                     
    <hr />
     <table border="1" style="width: 60%;">
        
         <tr>
            <td style="width: 110px;">
               <asp:Label ID="Label11" runat="server" Text="İl, İlçe, Semt : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Labelil" runat="server" Text=""></asp:Label>, 
                <asp:Label ID="Labelilce" runat="server" Text=""></asp:Label>, 
                <asp:Label ID="Labelsemt" runat="server" Text=""></asp:Label>
            </td>
          
        </tr>
        <tr>
            <td style="width: 110px;">
               <asp:Label ID="Label1" runat="server" Text="Adres Bilgileri : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Labeladres" runat="server" Text=""></asp:Label>
            </td>
          
        </tr>
         
        <tr>
            <td style="width: 110px;">
                <asp:Label ID="Label3" runat="server" Text="Cep Tel : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Labelceptel1" runat="server" Text=""></asp:Label>   
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                <asp:Label ID="Labelceptel2" runat="server" Text=""></asp:Label>
            </td>
          
        </tr>
        <tr>
            <td style="width: 110px;">
                <asp:Label ID="Label5" runat="server" Text="E-Posta : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Labeleposta1" runat="server" Text=""></asp:Label>   
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                <asp:Label ID="Labeleposta2" runat="server" Text=""></asp:Label>
            </td>
          
        </tr>
         <tr>
            <td style="width: 110px;">
                <asp:Label ID="Label7" runat="server" Text="Web Sayfam : "></asp:Label>
            </td>
            <td> 
                <asp:Label ID="Labelwebsayfa" runat="server" Text=""></asp:Label>
            </td>
          
        </tr>
       
    </table>
    <br />


    <strong>EĞİTİM BİLGİLERİ </strong>               
     <hr />
     
        <table border="1" style="width: 60%;">
        
         <tr>
            <td style="width: 110px;">
               <asp:Label ID="Labeluni" runat="server" Text="Üniversite : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Labeluniadi" runat="server" Text=""></asp:Label> - 
                <asp:Label ID="Labelunisehir" runat="server" Text="samsun"></asp:Label><br />

                <asp:Label ID="Labelbolum" runat="server" Text="Labelbolum"></asp:Label> - 
                <asp:Label ID="Labelunibaslangicay" runat="server" Text="Labelbaslangicay"></asp:Label>/
                <asp:Label ID="Labelunibaslangicyil" runat="server" Text="Labelbaslangicyil"></asp:Label> - 
                <asp:Label ID="Labelunibitisay" runat="server" Text="Labelbitisay"></asp:Label>/
                <asp:Label ID="Labelunibiisyil" runat="server" Text="Labelbiisyil"></asp:Label>
            </td>
          
        </tr>
         <tr>
            <td style="width: 110px;">
               <asp:Label ID="Labellise" runat="server" Text="Lise : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Labelliseadi" runat="server" Text="omu"></asp:Label> - 
                <asp:Label ID="Labellisesehir" runat="server" Text="samsun"></asp:Label><br />

              
                <asp:Label ID="Labellisebitisay" runat="server" Text="Labelbitisay"></asp:Label>/
                <asp:Label ID="Labellisebiisyil" runat="server" Text="Labelbiisyil"></asp:Label>
            </td>
          
        </tr>
       
    </table>
     <br />

     <strong> YABANCI DİL BİLGİSİ </strong>
      <hr />

         <table border="1" style="width: 60%;">
        
         <tr>
            <td style="width: 110px;">
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
                        <tbody id="codebehinddilbilgisi" runat="server">
                        </tbody>
                    </table>
            </td>
         
          
        </tr>
       
       
    </table>
     <br />

    <strong> İŞ TECRÜBESİ</strong>
      <hr />

         <table border="1" style="width: 60%;">
        
         <tr>
            <td style="width: 110px;">
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
                        <tbody id="codebehindIstecrubesi" runat="server">
                            
                            
                        </tbody>
                    </table> 
            </td>
        </tr> 
    </table>
     <br />

    <strong> SERTİFİKA BİLGİLERİ/SEMİNERLER VE KURSLAR </strong>
      <hr />

         <table border="1" style="width: 60%;">
        
         <tr>
            <td style="width: 110px;">
                <asp:Label ID="Labelsertifika" runat="server"
                 Text=""></asp:Label>
            </td> 
        </tr>  
    </table>
     <br />

    <strong> BİLGİSAYAR BİLGİLERİ</strong>
      <hr />

         <table border="1" style="width: 60%;">
        
         <tr>
            <td style="width: 110px;">
                <asp:Label ID="Labelbilgisayarbilgisi" runat="server" Text=""></asp:Label>   
            </td>  
        </tr>
    </table>
     <br />

    <strong> BURSLAR/ÖDÜLLER/BAŞARILAR/PROJELER</strong>
       <hr />
         <table border="1" style="width: 60%;">
        
         <tr>  
            <td  style="width: 110px;">
                <asp:Label ID="Labelbursodulbasari" runat="server" Text=""></asp:Label>  
            </td>
        </tr>     
    </table>
     <br />

     <strong> ÜYE OLUNAN KULÜPLER/HOBİLER </strong>
      <hr />
         <table border="1" style="width: 60%;">
        
         <tr>
            <td style="width: 110px;">
                <asp:Label ID="Labelkulup" runat="server" 
                Text=""></asp:Label> 
            </td>  
        </tr>
    </table>
     <br />

     <strong>REFERANSLAR</strong>
      <hr />
         <table border="1" style="width: 60%;">
        
         <tr>
            <td style="width: 110px;">
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
                                    E-Mail
                                </th>
                                 <th>
                                    Cep Telefonu
                                </th>
                               
                            </tr>
                        </thead>
                        <tbody id="codebehindreferans" runat="server">   
                          
                        </tbody>
                    </table> 
            </td>
        </tr>  
    </table>
     <br />

      <strong>TAMAMLAYICI/ÖZET BİLGİLER</strong>
      <hr />
         <table border="1" style="width: 60%;">
        
         <tr>
            <td style="width: 110px;">
                <asp:Label ID="Labelozetbilgi" runat="server" Text=""></asp:Label>  
            </td>
        </tr>
    </table>
     <br />
     </asp:Panel>
                <asp:Button ID="Button1" runat="server" Text="export" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
