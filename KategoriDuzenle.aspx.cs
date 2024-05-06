using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        
        SqlBaglanti baglanti = new SqlBaglanti();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack == false) {
                SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler where Kategoriid=@p1", baglanti.Baglanti());
                komut.Parameters.AddWithValue("@p1", kategoriid);
                SqlDataReader reader = komut.ExecuteReader();
                while (reader.Read())
                {
                    TxtAd.Text = reader[1].ToString();
                    TxtAdet.Text = reader[2].ToString();
                }
                baglanti.Baglanti().Close();
            }

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where kategoriid=@p3",baglanti.Baglanti());
            komut.Parameters.AddWithValue("@p3",kategoriid);
            komut.Parameters.AddWithValue("@p1",TxtAd.Text);
            komut.Parameters.AddWithValue("@p2",TxtAdet.Text);
            komut.ExecuteNonQuery();
            baglanti.Baglanti().Close();

        }
    }
}