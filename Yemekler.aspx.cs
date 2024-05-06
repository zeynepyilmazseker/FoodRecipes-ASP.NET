using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleriSitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        string yemekid = "";
        string islem = "";
        string kategoriid = "";
       

        protected void Page_Load(object sender, EventArgs e)
        {

            //Sayfa yüklendiğine panel görünürlüğü
            Panel2.Visible = false;
            Panel4.Visible = false;

         
           
            //Page.IsPostBack == False sayfanın ilk yüklendiği durumu ifade eder.
            if (Page.IsPostBack == false)
            {
                yemekid = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
                kategoriid = Request.QueryString["Kategoriid"];

                //Kategorileri DropDownList'te Listeleme
                SqlCommand kategorikomut = new SqlCommand("Select * from Tbl_Kategoriler", baglanti.Baglanti());
                SqlDataReader kategorireader = kategorikomut.ExecuteReader();
                DDKategori.DataTextField = "KategoriAd";
                DDKategori.DataValueField = "Kategoriid";
                DDKategori.DataSource = kategorireader;
                DDKategori.DataBind();
            }

            //Yemekleri listeleme
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler",baglanti.Baglanti());
            SqlDataReader reader = komut.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            
            //yemek silme işlemi
            if(islem == "sil")
            {
                SqlCommand yemekSilKomut = new SqlCommand("Delete from Tbl_Yemekler where Yemekid=@p1",baglanti.Baglanti());
                yemekSilKomut.Parameters.AddWithValue("@p1", yemekid);
                yemekSilKomut.ExecuteNonQuery();
                baglanti.Baglanti().Close();

                SqlCommand kategoriAzalis = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet = KategoriAdet - 1 where Kategoriid=@p1", baglanti.Baglanti());
                kategoriAzalis.Parameters.AddWithValue("@p1",kategoriid);
                kategoriAzalis.ExecuteNonQuery();
                baglanti.Baglanti().Close();
            }



          
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //Yemek ekleme
            SqlCommand yemekKomut = new SqlCommand("insert into tbl_yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid) values (@p1,@p2,@p3,@p4) ",baglanti.Baglanti());
            yemekKomut.Parameters.AddWithValue("@p1",TxtAd.Text);
            yemekKomut.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
            yemekKomut.Parameters.AddWithValue("@p3", TxtTarif.Text);
            yemekKomut.Parameters.AddWithValue("@p4", DDKategori.SelectedValue);
            yemekKomut.ExecuteNonQuery();
            baglanti.Baglanti().Close();

            //Kategori sayısını arttırma
            SqlCommand kategoriArtis = new SqlCommand("update Tbl_Kategoriler set KategoriAdet = KategoriAdet+1 where Kategoriid=@p1",baglanti.Baglanti());
            kategoriArtis.Parameters.AddWithValue("@p1",DDKategori.SelectedValue);
            kategoriArtis.ExecuteNonQuery();//sorguyu çalıştır
            baglanti.Baglanti().Close();
                



        }
    }
}