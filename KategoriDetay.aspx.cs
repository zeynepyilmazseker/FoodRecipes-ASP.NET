using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace YemekTarifleriSitem
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where kategoriid=@p1", baglanti.Baglanti());
            komut.Parameters.AddWithValue("@p1",kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

        }
    }
}