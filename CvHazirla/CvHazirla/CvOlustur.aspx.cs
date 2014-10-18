using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
//<%@ MasterType virtualpath="~/CvMaster.master" %>
namespace CvHazirla
{
    
    public partial class CvOlustur : System.Web.UI.Page
    {
        
        DataTable dt = new DataTable();
        DataTable dtIl = new DataTable();
        DataTable dtIlce = new DataTable();
        DataTable dtSemt = new DataTable();
        DataTable dtSehir = new DataTable();
        DataTable dtSehir1 = new DataTable();
        DataTable dtUlke = new DataTable();
        DataTable dtDil = new DataTable();
        DataTable dtuni = new DataTable();
        DataTable dtbolum = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Redirect("login.aspx");    

            if (IsPostBack == false)
            {
                
                sehirUlkeUniBolum();
                goster_is();
                goster_ref();
                goster_dil();
                // sayfa ilk yüklendiğinde isim soyismi al 

                DataTable dtUye = new DataTable();

                dtUye = sql.crud.Sorgu("SELECT * FROM uye WHERE id = " + Session["id"]);

                Txtbxad.Text = dtUye.Rows[0]["ad"].ToString();
                Txtbxsoyad.Text = dtUye.Rows[0]["soyad"].ToString();
                Label lbl = this.Master.FindControl("Labelkullanici") as Label;
                lbl.Text = "hoşgeldiniz " + dtUye.Rows[0]["ad"].ToString();


            }
            CinsiyetAlani();
            medenidurumalani();
            surucubelgesialani();
            IletisimBilgileriniDoldur();
            gosterkisisel();
        }

        protected void DropDownListAdresIl_SelectedIndexChanged(object sender, EventArgs e)
        {
            dtIlce = sql.crud.Sorgu("select * from Sehirler INNER JOIN Ilceler " +
                " ON sehirler.SehirId = Ilceler.SehirId " +
                " where Sehirler.sehirAdi = '" + DropDownListAdresIl.SelectedItem + "'");
            DropDownListAdresIlce.DataSource = dtIlce;
            DropDownListAdresIlce.DataTextField = "IlceAdi";
            DropDownListAdresIlce.DataBind();
        }

        protected void DropDownListAdresIlce_SelectedIndexChanged(object sender, EventArgs e)
        {
            dtSemt = sql.crud.Sorgu("select distinct SemtAdi from Sehirler " +
               " INNER JOIN Ilceler ON sehirler.SehirId = Ilceler.SehirId " +
               " INNER JOIN SemtMah ON Ilceler.ilceId = SemtMah.ilceId " +
               " WHERE sehirler.SehirAdi = '" + DropDownListAdresIl.SelectedItem + "' " +
               " and Ilceler.IlceAdi = '" + DropDownListAdresIlce.SelectedItem + "' " +
               " ");

            DropDownListAdresSemt.DataSource = dtSemt;
            DropDownListAdresSemt.DataTextField = "SemtAdi";
            DropDownListAdresSemt.DataBind();
        }

        protected void ButtonSec_Click(object sender, EventArgs e)
        {
            if (FileUploadResim.HasFile)
            {
                string resimAd = string.Empty;
                string[] resimParca;
                string resimOrjinalAd = FileUploadResim.FileName;

                if (resimOrjinalAd != "")
                {
                    resimParca = resimOrjinalAd.Split('.');
                    resimAd = Session["id"].ToString() + "." + resimParca[resimParca.Count() - 1];

                    FileUploadResim.SaveAs(Server.MapPath("/img/uye/" + resimAd));
                }

                sql.crud.Guncelle("UPDATE uye SET" +
                                    " resimAd =  '" + resimAd + "', " +
                                    " resimOrjinalAd =  '" + resimOrjinalAd + "' " +
                                    " WHERE id =" + Session["id"] +
                                    "");
                Image1.ImageUrl = "/img/uye/" + FileUploadResim.FileName;
            }
        }

        private void temizle(Control control)
        {
            var textbox = control as TextBox;
            if (textbox != null)
                textbox.Text = string.Empty;
            //var dropDownList = control as DropDownList;
            //if (dropDownList != null)
            //    dropDownList.SelectedIndex = 1;
            var checkBox = control as CheckBox;
            if (checkBox != null)
                checkBox.Checked = false;
            var radioButton = control as RadioButton;
            if (radioButton != null)
                radioButton.Checked = false;

            foreach (Control kkontrol in control.Controls)
            {
                temizle(kkontrol);
            }

        }

