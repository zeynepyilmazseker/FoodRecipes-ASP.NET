using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        String mesajid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                mesajid = Request.QueryString["Mesajid"];
                SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar where Mesajid=@p1",baglanti.Baglanti());
                komut.Parameters.AddWithValue("@p1",mesajid);
                SqlDataReader reader = komut.ExecuteReader();
                while (reader.Read())
                {
                    TxtAdSoyad.Text = reader[1].ToString();
                    TxtMail.Text = reader[3].ToString();    
                    TxtKonu.Text = reader[2].ToString();
                    TxtMesaj.Text = reader[4].ToString();
                }

                baglanti.Baglanti().Close();
            }

        }
    }
}