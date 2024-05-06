using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleriSitem
{
    public partial class TarifOneriDetay : System.Web.UI.Page
    {
        String tarifid = "";
        SqlBaglanti baglanti = new SqlBaglanti();   
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                tarifid = Request.QueryString["Tarifid"];
                SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where Tarifid=@p1",baglanti.Baglanti());
                komut.Parameters.AddWithValue("@p1",tarifid);
                SqlDataReader reader = komut.ExecuteReader();
                while (reader.Read())
                {
                    TxtTarifAd.Text = reader[1].ToString();
                    TxtMalzemeler.Text = reader[2].ToString();
                    TxtYapilis.Text = reader[3].ToString();
                    TxtOneren.Text = reader[5].ToString();
                    TxtMail.Text = reader[6].ToString();
                }
                baglanti.Baglanti().Close();

                //Kategorileri DropDownList'te Listeleme
                SqlCommand kategorikomut = new SqlCommand("Select * from Tbl_Kategoriler", baglanti.Baglanti());
                SqlDataReader kategorireader = kategorikomut.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = kategorireader;
                DropDownList1.DataBind();
            }
        }

        protected void BtnTarifOnayla_Click(object sender, EventArgs e)
        {
            //tarif durum güncelleme
            SqlCommand komut = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1",baglanti.Baglanti());
            komut.Parameters.AddWithValue("@p1", tarifid);
            komut.ExecuteNonQuery();
            baglanti.Baglanti().Close();

            //onaylanan tarifi ana sayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)",baglanti.Baglanti());
            komut2.Parameters.AddWithValue("@p1",TxtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2",TxtMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3",TxtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglanti.Baglanti().Close();

            //kategoriadet'i 1 arttırma
            SqlCommand komut3 = new SqlCommand("Update tbl_kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1",baglanti.Baglanti());
            komut3.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();   
            baglanti.Baglanti().Close();

            
            ClientScript.RegisterStartupScript(this.GetType(), "TarifOnayMesaj", "alert('Tarif başarıyla onaylandı!');", true);

           
            Response.Redirect("TarifOneriAdmin.aspx");

        }
    }
}