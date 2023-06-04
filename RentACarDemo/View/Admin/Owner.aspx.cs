using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentACarDemo.View.Admin
{
    public partial class İletisim : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowOwn();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        private void ShowOwn()
        {
            string Query = "select * from OwnTbl";
           OwnList.DataSource = Conn.GetData(Query);
            OwnList.DataBind();
        }


        protected void EkleBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (Ownid.Value == "" || Ownisim.Value == "" || Ownsoyisim.Value == "" || Ownmail.Value == "" || Ownpassword.Value == "" || inputadres.Value == "" || inputsehir.Value == "" || inputilce.SelectedValue == "" || gridcheck.Value == "")
                {
                    ErrorMsg1.InnerText = "Eksik bilgi girdiniz. ";
                }
                else
                {
                    int OwnID = Convert.ToInt32(Ownid.Value.ToString());
                    string OwnIsim = Ownisim.Value;
                    string OwnSoyisim = Ownsoyisim.Value;
                    string OwnEmail = Ownmail.Value;
                    string OwnPassword = Ownpassword.Value;
                    string InputAdres = inputadres.Value;
                    string InputAdres2 = inputadres2.Value;
                    string InputSehir = inputsehir.Value;               
                    string InputIlce = inputilce.SelectedValue;
                    string gridCheck = gridcheck.Value;
                    string gridCheck2 = gridcheck2.Value;
                    string Query = "insert into CarsTbl values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}',{8},'{9}','{10}')";
                    Query = String.Format(Query, OwnID, OwnIsim, OwnSoyisim, OwnEmail, OwnPassword, InputAdres, InputAdres2, InputSehir, InputIlce, gridCheck, gridCheck2);
                    Conn.SetData(Query);
                    ShowOwn();
                    ErrorMsg1.InnerText = "Kullanıcı Bilgileri Eklendi";

                }

            }
            catch (Exception Ex)
            {
                ErrorMsg1.InnerText = Ex.Message;
            }
        }

        protected void OwnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Ownid.Value = OwnList.SelectedRow.Cells[1].Text;
            Ownisim.Value = OwnList.SelectedRow.Cells[2].Text;
            Ownsoyisim.Value = OwnList.SelectedRow.Cells[3].Text;
            Ownmail.Value = OwnList.SelectedRow.Cells[4].Text;
            Ownpassword.Value = OwnList.SelectedRow.Cells[5].Text;
            inputadres.Value = OwnList.SelectedRow.Cells[6].Text;
            inputadres2.Value = OwnList.SelectedRow.Cells[7].Text;
            inputsehir.Value = OwnList.SelectedRow.Cells[8].Text;
            inputilce.SelectedValue = OwnList.SelectedRow.Cells[9].Text;
            gridcheck.Value = OwnList.SelectedRow.Cells[10].Text;
            gridcheck2.Value = OwnList.SelectedRow.Cells[11].Text;
           

        }
    }
}