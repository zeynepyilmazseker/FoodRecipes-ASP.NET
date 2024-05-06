using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class HakkımızdaAdmin : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();   
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (!Page.IsPostBack)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", baglanti.Baglanti());
                SqlDataReader dataReader = komut.ExecuteReader();
                while (dataReader.Read())
                {
                    TxtHakkimizda.Text = dataReader[0].ToString();
                }
                baglanti.Baglanti().Close();
            }
        }

        protected void BtnHakkimizdaGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komutGuncelle = new SqlCommand ("update tbl_hakkimizda set metin=@p1",baglanti.Baglanti());
            komutGuncelle.Parameters.AddWithValue("@p1",TxtHakkimizda.Text);
            komutGuncelle.ExecuteNonQuery();
            baglanti.Baglanti().Close();

           
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

