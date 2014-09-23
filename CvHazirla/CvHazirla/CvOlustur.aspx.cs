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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                dtIl = sql.crud.Sorgu("select * from Sehirler order by SehirAdi");
                DropDownListAdresIl.DataSource = dtIl;
                DropDownListAdresIl.DataTextField = "SehirAdi";
                DropDownListAdresIl.DataBind();

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

    }
}