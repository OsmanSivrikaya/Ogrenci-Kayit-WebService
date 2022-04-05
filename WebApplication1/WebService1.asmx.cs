using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    /// <summary>
    /// WebService1 için özet açıklama
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Bu Web Hizmeti'nin, ASP.NET AJAX kullanılarak komut dosyasından çağrılmasına, aşağıdaki satırı açıklamadan kaldırmasına olanak vermek için.
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        SqlConnection conn = new SqlConnection("server=OSMANSIVRIKAYA;Database=Ogrenci;Integrated Security=True");

        [WebMethod]
        public DataSet SehirGetir()
        {
            SqlDataAdapter adp = new SqlDataAdapter("Select ID,Sehir from sehir", conn);
            DataSet dt = new DataSet();
            adp.Fill(dt);
            return dt;
        }
    }
}
