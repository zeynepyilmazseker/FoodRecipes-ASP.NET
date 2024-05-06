using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler ",baglan.Baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
        }
    }
}