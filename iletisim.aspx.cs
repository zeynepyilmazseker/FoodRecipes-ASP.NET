using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleriSitem
{
    public partial class iletisim : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Mesajlar (MesajGonderen,MesajBaslik,Mesajicerik,MesajMail) values (@p1,@p2,@p3,@p4)",baglanti.Baglanti());
            komut.Parameters.AddWithValue("@p1", TBAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2",TBKonu.Text);
            komut.Parameters.AddWithValue("@p3",TBMesaj.Text);
            komut.Parameters.AddWithValue("@p4", TBMail.Text);
            komut.ExecuteNonQuery();
            baglanti.Baglanti().Close();

            LblMessage.Text = "Mesajınız alınmıştır, teşekkür ederiz";
            TBAdSoyad.Text = "";
            TBKonu.Text = "";
            TBMail.Text = "";
            TBMesaj.Text = "";
        }
    }
}