        void FillDDL()
        {
            //Yıl
            for (int i = 1990; i <= DateTime.Now.Year; i++)
            {
                ListItem item = new ListItem();
                item.Text = new DateTime(i, 1, 1).ToString("yyyy");
                item.Value = i.ToString();
                DropDownListyil.Items.Add(item);
                DropDownListyil2.Items.Add(item);
                DropDownListyil3.Items.Add(item);
                DropDownListyil4.Items.Add(item);
                DropDownListyil5.Items.Add(item);
            }
            //Ay
            for (int i = 1; i <= 12; i++)
            {
                ListItem item = new ListItem();
                item.Text = new DateTime(1900, i, 1).ToString("MMMM");
                item.Value = i.ToString();
                DropDownListay.Items.Add(item);
                DropDownListay2.Items.Add(item);
                DropDownListay3.Items.Add(item);
                DropDownListay4.Items.Add(item);
                DropDownListay5.Items.Add(item);
            }

        }

        public void gosterkisisel()
        {
            DataTable dtUye2 = new DataTable();

            dtUye2 = sql.crud.Sorgu("SELECT * FROM uye WHERE id = " + Session["id"]);

            Txtbxad.Text = dtUye2.Rows[0]["ad"].ToString();
            Txtbxsoyad.Text = dtUye2.Rows[0]["soyad"].ToString();
            TextboxDogumTarihi.Text=dtUye2.Rows[0]["dogumTarihi"].ToString();
            DropDownList1.SelectedValue = dtUye2.Rows[0]["dogumYeri"].ToString();
            DropDownListulke1.SelectedValue = dtUye2.Rows[0]["ulke"].ToString();
            Image1.ImageUrl = "/img/uye/" + dtUye2.Rows[0]["resimAd"].ToString();

        }


        protected void goster_is()
        {
            string html = string.Empty;
            DataTable dt = new DataTable();
            dt = sql.crud.Sorgu("SELECT * FROM isTecrubesi WHERE uyeId = " + Session["id"]);
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
                         "     <td>" +
                        "         " + "düzenle" +
                        "     </td>" +

                        " </tr>";
            }

