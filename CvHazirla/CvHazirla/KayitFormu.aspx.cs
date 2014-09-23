using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CvHazirla
{
    public partial class KayitFormu : System.Web.UI.Page
    {


        SqlConnection baglanti = new SqlConnection("Data Source=localhost;Initial Catalog=CvMaker;Integrated Security=True");



      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)  
            {
                string ad = Request.Form["kayitIsim"];   
                string soyad = Request.Form["kayitSoyisim"];
                string email = Request.Form["kayitEmail"];  
                string sifre = Request.Form["kayitSifre"];

                sql.crud.Ekle("INSERT INTO uye(ad, soyad, email, sifre) VALUES ( " +
                    " '" + ad + "', " +
                    " '" + soyad + "', " +
                    " '" + email + "', " +
                    " '" + sifre + "' " +
                    ")");
            }
        }

    }
}