using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleriSitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        string yemekid = "";
        SqlBaglanti baglan = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            //url'deki yemekid 'nin değeri çekilecek
            yemekid = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("select YemekAd,YemekMalzeme,YemekTarif,YemekResim,YemekTarih,YemekPuan from Tbl_Yemekler where Yemekid=@p1",baglan.Baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr["YemekAd"].ToString();
                TxtMalzemeler.Text = dr["YemekMalzeme"].ToString();  
                TxtYapilis.Text = dr["YemekTarif"].ToString(); 
                TxtTarih.Text = dr["YemekTarih"].ToString();
                TxtPuan.Text= dr["YemekPuan"].ToString();

                //fotoğraf kısmı
                string resimUrl = dr["YemekResim"].ToString();
                Image2.ImageUrl = resimUrl;
            }

            //yorumları listeleme kısmı
            SqlCommand yorumKomut = new SqlCommand("select * from Tbl_Yorumlar where Yemekid = @p2 and yorumOnay=1",baglan.Baglanti());
            yorumKomut.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader yorumOku = yorumKomut.ExecuteReader();
            DataList3.DataSource = yorumOku;
            DataList3.DataBind();

            baglan.Baglanti().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4) ",baglan.Baglanti());
            komut.Parameters.AddWithValue("@p1",TxtBoxAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2",TxtBoxMail.Text);
            komut.Parameters.AddWithValue("@p3",TxtBoxYorum.Text);
            komut.Parameters.AddWithValue("@p4",yemekid);
            komut.ExecuteNonQuery();
            baglan.Baglanti().Close();

            LabelMessage.Text = "Yorumunuz alınmıştır, teşekkür ederiz";
            TxtBoxAdSoyad.Text = "";
            TxtBoxMail.Text = "";
            TxtBoxYorum.Text = "";

            Response.Redirect("AnaSayfa.aspx");
        }
    }
}