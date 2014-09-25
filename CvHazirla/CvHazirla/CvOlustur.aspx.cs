using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CvHazirla
{
    public partial class CvOlustur : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        DataTable dtIl = new DataTable();
        DataTable dtIlce = new DataTable();
        DataTable dtSemt = new DataTable();
        DataTable dtSehir = new DataTable();
        DataTable dtUlke = new DataTable();
        DataTable dtDil = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
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
                DropDownListDil3.DataSource = dtDil;
                DropDownListDil3.DataTextField = "Language";
                DropDownListDil3.DataBind();
                DropDownListDil4.DataSource = dtDil;
                DropDownListDil4.DataTextField = "Language";
                DropDownListDil4.DataBind();
                DropDownListDil5.DataSource = dtDil;
                DropDownListDil5.DataTextField = "Language";
                DropDownListDil5.DataBind();
                DropDownListDil6.DataSource = dtDil;
                DropDownListDil6.DataTextField = "Language";
                DropDownListDil6.DataBind();






                dtUlke = sql.crud.Sorgu("select * from Ulkeler order by UlkeAdi");
                DropDownListulke1.DataSource = dtUlke;
                DropDownListulke1.DataTextField = "UlkeAdi";
                DropDownListulke1.DataBind();

                dtSehir = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
                DropDownList1.DataSource = dtSehir;
                DropDownList1.DataTextField = "SehirAdi";
                DropDownList1.DataBind();

                dtSehir = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
                DropDownList2.DataSource = dtSehir;
                DropDownList2.DataTextField = "SehirAdi";
                DropDownList2.DataBind();

                dtSehir = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
                DropDownList3.DataSource = dtSehir;
                DropDownList3.DataTextField = "SehirAdi";
                DropDownList3.DataBind();
            }
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
                FileUploadResim.SaveAs(MapPath("gecici/" + FileUploadResim.FileName));
                Image1.ImageUrl = "gecici/" + FileUploadResim.FileName;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            dtSehir = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
            DropDownList1.DataSource = dtSehir;
            DropDownList1.DataTextField = "SehirAdi";
            DropDownList1.DataBind();
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

       



    }
}