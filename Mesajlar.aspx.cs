using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar",baglanti.Baglanti());
            SqlDataReader reader = komut.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}