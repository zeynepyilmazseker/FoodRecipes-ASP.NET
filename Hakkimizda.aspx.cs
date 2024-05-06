using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace YemekTarifleriSitem
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Hakkimizda",baglanti.Baglanti());
            SqlDataReader reader = komut.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();
        }
    }
}