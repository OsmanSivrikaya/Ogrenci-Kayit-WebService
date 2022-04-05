using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("server=OSMANSIVRIKAYA; Database=Ogrenci; Integrated Security=true;");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Sehirservice.WebService1SoapClient s = new Sehirservice.WebService1SoapClient();
                DataSet dt = new DataSet();
                dt = s.SehirGetir();

                drpSehir.DataTextField = dt.Tables[0].Columns["Sehir"].ToString();
                drpSehir.DataValueField = dt.Tables[0].Columns["ID"].ToString();
                drpSehir.DataSource = dt.Tables[0];
                drpSehir.DataBind();
            }
        }

        protected void Kaydet_Click(object sender, EventArgs e)
        {
            long tc = long.Parse(txtTc.Text);
            int yil = int.Parse(txtDT.Text);
            bool? durum;

            try
            {
                using(KimlikService.KPSPublicSoapClient ks = new KimlikService.KPSPublicSoapClient())
                {
                    durum = ks.TCKimlikNoDogrula(tc, txtAd.Text, txtSoyad.Text, yil);
                }
            }
            catch
            {

                durum=null;
            }
            if (durum == true)
            {

                cmd = new SqlCommand("INSERT INTO Ogr (Ad, Soyad,Tc,DT,Sehir) VALUES(@adi, @soyadi,@tc,@yil,@sehir)", conn);
                cmd.Parameters.AddWithValue("@adi", txtAd.Text);
                cmd.Parameters.AddWithValue("@soyadi", txtSoyad.Text);
                cmd.Parameters.AddWithValue("@tc", txtTc.Text);
                cmd.Parameters.AddWithValue("@yil", txtDT.Text);
                cmd.Parameters.AddWithValue("@sehir", drpSehir.SelectedItem.Text.ToString());

                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language=javascript>alert('Kayıt Eklendi.');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Tc Kimlik Hatalı.');</script>");
            }
        }
    }
}