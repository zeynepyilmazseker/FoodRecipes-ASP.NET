using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using Microsoft.Reporting.WebForms;
using System.Data;

namespace YemekTarifleriSitem
{
    public partial class Raporlama : System.Web.UI.Page
    {
        SqlBaglanti baglanti = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string sql_string = "select * from tbl_yemekler";
                SqlCommand komut = new SqlCommand(sql_string,baglanti.Baglanti());
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(komut);   
                DataSet ds = new DataSet();
                sqlDataAdapter.Fill(ds, "DataSet1");

                ReportViewer2.Reset();
                ReportViewer2.LocalReport.ReportPath = Server.MapPath("~/Raporlar/Report1.rdlc");
                ReportDataSource reportDataSource = new ReportDataSource("DataSet_Yemekler", ds.Tables[0]);
                ReportViewer2.LocalReport.DataSources.Clear();

                ReportViewer2.LocalReport.DataSources.Add(reportDataSource);
                ReportViewer2.LocalReport.Refresh();
            }
        }
    }
}