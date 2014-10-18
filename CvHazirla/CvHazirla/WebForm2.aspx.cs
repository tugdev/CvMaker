using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Data;

namespace CvHazirla
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Document pdf = new Document();
            PdfWriter.GetInstance(pdf, new FileStream("C:\\Users\\tugdev\\Desktop\\Raporum.pdf", FileMode.Create));

            pdf.Open();

            pdf.Add(new Paragraph("<h5>cehars</h5> <h3>arslan</h3>"));

            pdf.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //string htmlText = "<h5>cehars</h5> <h3>arslan</h3>";
            string htmlText = "<h5>cehars</h5>";
                htmlText +="<h3>arslan</h3>";
            Document pdf = new Document();
            PdfWriter.GetInstance(pdf, new FileStream("C:\\Users\\tugdev\\Desktop\\Raporum2.pdf", FileMode.Create));

            pdf.Open();

            HTMLWorker htmlworker = new HTMLWorker(pdf);
            htmlworker.Parse(new StringReader(htmlText));

            pdf.Close();

            Label1.Text = TextBox1.Text;
            Label1.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = sql.crud.Sorgu("SELECT * FROM uye WHERE id= " + Session["id"]);

            string html = string.Empty;
            html += " <strong>KİŞİSEL BİLGİLER </strong> <hr />" +
            " <table border='1' style='width: 60%;height: 175px;'> " +
   " <tr>" +

          "  <td style='width: 448px;'> " +
            "    <table border='1' >" +
       " <tr>" +
           " <td style='width: 110px;'>" +
            "   <asp:Label ID='Labeladsy' runat='server' Text='Ad,Soyad : '> " +
            "</asp:Label>" +
            "</td>" +
          "  <td style='width: 312px;'>" +
              "  <asp:Label ID='Labelad' runat='server' Text=''></asp:Label>" +
              "  <asp:Label ID='Labelsoyad' runat='server' Text=' '></asp:Label>  " +
           " </td>" +
        "</tr>" +
      "  <tr>" +
         "   <td >" +
             "  <asp:Label ID='Labeldyer' runat='server' Text='Doğum Yeri : '></asp:Label>" +
            "</td>" +
            "<td style='width: 312px;'>" +
            "    <asp:Label ID='Labeldogumyeri' runat='server' Text=''></asp:Label>" +
          "  </td>" +

        "</tr>" +
          "<tr>" +
          "  <td >" +
            "    <asp:Label ID='Labeldog' runat='server' Text='Doğum Tarihi : '></asp:Label>" +
            "</td>" +
          "  <td style='width: 312px;'>" +
           "     <asp:Label ID='Labeldogumtrh' runat='server' Text=''></asp:Label>" +
           " </td>" +

     "   </tr>" +
       " <tr>" +
       "     <td >" +
         "       <asp:Label ID='Labelcin' runat='server' Text='Cinsiyet : '></asp:Label>" +
          "  </td>" +
           " <td style='width: 312px;'>" +
           "     <asp:Label ID='Labelcinsiyet' runat='server' Text=''></asp:Label>" +
          "  </td>" +
       "  </tr>" +

        " <tr>" +
         "   <td >" +
            "    <asp:Label ID='Labelmed' runat='server' Text='Medeni Durum : '></asp:Label>" +
          "  </td>" +
          "  <td style='width: 312px;'> " +
           "     <asp:Label ID='Labelmedenidrm' runat='server' Text=''></asp:Label>" +
           " </td>" +

      "  </tr>" +
       "  <tr>" +
        "    <td>" +
          "      <asp:Label ID='Labelsrb' runat='server' Text='Sürücü Belgesi : '></asp:Label>" +
         "   </td>" +
        "    <td style='width: 312px;'> " +
           "     <asp:Label ID='Labelsurucubelgesi' runat='server' Text=''></asp:Label>" +
          "  </td>" +

       " </tr>" +
      "   <tr>" +
        "    <td>" +
         "       <asp:Label ID='Labeluy' runat='server' Text='Uyruk : '></asp:Label>" +
          "  </td>" +
           " <td style='width: 312px;'> " +
            "    <asp:Label ID='Labeluyruk' runat='server' Text=''></asp:Label>" +
            "</td>" +
        "</tr>" +
   " </table>" +
    "        </td>" +
     "       <td>" +
      "          <asp:Image ID='Image1' runat='server' ImageUrl='~/img/a.jpg' " +
       "            style='height: 150px;width: 150px;margin-left: 45px;' />" +
        "    </td>" +
    "</tr>" +
    "</table>";

            html += "<strong> İLETİŞİM BİLGİLERİ  </strong>" +
            "<hr />" +
             "<table border='1' style='width: 60%;'>" +

                 "<tr>" +
                    "<td style='width: 110px;'>" +
                       "<asp:Label ID='Label11' runat='server' Text='İl, İlçe, Semt : '>" + "</asp:Label>" +
                    "</td>" +
                    "<td>" +
                        "<asp:Label ID='Labelil' runat='server' Text=''>" + "</asp:Label>" + ", " +
                        "<asp:Label ID='Labelilce' runat='server' Text=''>" + "</asp:Label>" + ", " +
                        "<asp:Label ID='Labelsemt' runat='server' Text=''>" + "</asp:Label>" +
                    "</td>" +

                "</tr>" +
                "<tr>" +
                    "<td style='width: 110px;'>" +
                       "<asp:Label ID='Label1' runat='server' Text='Adres Bilgileri : '>" + "</asp:Label>" +
                    "</td>" +
                    "<td>" +
                        "<asp:Label ID='Labeladres' runat='server' Text=''>" + "</asp:Label>" +
                    "</td>" +

                "</tr>" +

                "<tr>" +
                    "<td style='width: 110px;'>" +
                        "<asp:Label ID='Label3' runat='server' Text='Cep Tel : '>" + "</asp:Label>" +
                    "</td>" +
                    "<td>" +
                        "<asp:Label ID='Labelceptel1' runat='server' Text=''>" + "</asp:Label>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; " +
                        "<asp:Label ID='Labelceptel2' runat='server' Text=''>" + "</asp:Label>" +
                    "</td>" +

                "</tr>" +
                "<tr>" +
                    "<td style='width: 110px;'>" +
                        "<asp:Label ID='Label5' runat='server' Text='E-Posta : '>" + "</asp:Label>" +
                    "</td>" +
                    "<td>" +
                        "<asp:Label ID='Labeleposta1' runat='server' Text=''>" + "</asp:Label>" +
                       " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  " +
                        "<asp:Label ID='Labeleposta2' runat='server' Text=''>" + "</asp:Label>" +
                    "</td>" +

                "</tr>" +
                 "<tr>" +
                    "<td style='width: 110px;'>" +
                        "<asp:Label ID='Label7' runat='server' Text='Web Sayfam : '>" + "</asp:Label>" +
                    "</td>" +
                    "<td>" +
                        "<asp:Label ID='Labelwebsayfa' runat='server' Text=''>" + "</asp:Label>" +
                    "</td>" +

                "</tr>" +

            "</table>";


            html += "<strong> EĞİTİM BİLGİLERİ </strong>" +
     "<hr />" +

        "<table border='1' style='width: 60%;'>" +

         "<tr>" +
            "<td style='width: 110px;'>" +
               "<asp:Label ID='Labeluni' runat='server' Text='Üniversite : '>" + "</asp:Label>" +
            "</td>" +
            "<td>" +
                "<asp:Label ID='Labeluniadi' runat='server' Text=''>" + "</asp:Label>" + "-" +
                "<asp:Label ID='Labelunisehir' runat='server' Text='samsun'>" + "</asp:Label>" + "<br />" +

                "<asp:Label ID='Labelbolum' runat='server' Text='Labelbolum'>" + "</asp:Label>" + "- " +
                "<asp:Label ID='Labelunibaslangicay' runat='server' Text='Labelbaslangicay'>" + "</asp:Label>" + "/" +
                "<asp:Label ID='Labelunibaslangicyil' runat='server' Text='Labelbaslangicyil'>" + "</asp:Label>" + " - " +
                "<asp:Label ID='Labelunibitisay' runat='server' Text='Labelbitisay'>" + "</asp:Label>" + "/" +
                "<asp:Label ID='Labelunibiisyil' runat='server' Text='Labelbiisyil'>" + "</asp:Label>" +
            "</td>" +

        "</tr>" +
         "<tr>" +
            "<td style='width: 110px;'>" +
               "<asp:Label ID='Labellise' runat='server' Text='Lise : '>" + "</asp:Label>" +
            "</td>" +
            "<td>" +
                "<asp:Label ID='Labelliseadi' runat='server' Text='omu'>" + "</asp:Label>" + "- " +
                "<asp:Label ID='Labellisesehir' runat='server' Text='samsun'>" + "</asp:Label>" + "<br />" +

                "<asp:Label ID='Labellisebitisay' runat='server' Text='Labelbitisay'>" + "</asp:Label>" + "/" +
                "<asp:Label ID='Labellisebiisyil' runat='server' Text='Labelbiisyil'>" + "</asp:Label>" +
            "</td>" +

        "</tr>" +

    "</table>";



            Document pdf = new Document();

            MemoryStream output = new MemoryStream();
            PdfWriter.GetInstance(pdf, output);

            //PdfWriter.GetInstance(pdf, new FileStream("C:\\Users\\tugdev\\Desktop\\Raporum2.pdf", FileMode.Create));

            pdf.Open();


            HTMLWorker htmlworker = new HTMLWorker(pdf);
            htmlworker.Parse(new StringReader(html));
            
            
            
            //Ekleyeceğimiz resmi Image nesnemize atıyoruz.

            iTextSharp.text.Image img = iTextSharp.text.Image.GetInstance(Server.MapPath("img/uye/1.jpg"));

            //Boyutlandırma için ScaleToFit() methodunu ya da ScalePercent() methodunu kullanabiliriz.

            img.ScaleToFit(200, 100);

            //Çerçeve vermek için aşağıdaki özelliklerini kullanabiliriz.

            img.Border = iTextSharp.text.Rectangle.BOX;

          

            img.BorderWidth = 5f;

            //Sonrasında diğer nesnelerdeki gibi Document içine yada Paragraph içerisine ekleyebiliriz.

            pdf.Add(img);
            
            
            pdf.Close();

            Response.Clear();
            Response.AddHeader("content-disposition", "inline;");
            //Response.AddHeader("content-disposition", "attachment;filename=dosyaadi.pdf;");
            Response.ContentType = "application/pdf";
            Response.BinaryWrite(output.ToArray());
            Response.End();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

    }
}