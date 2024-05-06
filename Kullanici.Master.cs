using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace YemekTarifleriSitem
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        SqlBaglanti bgl = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", bgl.Baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            

        }

        protected void BtnAra_Click(object sender, EventArgs e)
        {
            string arananYemekAdi = TxtSearchBar.Text.ToLower(); 

            
            string query = "SELECT * FROM Tbl_Yemekler WHERE LOWER(YemekAd) LIKE @arananYemekAdi";

            SqlCommand cmd = new SqlCommand(query, bgl.Baglanti());
            cmd.Parameters.AddWithValue("@arananYemekAdi", "%" + arananYemekAdi + "%");

            
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                // Yemek bulunduğunda yemeğin sayfasına yönlendirme yap
                dr.Read(); // İlk yemeği alıyoruz
                string yemekId = dr["Yemekid"].ToString();
                Response.Redirect("YemekDetay.aspx?yemekid=" + yemekId);
            }
            else
            {
                // Yemek bulunamadığında TarifOner sayfasına yönlendirme yap
                Response.Redirect("TarifOner.aspx");
            }

            bgl.Baglanti().Close();
        }
    }
}