using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifleriSitem
{
    public class SqlBaglanti
    {
       
        public SqlConnection Baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-8JJLI3A;Initial Catalog=Dbo_yemektarifi;Integrated Security=True;");
            baglan.Open();
            return baglan;
        }
    }
}