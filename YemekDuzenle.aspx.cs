using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            yemekid = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where yemekid = @p1 ", baglanti.Baglanti());
                komut.Parameters.AddWithValue("@p1", yemekid);
                SqlDataReader reader = komut.ExecuteReader();
                while (reader.Read())
                {
                    TxtAd.Text = reader[1].ToString();
                    TxtMalzeme.Text = reader[2].ToString();
                    TxtTarif.Text = reader[3].ToString();
                }
                baglanti.Baglanti().Close();
            }


            if (Page.IsPostBack == false)
            {
                //Kategorileri DropDownList'te Listeleme
                SqlCommand kategorikomut = new SqlCommand("Select * from Tbl_Kategoriler", baglanti.Baglanti());
                SqlDataReader kategorireader = kategorikomut.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = kategorireader;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //yemek fotoğrafı
           FileUpload1.SaveAs(Server.MapPath("/yemekresimleri/"+FileUpload1.FileName));

            SqlCommand guncelleKomut = new SqlCommand("update Tbl_Yemekler set YemekAd = @p1 , YemekMalzeme = @p2 , YemekTarif = @p3 , Kategoriid = @p5, YemekResim=@p6 where Yemekid = @p4", baglanti.Baglanti());
            guncelleKomut.Parameters.AddWithValue("@p1", TxtAd.Text);
            guncelleKomut.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
            guncelleKomut.Parameters.AddWithValue("@p3",TxtTarif.Text);
            guncelleKomut.Parameters.AddWithValue("@p4",yemekid);
            guncelleKomut.Parameters.AddWithValue("@p6","~/yemekresimleri/"+FileUpload1.FileName);
            guncelleKomut.Parameters.AddWithValue("@p5",DropDownList1.SelectedValue);
            guncelleKomut.ExecuteNonQuery();
            baglanti.Baglanti().Close();

           
            ClientScript.RegisterStartupScript(this.GetType(), "GuncellemeBasarili", "alert('Yemek başarıyla güncellendi!');", true);

            
            Response.Redirect("Yemekler.aspx");

        }

        protected void gununyemegi_Click(object sender, EventArgs e)
        {
            //tüm yemekdurum = false
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Durum=0",baglanti.Baglanti());
            komut.ExecuteNonQuery();
            baglanti.Baglanti().Close();

            //günün yemeği seçme
            SqlCommand gununYemegi = new SqlCommand("Update Tbl_Yemekler set Durum=1 where Yemekid=@p1",baglanti.Baglanti());
            gununYemegi.Parameters.AddWithValue("@p1",yemekid);
            gununYemegi.ExecuteNonQuery();
            baglanti.Baglanti().Close();

        }
    }
}