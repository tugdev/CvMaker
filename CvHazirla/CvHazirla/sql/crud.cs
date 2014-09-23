using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace CvHazirla.sql
{
    public class crud
    {

        public static SqlConnection bag = new SqlConnection("Data Source=.;Initial Catalog=CvMaker;Integrated Security=True");

        public static SqlCommand Ortak(String sql, string crud)
        {
            //if (bag.State == ConnectionState.Closed)
            bag.Open();

            SqlCommand sqCom = new SqlCommand(sql, bag);

            sqCom.CommandType = CommandType.Text;

            if (crud == "sorgu")
                return sqCom;
            else
            {
                sqCom.ExecuteNonQuery();
                bag.Close();
                return null;
            }
        }

        public static DataTable Sorgu(string sql)
        {
            DataTable dtProd = new DataTable();
            SqlDataAdapter sqDa = new SqlDataAdapter();

            sqDa.SelectCommand = Ortak(sql, "sorgu");
            sqDa.Fill(dtProd);

            bag.Close();

            return dtProd;
        }

        public static void Ekle(string sql)
        {
            Ortak(sql, "ekle");
        }

        public static void Guncelle(string sql)
        {
            Ortak(sql, "guncelle");
        }


    }
}