using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentACarDemo.View
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
        }
        public static string CustIsim = "";
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if (AdminRadio.Checked)
            {

            }
            else
            {
                string sql = "select CustIsim, CustSoyisim, CustPassword from CustTbl where CustIsim = '{0}' and CustPassword";
                sql = string.Format(sql, KullaniciAdi.Value, sifre.Value);
                DataTable dt = Conn.GetData(sql);
                if(dt.Rows.Count == 0)
                {
                    //
                }
                else
                {
                    CustIsim = dt.Rows[0][0].ToString();
                    //Response.Redirect();
                }
            }
        }
    }
}