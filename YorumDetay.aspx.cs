using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleriSitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {

        SqlBaglanti baglanti = new SqlBaglanti();
        string yorumid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yorumid = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd  from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid = Tbl_Yemekler.Yemekid where Yorumid=@p1", baglanti.Baglanti());
                komut.Parameters.AddWithValue("@p1", yorumid);
                SqlDataReader reader = komut.ExecuteReader();

                while (reader.Read())
                {
                    TxtAdSoyad.Text = reader[0].ToString();
                    TxtMail.Text = reader[1].ToString();
                    TxtYorum.Text = reader[2].ToString();
                    TxtYemek.Text = reader[3].ToString();

                }
                baglanti.Baglanti().Close();
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand yorumOnay = new SqlCommand("Update Tbl_Yorumlar set Yorumicerik=@p1, YorumOnay=@p2 where Yorumid=@p3",baglanti.Baglanti());
            yorumOnay.Parameters.AddWithValue("@p1",TxtYorum.Text);
            yorumOnay.Parameters.AddWithValue("@p2","True" );
            yorumOnay.Parameters.AddWithValue("@p3", yorumid);
            yorumOnay.ExecuteNonQuery();
            baglanti.Baglanti().Close();


            ClientScript.RegisterStartupScript(this.GetType(), "YorumOnayMesaj", "alert('Yorum onaylanmıştır!');", true);

            Response.Redirect("Yorumlar.aspx");

        }
    }
}