using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class AdminKayıtOl : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();   
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false; 
            Panel1.Visible = false;
        }

        protected void kayitol_Click(object sender, EventArgs e)
        {
            string ad = TxtAd.Text;
            string soyad = TxtSoyad.Text;
            string email = TxtMail.Text;
            string sifre = TxtSifre.Text;

            SqlCommand komut = new SqlCommand("insert into Tbl_Admin (adminAd,adminSoyad,adminMail,adminSifre) values (@p1,@p2,@p3,@p4)", baglanti.Baglanti());
            komut.Parameters.AddWithValue("@p1", ad);
            komut.Parameters.AddWithValue("@p2", soyad);
            komut.Parameters.AddWithValue("@p3", email);
            komut.Parameters.AddWithValue("@p4", sifre);
            komut.ExecuteNonQuery();
            baglanti.Baglanti().Close();


            ClientScript.RegisterStartupScript(this.GetType(), "KayitBasarili", "alert('Kayıt başarıyla tamamlandı!');", true);


            Response.Redirect("Kategoriler.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible=false;   
        }

     

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible= false;
        }

        protected void GirisYap_Click(object sender, EventArgs e)
        {
            string email = TxtGirisMail.Text;
            string password = TxtSifreGiris.Text;

            SqlCommand komut = new SqlCommand("SELECT COUNT(*) FROM Tbl_Admin WHERE adminMail = @p1 AND adminSifre = @p2", baglanti.Baglanti());
            komut.Parameters.AddWithValue("@p1", email);
            komut.Parameters.AddWithValue("@p2", password);
            int count = (int)komut.ExecuteScalar();
            baglanti.Baglanti().Close();

            if (count > 0)
            {
               
                Response.Redirect("Kategoriler.aspx");
            }
            else
            {
               
                ClientScript.RegisterStartupScript(this.GetType(), "HataliGiris", "alert('Hatalı email veya şifre!');", true);

            }
        }
    }
}