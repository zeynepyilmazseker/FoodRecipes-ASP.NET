using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace YemekTarifleriSitem
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
          SqlCommand sqlCommand = new SqlCommand("select * from Tbl_Yemekler where Durum=1",bgl.Baglanti());
          SqlDataReader reader = sqlCommand.ExecuteReader();
            DataList3.DataSource = reader;
            DataList3.DataBind();

            
            
        }
    }
}