            codebehindIs.InnerHtml = html;
            //GridViewistecrube.DataSource = dt;
            //GridViewistecrube.DataBind();
        }

        protected void goster_ref()
        {
            string html = string.Empty;
            DataTable dt = new DataTable();
            dt = sql.crud.Sorgu("SELECT * FROM Referans WHERE uyeId = " + Session["id"]);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                html += " <tr> " +
                        "     <td>" +
                        "         " + i + "" +
                        "     </td>" +
                        "     <td>" +  "         " + dt.Rows[i]["radi"] +"     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["rsoyadi"] + 
                        "     </td>" +
                         "     <td>" +
                        "         " + dt.Rows[i]["rmeslek"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["rmail"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["rcep"] +
                        "     </td>" +
                         "     <td>" +
                        "         " + "düzenle" +
                        "     </td>" +
                     
                        " </tr>";
            }

            codebehindref.InnerHtml = html;
            //GridViewreferans.DataSource = dt;
            //GridViewreferans.DataBind();
        }

        protected void goster_dil()
        {
            string html = string.Empty;
            DataTable dt = new DataTable();
            dt = sql.crud.Sorgu("SELECT * FROM YabanciDil WHERE uyeId = " + Session["id"]);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                html += " <tr> " +
                        "     <td>" +
                        "         " + i + "" +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["diladi"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["konusma"] +
                        "     </td>" +
                         "     <td>" +
                        "         " + dt.Rows[i]["yazma"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + dt.Rows[i]["anlama"] +
                        "     </td>" +
                        "     <td>" +
                        "         " + "düzenle" +
                        "     </td>" +

                        " </tr>";
            }

            codebehinddil.InnerHtml = html;
            //GridViewdil.DataSource = dt;
            //GridViewdil.DataBind();
        }

        protected void ButtonKisiselBilgiler_Click(object sender, EventArgs e)
        {
            sql.crud.Guncelle("UPDATE uye SET " +
                    " ad = '" + Txtbxad.Text + "', " +
                    " soyad = '" + Txtbxsoyad.Text + "', " +
                    " dogumYeri = '" + DropDownList1.SelectedItem + "', " +
                    " dogumTarihi = '" + TextboxDogumTarihi.Text + "', " +
                    " cinsiyet = '" + Request.Form["optionsRadiosCinsiyet"] + "', " +
                    " medeniDurum= '" + Request.Form["optionsRadiosMedeniDurum"] + "', " +
                    " surucuBelgesi = '" + Request.Form["optionsRadiosSurucuBelgesi"] + "', " +
                    " ulke = '" + DropDownListulke1.SelectedItem + "' " +
                    //" resimAd ='" +                            +"'"+
                    " where id = " + Session["id"] + " " +
                    "");
            //gosterkisisel();
        }

        protected void ButtonIletisim_Click(object sender, EventArgs e)
        {
            DataTable dtKontrol = new DataTable();

            dtKontrol = sql.crud.Sorgu("SELECT * FROM iletisimBilgileri WHERE uyeId = " + Session["id"]);
            
            if (dtKontrol.Rows.Count == 1)
                sql.crud.Guncelle("UPDATE iletisimBilgileri SET" +
                                    " il = '" + DropDownListAdresIl.SelectedItem + "', " +
                                    " ilce = '" + DropDownListAdresIlce.SelectedItem + "', " +
                                    " semt = '" + DropDownListAdresSemt.SelectedItem + "', " +
                                    " adres = '" + Request.Form["adres"] + "', " +
                                    " ceptel1 = '" + phone1.Text + "', " +
                                    " ceptel2 = '" + Request.Form["phone2"] + "', " +
                                    " eposta = '" + Txtbxmail1.Text + "', " +
                                    " eposta2 = '" + Txtbxmail2.Text + "', " +
                                    " webSayfasi = '" + Txtbxweb.Text + "' " +
                                    " WHERE uyeId = " + Session["id"] +
                                    "");
            else
                sql.crud.Ekle("INSERT INTO iletisimBilgileri(il, ilce, semt, adres, ceptel1, ceptel2, eposta, eposta2, webSayfasi, uyeId) VALUES ( " +
                    "' " + DropDownListAdresIl.SelectedItem + "', " +
                    " '" + DropDownListAdresIlce.SelectedItem + "', " +
                    " '" + DropDownListAdresIlce.SelectedItem + "', " +
                    " '" + Request.Form["adres"] + "', " +
                    " '" + phone1.Text + "', " +
                    " '" + Request.Form["phone2"] + "', " +
                    " '" + Txtbxmail1.Text + "', " +
                    " '" + Txtbxmail2.Text + "', " +
                    " '" + Txtbxweb.Text + "', " +
                    " " + Session["id"] + "" +
                    ")");
        }

        protected void ButtonEgitimBilgileri_Click(object sender, EventArgs e)
        {
            sql.crud.Ekle("INSERT INTO egitimBilgileri(egitimseviyesi, ünibaslangicay, ünibaslangicyil, ünibitisay, ünibitisyil, uniadi, sehir, bolum, ogretimtipi, ogretimdili, üninot, liseadi, lisesehir,lisebitisay,lisebitisyil, uyeId) VALUES ( " +
             " '" + DropDownListegitimseviye.SelectedItem + "', " +
              " '" + DropDownListay.SelectedItem + "', " +
               " '" + DropDownListyil.SelectedItem + "', " +
               " '" + DropDownListay2.SelectedItem + "', " +
              " '" + DropDownListyil2.SelectedItem + "', " +
              " '" + DropDownListuniadi.SelectedItem + "', " +    
               " '" + DropDownList2.SelectedItem + "', " +
              " '" + DropDownListbolumadi.SelectedItem + "', " +
              " '" + Request.Form["selectogretimtipi"] + "', " +
              " '" + DropDownListdil.SelectedItem + "', " +
               " '" + Request.Form["üninot"] + "', " +
               "' " + Txtbxlise.Text + "', " +
               " '" + DropDownListlisesehir.SelectedItem + "', " +
               " '" + DropDownListay3.SelectedItem + "', " +
               " '" + DropDownListyil3.SelectedItem + "', " +
              " " + Session["id"] + "" +
              ")");
           
            temizle(this);
        }

        protected void ButtonIsTecrubesi_Click(object sender, EventArgs e)
        {
            sql.crud.Ekle("INSERT INTO isTecrubesi(firmaadi, firmabaslangicay, firmabaslangicyil, firmabitisay , firmabitisyil, firmapozisyon, firmacalismasekli, firmabilgi, sehir, uyeId) VALUES ( " +
               "' " + Txtbx1frm.Text + "', " +
               " '" + DropDownListay4.SelectedItem + "', " +
               " '" + DropDownListyil4.SelectedItem + "', " +
                " '" + DropDownListay5.SelectedItem + "', " +
               " '" + DropDownListyil5.SelectedItem + "', " +
               " '" + Txtbx1frmpzsyn.Text + "', " +
                " '" + DropDownListcalismasekli.SelectedItem + "', " +
               " '" + Request.Form["istanimi"] + "', " +
               " '" + DropDownList3.SelectedItem + "', " +
               " " + Session["id"] + "" +
               ")");
            goster_is();
            temizle(this);
        }

        protected void ButtonSertifikaBilgileri_Click(object sender, EventArgs e)
        {
            sql.crud.Ekle("INSERT INTO SertifikaBilgileri(sertifikabilgi, uyeId) VALUES ( " +
               //" '" + Request.Form["CKEditorControlSertifika"] + "', " +
               " '" + CKEditorControlSertifika.Text + "', " +   
               " " + Session["id"] + "" +
               ")");
           
            temizle(this);
        }

        protected void ButtonBilgisayarBilgisi_Click(object sender, EventArgs e)
        {
            sql.crud.Ekle("INSERT INTO BilgisayarBilgisi(bilgisayarbilgi, uyeId) VALUES ( " +     
               " '" + CKEditorControlBil.Text + "', " +
               " " + Session["id"] + "" +
               ")");

            temizle(this);
        }

        protected void ButtonKulupler_Click(object sender, EventArgs e)
        {
            sql.crud.Ekle("INSERT INTO Kulupler(kulupbilgi, uyeId) VALUES ( " +
               " '" + CKEditorControlkulup.Text + "', " +
               " " + Session["id"] + "" +
               ")");

            temizle(this);
        }

        //referans
        protected void ButtonReferanslar_Click(object sender, EventArgs e)
        {
            sql.crud.Ekle("INSERT INTO Referans(radi, rsoyadi, rmeslek, rmail, rcep, uyeId) VALUES ( " +
               "' " + txtbxreferansadi.Text + "', " +
                "' " + txtbxreferanssoyadi.Text + "', " +
                "' " + txtbxreferansmeslek.Text + "', " +
                "' " + txtbxreferansmail.Text + "', " +
                "' " + txtbxreferanstl.Text + "', " +

               " " + Session["id"] + "" +
               ")");
            goster_ref();
            temizle(this);
        }

        protected void ButtonBursOdul_Click(object sender, EventArgs e)
        {
            sql.crud.Ekle("INSERT INTO BursOdulBasProje(bobpbilgi, uyeId) VALUES ( " +
               " '" + CKEditorControlbobpbilgi.Text + "', " +
               " " + Session["id"] + "" +
               ")");

            temizle(this);
        }

        protected void ButtonOzet_Click(object sender, EventArgs e)
        {
            sql.crud.Ekle("INSERT INTO OzetBilgiler(ozetbilgi, uyeId) VALUES ( " +
               " '" + CKEditorControlozetbilgi.Text + "', " +
               " " + Session["id"] + "" +
               ")");

            temizle(this);
        }

        protected void ButtonYabanciDil_Click(object sender, EventArgs e)
        {
            sql.crud.Ekle("INSERT INTO YabanciDil(diladi, konusma, yazma, anlama, uyeId) VALUES ( " +
               "' " + DropDownListDil2.SelectedItem + "', " +
                "' " + DropDownListkonusma.SelectedItem + "', " +
                "' " + DropDownListYazma.SelectedItem + "', " +
                "' " + DropDownListAnlama.SelectedItem + "', " +

               " " + Session["id"] + "" +
               ")");
            goster_dil();
            temizle(this);
        }

        public void sehirUlkeUniBolum()
        {
            FillDDL();

            dtIl = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
            DropDownListAdresIl.DataSource = dtIl;
            DropDownListAdresIl.DataTextField = "SehirAdi";
            DropDownListAdresIl.DataBind();

            dtDil = sql.crud.Sorgu("select * from Languages order by Language");
            DropDownListdil.DataSource = dtDil;
            DropDownListdil.DataTextField = "Language";
            DropDownListdil.DataBind();

            dtDil = sql.crud.Sorgu("select * from Languages order by Language");
            DropDownListDil2.DataSource = dtDil;
            DropDownListDil2.DataTextField = "Language";
            DropDownListDil2.DataBind();
          
            dtUlke = sql.crud.Sorgu("select * from Ulkeler order by UlkeAdi");
            DropDownListulke1.DataSource = dtUlke;
            DropDownListulke1.DataTextField = "UlkeAdi";
            DropDownListulke1.DataBind();

            dtSehir1 = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
            DropDownList1.DataSource = dtSehir1;
            DropDownList1.DataTextField = "SehirAdi";
            DropDownList1.DataBind();

            dtSehir1 = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
            DropDownList2.DataSource = dtSehir1;
            DropDownList2.DataTextField = "SehirAdi";
            DropDownList2.DataBind();

            dtSehir1 = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
            DropDownListlisesehir.DataSource = dtSehir1;
            DropDownListlisesehir.DataTextField = "SehirAdi";
            DropDownListlisesehir.DataBind();


            dtSehir1 = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
            DropDownList3.DataSource = dtSehir1;
            DropDownList3.DataTextField = "SehirAdi";
            DropDownList3.DataBind();

            dtuni = sql.crud.Sorgu("select * from Universiteler order by Universiteler");
            DropDownListuniadi.DataSource = dtuni;
            DropDownListuniadi.DataTextField = "Universiteler";
            DropDownListuniadi.DataBind();

            dtbolum = sql.crud.Sorgu("select * from Bolumler order by Bolumadi");
            DropDownListbolumadi.DataSource = dtbolum;
            DropDownListbolumadi.DataTextField = "Bolumadi";
            DropDownListbolumadi.DataBind();
        }

        public void CinsiyetAlani()
        {
            DataTable dtUye = new DataTable();

            dtUye = sql.crud.Sorgu("SELECT * FROM uye WHERE id = " + Session["id"]);
            string html = "<label> " +
                           " Cinsiyet</label>";
            if (dtUye.Rows[0]["cinsiyet"].ToString() == "0")
                html += " <input type='radio' name='optionsRadiosCinsiyet' id='Radio1' value='0' checked='checked'/>";
            else
                html += " <input type='radio' name='optionsRadiosCinsiyet' id='Radio1' value='0' />";

            html += " Erkek";

            if (dtUye.Rows[0]["cinsiyet"].ToString() == "0")
                html += " <input type='radio' name='optionsRadiosCinsiyet' id='Radio2' value='1'  />";
            else
                html += " <input type='radio' name='optionsRadiosCinsiyet' id='Radio2' value='1' checked='checked' />";

                html += " Kadın";
            codebehindCinsiyet.InnerHtml = html;
        }

        public void medenidurumalani()
        {
            DataTable dtmdrm = new DataTable();
            dtmdrm = sql.crud.Sorgu("select * from uye where id =" + Session["id"]);
            string html = "<label> " +
                         " Medeni Durum</label>";
            if (dtmdrm.Rows[0]["medeniDurum"].ToString() == "0")
                html += " <input type='radio' name='optionsRadiosMedeniDurum' id='Radio3' value='0'  checked='checked'/>";
            else
                html += " <input type='radio' name='optionsRadiosMedeniDurum' id='Radio3' value='0'  />";

            html += " Bekar";

            if (dtmdrm.Rows[0]["medeniDurum"].ToString() == "0")
                html += " <input type='radio' name='optionsRadiosMedeniDurum' id='Radio4' value='1'  />";
            else
                html += " <input type='radio' name='optionsRadiosMedeniDurum' id='Radio4' value='1' checked='checked' />";

            html += " Evli";
            codebehindmedeniDurum.InnerHtml = html;

        }

        public void surucubelgesialani()
        {
            DataTable dtsrc = new DataTable();
            dtsrc = sql.crud.Sorgu("select * from uye where id =" + Session["id"]);
            string html = "<label> " +
                         "  Sürücü Belgesi</label>";
            if (dtsrc.Rows[0]["surucuBelgesi"].ToString() == "0")
                html += " <input type='radio' name='optionsRadiosSurucuBelgesi' id='Radio5' value='0'  checked='checked'/>";
            else
                html += " <input type='radio' name='optionsRadiosSurucuBelgesi' id='Radio5' value='0'  />";

            html += " Yok";

            if (dtsrc.Rows[0]["surucuBelgesi"].ToString() == "0")
                html += " <input type='radio' name='optionsRadiosSurucuBelgesi' id='Radio6' value='1'  />";
            else
                html += " <input type='radio' name='optionsRadiosSurucuBelgesi' id='Radio6' value='1' checked='checked' />";

            html += " Var";
            codebehindsurucuBelgesi.InnerHtml = html;
        }

        public void IletisimBilgileriniDoldur()
        {
            DataTable dtilbil = new DataTable();

             dtilbil = sql.crud.Sorgu("SELECT * FROM iletisimBilgileri WHERE uyeId = " + Session["id"]);
            
            string html;

            if (dtilbil.Rows.Count == 1)
            {
                phone1.Text = dtilbil.Rows[0]["ceptel1"].ToString();
                html = " <label>cep tl2</label> "+
                        " <input  name='phone2' tabindex='3' type='text' value=" + dtilbil.Rows[0]["ceptel2"].ToString() + ">";
            }
            else
            {
                html = " <label>cep tl2</label> " +
                       " <input id='phone2' name='phone2' tabindex='3' type='text'/>";
                
            }

            codebehindIletisimCepTel2.InnerHtml = html;

        }
    }
}