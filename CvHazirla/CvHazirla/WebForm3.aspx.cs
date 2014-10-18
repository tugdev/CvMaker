using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace CvHazirla
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Redirect("login.aspx");

            if (IsPostBack == false)
            {
                codekisisel();
                codeegitim();
                codeiletisim();
                codesertifika();
                codebilgisayar();
                codeburs();
                codeuye();
                codeozet();
                codeIstecrubesi();
                codereferans();
                codeyabancidil();
            }
        }


        public void codeIstecrubesi()
        {

            string html = string.Empty;

            DataTable dt = new DataTable();

            dt = sql.crud.Sorgu("select * from isTecrubesi");

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                html += " <tr> " +
                        "     <td>" +
                        "         " + i + "" +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["firmaadi"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["firmabaslangicay"] + " " + dt.Rows[i]["firmabaslangicyil"] +
                        "     </td>" +
                         "     <td>" +
                        "         " + dt.Rows[i]["firmabitisay"] + " " + dt.Rows[i]["firmabitisyil"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["firmapozisyon"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["firmacalismasekli"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["firmabilgi"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["sehir"] +
                        "     </td>" +

                        " </tr>";
            }

            codebehindIstecrubesi.InnerHtml = html;
        }

        public void codereferans()
        {
            string html2 = string.Empty;

            DataTable dt2 = new DataTable();

            dt2 = sql.crud.Sorgu("select * from Referans");

            for (int i = 0; i < dt2.Rows.Count; i++)
            {
                html2 += " <tr> " +
                       "     <td>" +
                       "         " + i + "" +
                       "     </td>" +
                       "     <td>" +
                       "         " + dt2.Rows[i]["radi"] +
                       "     </td>" +
                       "     <td>" +
                       "         " + dt2.Rows[i]["rsoyadi"] +
                       "     </td>" +
                        "     <td>" +
                       "         " + dt2.Rows[i]["rmeslek"] +
                       "     </td>" +
                       "     <td>" +
                       "         " + dt2.Rows[i]["rmail"] +
                       "     </td>" +
                       "     <td>" +
                       "         " + dt2.Rows[i]["rcep"] +
                       "     </td>" +

                       " </tr>";
            }

            codebehindreferans.InnerHtml = html2;
        }

        public void codeyabancidil()
        {
            string html2 = string.Empty;

            DataTable dt2 = new DataTable();

            dt2 = sql.crud.Sorgu("select * from YabanciDil where uyeId=" + Session["id"]);

            for (int i = 0; i < dt2.Rows.Count; i++)
            {
                html2 += " <tr> " +
                       "     <td>" +
                       "         " + i + "" +
                       "     </td>" +
                       "     <td>" +
                       "         " + dt2.Rows[i]["diladi"] +
                       "     </td>" +
                       "     <td>" +
                       "         " + dt2.Rows[i]["konusma"] +
                       "     </td>" +
                        "     <td>" +
                       "         " + dt2.Rows[i]["yazma"] +
                       "     </td>" +
                       "     <td>" +
                       "         " + dt2.Rows[i]["anlama"] +
                       "     </td>" +


                       " </tr>";
            }

            codebehinddilbilgisi.InnerHtml = html2;
        }

        public void codekisisel()
        {

            DataTable dtUye2 = new DataTable();

            dtUye2 = sql.crud.Sorgu("SELECT * FROM uye WHERE id =" + Session["id"]);

            Labelad.Text = dtUye2.Rows[0]["ad"].ToString();
            Labelsoyad.Text = dtUye2.Rows[0]["soyad"].ToString();
            Labeldogumyeri.Text = dtUye2.Rows[0]["dogumYeri"].ToString();
            Labeldogumtrh.Text = dtUye2.Rows[0]["dogumTarihi"].ToString();
            Labelcinsiyet.Text = dtUye2.Rows[0]["cinsiyet"].ToString();
            if (Labelcinsiyet.Text == "1") //cinsiyette sıkıntı var
            {
                Labelcinsiyet.Text = "erkek";
            }
            else
            {
                Labelcinsiyet.Text = "kadın";
            }
            Labelmedenidrm.Text = dtUye2.Rows[0]["medeniDurum"].ToString();
            if (Labelmedenidrm.Text == "1")
            {
                Labelmedenidrm.Text = "evli";
            }
            else
            {
                Labelmedenidrm.Text = "bekar";
            }
            Labelsurucubelgesi.Text = dtUye2.Rows[0]["surucuBelgesi"].ToString();
            if (Labelsurucubelgesi.Text == "1")
            {
                Labelsurucubelgesi.Text = "var";
            }
            else
            {
                Labelsurucubelgesi.Text = "yok";
            }
            Labeluyruk.Text = dtUye2.Rows[0]["ulke"].ToString();
            //Image1.ImageUrl = "/img/uye/" + dtUye2.Rows[0]["resimAd"].ToString();
        }

        public void codeegitim()
        {
            DataTable dtegtm = new DataTable();
            dtegtm = sql.crud.Sorgu("select * from egitimBilgileri where uyeId=" + Session["id"]);

            Labeluniadi.Text = dtegtm.Rows[0]["uniadi"].ToString();
            Labelunisehir.Text = dtegtm.Rows[0]["sehir"].ToString();
            Labelbolum.Text = dtegtm.Rows[0]["bolum"].ToString();
            Labelunibaslangicay.Text = dtegtm.Rows[0]["ünibaslangicay"].ToString();
            Labelunibaslangicyil.Text = dtegtm.Rows[0]["ünibaslangicyil"].ToString();
            Labelunibitisay.Text = dtegtm.Rows[0]["ünibitisay"].ToString();
            Labelunibiisyil.Text = dtegtm.Rows[0]["ünibitisyil"].ToString();
            Labelliseadi.Text = dtegtm.Rows[0]["liseadi"].ToString();
            Labellisesehir.Text = dtegtm.Rows[0]["lisesehir"].ToString();


            Labellisebitisay.Text = dtegtm.Rows[0]["lisebitisay"].ToString();
            Labellisebiisyil.Text = dtegtm.Rows[0]["lisebitisyil"].ToString();
        }

        public void codeiletisim()
        {
            DataTable dtiltsm = new DataTable();
            dtiltsm = sql.crud.Sorgu("select * from iletisimBilgileri where uyeId=" + Session["id"]);

            Labelil.Text = dtiltsm.Rows[0]["il"].ToString();
            Labelilce.Text = dtiltsm.Rows[0]["ilce"].ToString();
            Labelsemt.Text = dtiltsm.Rows[0]["semt"].ToString();
            Labeladres.Text = dtiltsm.Rows[0]["adres"].ToString();
            Labelceptel1.Text = dtiltsm.Rows[0]["ceptel1"].ToString();
            Labelceptel2.Text = dtiltsm.Rows[0]["ceptel2"].ToString();
            Labeleposta1.Text = dtiltsm.Rows[0]["eposta"].ToString();
            Labeleposta2.Text = dtiltsm.Rows[0]["eposta2"].ToString();
            Labelwebsayfa.Text = dtiltsm.Rows[0]["webSayfasi"].ToString();

        }

        public void codesertifika()
        {
            DataTable dtsrtfk = new DataTable();
            dtsrtfk = sql.crud.Sorgu("select * from SertifikaBilgileri where uyeId=" + Session["id"]);
            Labelsertifika.Text = dtsrtfk.Rows[0]["sertifikabilgi"].ToString();
        }

        public void codebilgisayar()
        {
            DataTable dtbil = new DataTable();
            dtbil = sql.crud.Sorgu("select * from BilgisayarBilgisi where uyeId=" + Session["id"]);
            Labelbilgisayarbilgisi.Text = dtbil.Rows[0]["bilgisayarbilgi"].ToString();
        }

        public void codeburs()
        {
            DataTable dtbrs = new DataTable();
            dtbrs = sql.crud.Sorgu("select * from BursOdulBasProje where uyeId=" + Session["id"]);
            Labelbursodulbasari.Text = dtbrs.Rows[0]["bobpbilgi"].ToString();
        }

        public void codeuye()
        {
            DataTable dtuye = new DataTable();
            dtuye = sql.crud.Sorgu("select * from Kulupler where uyeId=" + Session["id"]);
            Labelkulup.Text = dtuye.Rows[0]["kulupbilgi"].ToString();
        }

        public void codeozet()
        {
            DataTable dtozet = new DataTable();
            dtozet = sql.crud.Sorgu("select * from OzetBilgiler where uyeId=" + Session["id"]);
            Labelozetbilgi.Text = dtozet.Rows[0]["ozetbilgi"].ToString();
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            BaseFont bffont = BaseFont.CreateFont("C:\\WINDOWS\\Fonts\\arial.ttf", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
            iTextSharp.text.Font fontozel = new iTextSharp.text.Font(bffont, 12);


            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Panel.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            pnlcv.RenderControl(hw);
         
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

            pdfDoc.Open();


            pdfDoc.Add(new Paragraph("İİııŞŞşşĞĞğğ harfleri denemesi", fontozel));
            
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();

        }
      
    }
}