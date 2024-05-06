using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //Onaylanan Yorumlar Listesi
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=1",baglanti.Baglanti());
            SqlDataReader reader = komut.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

            //Onaylanmayan Yorumlar Listesi
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=0", baglanti.Baglanti());
            SqlDataReader reader2 = komut2.ExecuteReader();
            DataList2.DataSource = reader2;
            DataList2.DataBind();
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
    }
}