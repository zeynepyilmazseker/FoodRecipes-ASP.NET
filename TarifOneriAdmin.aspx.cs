using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class TarifOneriAdmin : System.Web.UI.Page
    {
        SqlBaglanti baglanti =new SqlBaglanti();
        string tarifid = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false) { 
            tarifid = Request.QueryString["Tarifid"];
            islem = Request.QueryString["islem"];
                // onaylanmayan tarifi sil
                if (islem == "sil")
                {
                    SqlCommand komut3 = new SqlCommand("Delete from Tbl_Tarifler where Tarifid=@p1", baglanti.Baglanti());
                    komut3.Parameters.AddWithValue("@p1", tarifid);
                    komut3.ExecuteNonQuery();
                    baglanti.Baglanti().Close();
                }

            }


            Panel2.Visible = false;
            Panel4.Visible= false;
            if (Page.IsPostBack || !Page.IsPostBack ) { 
            //Onaylanmayan Tarifler
            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=0",baglanti.Baglanti());
            SqlDataReader reader = komut.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

            //Onaylanan Tarifler
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=1", baglanti.Baglanti());
            SqlDataReader reader2 = komut2.ExecuteReader();
            DataList2.DataSource = reader2;
            DataList2.DataBind();

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
            Panel4.Visible= true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}