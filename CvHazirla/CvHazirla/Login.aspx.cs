using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace CvHazirla
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                int a = 19;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();  //datatable nesnesi oluştur
            string email = girisEmail.Text;  //text içine yazılanı string değişkene ata
            string sifre = girisSifre.Text;


            //SqlDataAdapter sqDa = new SqlDataAdapter();

            //string yol = "Data Source=.;Initial Catalog=CvMaker;Integrated Security=True";
            //SqlConnection bag = new SqlConnection(yol);

            //bag.Open();

            //SqlCommand sqCom = new SqlCommand();
            //sqCom.Connection = bag;

            //sqCom.CommandText = "select * from uye where email = '" + email + "' and sifre = '" + sifre + "'";
            //sqCom.CommandType = CommandType.Text;

            //sqDa.SelectCommand = sqCom;

            //sqDa.Fill(dt);

            //bag.Close();

            dt = sql.crud.Sorgu("select * from uye where email = '" + email + "' and sifre = '" + sifre + "'");

            if (dt.Rows.Count == 1)
            {
                Session["id"] = dt.Rows[0]["id"];
                Response.Redirect("default.aspx");
            }
            else
                Response.Write("<script>alert('Giriş Başarısız');</script>");

        }
    }
}