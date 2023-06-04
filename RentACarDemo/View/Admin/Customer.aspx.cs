using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentACarDemo.View.Admin
{
    public partial class Musteriler : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCustomers();
        }

        private void ShowCustomers()
        {
            string Query = "select * from CustTbl";
            CustList.DataSource = Conn.GetData(Query);
            CustList.DataBind();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
           // base.VerifyRenderingInServerForm(control);
        }
        protected void EkleBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustIsim.Value == "" || CustSoyisim.Value == "" || CustEmail.Value == "" || CustPassword.Value == "" || inputAdres.Value == "" || inputSehir.SelectedValue == "" || inputIlce.SelectedValue == "" || EhlNo.Value == "" || EhlTarih.Value == "" || inputAlisYeri.SelectedValue == "" || inputAlisIlce.SelectedValue == "" || gridCheck2.Value == "")
                {
                    ErrorMsg.InnerText = "Eksik bilgi girdiniz. ";
                }
                else
                {
                    string CIsim = CustIsim.Value;
                    string CSoyisim = CustSoyisim.Value;
                    string CEmail = CustEmail.Value;
                    string CPassword = CustPassword.Value;
                    string CAdres = inputAdres.Value;
                    string CAdres2 = inputAdres2.Value;
                    string CSehir = inputSehir.SelectedValue;
                    string CIlce = inputIlce.SelectedValue;
                    int CEhlNo = Convert.ToInt32(EhlNo.Value.ToString());
                    int CEhlTarih = Convert.ToInt32(EhlTarih.Value.ToString());
                    string EAlisYeri = inputAlisYeri.SelectedValue;
                    string EAlisIlce = inputAlisIlce.SelectedValue;
                    string CgridCheck = gridCheck.Value;
                    string CgridCheck2 = gridCheck2.Value;
                    string Query = "insert into CustTbl values('{0}','{1}','{2}','{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}', '{14}')";
                    Query = String.Format(Query, CIsim, CSoyisim, CEmail, CPassword, CAdres, CAdres2, CSehir, CIlce, CEhlNo, CEhlTarih, EAlisYeri, EAlisIlce, CgridCheck, CgridCheck2);
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Müşteri Eklendi";

                }

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }

        }

        protected void GuncelleBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustIsim.Value == "" || CustSoyisim.Value == "" || CustEmail.Value == "" || CustPassword.Value == "" || inputAdres.Value == "" || inputSehir.SelectedValue == "" || inputIlce.SelectedValue == "" || EhlNo.Value == "" || EhlTarih.Value == "" || inputAlisYeri.SelectedValue == "" || inputAlisIlce.SelectedValue == "" || gridCheck2.Value == "")
                {
                    ErrorMsg.InnerText = "Eksik bilgi girdiniz. ";
                }
                else
                {
                    string CIsim = CustIsim.Value;
                    string CSoyisim = CustSoyisim.Value;
                    string CEmail = CustEmail.Value;
                    string CPassword = CustPassword.Value;
                    string CAdres = inputAdres.Value;
                    string CAdres2 = inputAdres2.Value;
                    string CSehir = inputSehir.SelectedValue;
                    string CIlce = inputIlce.SelectedValue;
                    int CEhlNo = Convert.ToInt32(EhlNo.Value.ToString());
                    int CEhlTarih = Convert.ToInt32(EhlTarih.Value.ToString());
                    string EAlisYeri = inputAlisYeri.SelectedValue;
                    string EAlisIlce = inputAlisIlce.SelectedValue;
                    string CgridCheck = gridCheck.Value;
                    string CgridCheck2 = gridCheck2.Value;
                    string Query = "update CustTbl set CustSoyisim='{0}',CustEmail='{1}',CustPassword='{2}',inputAdres='{3}',inputAdres2='{4}',inputSehir='{5}',inputIlce='{6}',EhlNo='{7}',EhlTarih='{8}',inputAlisYeri='{9}', inputAlisIlce='{10}',gridCheck='{11}', gridCheck2='{12}' where CIsim='{13}'";
                    Query = String.Format(Query,CSoyisim, CEmail, CPassword, CAdres, CAdres2, CSehir, CIlce, CEhlNo, CEhlTarih, EAlisYeri, EAlisIlce, CgridCheck, CgridCheck2, CIsim);
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Müşteri Eklendi";

                }

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }


        }

        protected void SilBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustIsim.Value == "")
                {
                    ErrorMsg.InnerText = "Eksik bilgi ! ";
                }
                else
                {


                    string Query = "Delete from CustTbl where CustID ={0} ";
                    Query = String.Format(Query, Convert.ToInt32(CustList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Müşteri Sistemden Silindi.";
                 
                }

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }

        }
        int Key = 0;
        protected void CustList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CustIsim.Value = CustList.SelectedRow.Cells[1].Text;
            CustSoyisim.Value = CustList.SelectedRow.Cells[2].Text;
            CustEmail.Value = CustList.SelectedRow.Cells[3].Text;
            CustPassword.Value = CustList.SelectedRow.Cells[4].Text;
            inputAdres.Value = CustList.SelectedRow.Cells[5].Text;
            inputAdres2.Value = CustList.SelectedRow.Cells[6].Text;
            inputSehir.SelectedValue = CustList.SelectedRow.Cells[7].Text;
            inputIlce.SelectedValue = CustList.SelectedRow.Cells[8].Text;
            EhlNo.Value = CustList.SelectedRow.Cells[9].Text;
            EhlTarih.Value = CustList.SelectedRow.Cells[10].Text;
            inputAlisYeri.SelectedValue = CustList.SelectedRow.Cells[11].Text;
            inputAlisIlce.SelectedValue = CustList.SelectedRow.Cells[12].Text;
            gridCheck.Value = CustList.SelectedRow.Cells[13].Text;
            gridCheck2.Value = CustList.SelectedRow.Cells[14].Text;
            if(CustIsim.Value== "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(CustList.SelectedRow.Cells[1].Text);
            }
        }
    }
}