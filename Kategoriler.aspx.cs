using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace YemekTarifleriSitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlBaglanti baglanti=new SqlBaglanti();
        string kategoriid = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false )
            {
                kategoriid = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler",baglanti.Baglanti());
            SqlDataReader reader = komut.ExecuteReader();
            DataList1.DataSource= reader;
            DataList1.DataBind();

            //kategori silme işlemi
            if(islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from Tbl_Kategoriler where Kategoriid=@p1",baglanti.Baglanti());
                komutsil.Parameters.AddWithValue("@p1", kategoriid);
                komutsil.ExecuteNonQuery();
                baglanti.Baglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible=true;
            
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
            SqlCommand komut = new SqlCommand("Insert into Tbl_Kategoriler (KategoriAd) values (@p1)",baglanti.Baglanti());
            komut.Parameters.AddWithValue("@p1",TxtAd.Text);
            komut.ExecuteNonQuery();
            baglanti.Baglanti().Close();
            
        }
    }
}