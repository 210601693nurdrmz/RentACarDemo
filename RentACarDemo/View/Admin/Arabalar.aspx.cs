using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentACarDemo.View.Admin
{
    public partial class Cars : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        private void ShowCars()
        {
            string Query = "select * from CarsTbl";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }
        protected void EkleBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CPlaka.Value == "" || AraSinifi.SelectedValue == "" || Marka.Value == "" || Model.Value == "" || UretimYili.Value == "" || YakiTuru.SelectedValue == "" || Motor.Value == "" || Sanzuma.SelectedValue == "" || Kilometre.Value == "" || Fiyat.Value == "" || Durum.SelectedValue == "")
                {
                    ErrorMsg.InnerText = "Eksik bilgi girdiniz. ";
                }
                else
                {
                    string PlakaNum = CPlaka.Value;
                    string CAracSinifi = AraSinifi.SelectedValue;
                    string CMarka = Marka.Value;
                    string CModel = Model.Value;
                    int CUretimYili = Convert.ToInt32(UretimYili.Value.ToString());
                    string CYakitTuru = YakiTuru.SelectedValue;
                    string CMotor = Motor.Value;
                    string CSanzuman = Sanzuma.SelectedValue;
                    int CKilometre = Convert.ToInt32(Kilometre.Value.ToString());
                    int CFiyat = Convert.ToInt32(Fiyat.Value.ToString());
                    string CEkBilgi = EkBilgi.Value;
                    string CDurum = Durum.SelectedValue;
                    string Query = "insert into CarsTbl values('{0}','{1}','{2}','{3}',{4},'{5}','{6}','{7}','{8}','{9}','{10}','{11}')";
                    Query = String.Format(Query,PlakaNum, CAracSinifi, CMarka, CModel, CUretimYili, CYakitTuru, CMotor, CSanzuman, CKilometre, CFiyat, CEkBilgi, CDurum);
                    Conn.SetData(Query); 
                    ShowCars();
                    ErrorMsg.InnerText = "Araba Eklendi";
                   
                }
                
            }
            catch(Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }
        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CPlaka.Value = CarList.SelectedRow.Cells[1].Text;
            AraSinifi.SelectedValue = CarList.SelectedRow.Cells[2].Text;
            Marka.Value = CarList.SelectedRow.Cells[3].Text;
            Model.Value = CarList.SelectedRow.Cells[4].Text;
            UretimYili.Value = CarList.SelectedRow.Cells[5].Text;
            YakiTuru.SelectedValue = CarList.SelectedRow.Cells[6].Text;
            Motor.Value = CarList.SelectedRow.Cells[7].Text;
            Sanzuma.SelectedValue = CarList.SelectedRow.Cells[8].Text;
            Kilometre.Value = CarList.SelectedRow.Cells[9].Text;
            Fiyat.Value = CarList.SelectedRow.Cells[10].Text;
            EkBilgi.Value = CarList.SelectedRow.Cells[11].Text;
            Durum.SelectedValue = CarList.SelectedRow.Cells[12].Text;
        }

        protected void SilBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CPlaka.Value == "" )
                {
                    ErrorMsg.InnerText = "Eksik bilgi girdiniz. ";
                }
                else
                {
                    string PlakaNum = CPlaka.Value;
                   
                    string Query = "Delete from CarsTbl where PlakaNum ='{0}'";
                    Query = String.Format(Query, PlakaNum);
                    Conn.SetData(Query);
                    ShowCars();
                    ErrorMsg.InnerText = "Araba Silindi.";
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
                if (CPlaka.Value == "" || AraSinifi.SelectedValue == "" || Marka.Value == "" || Model.Value == "" || UretimYili.Value == "" || YakiTuru.SelectedValue == "" || Motor.Value == "" || Sanzuma.SelectedValue == "" || Kilometre.Value == "" || Fiyat.Value == "" || Durum.SelectedValue == "")
                {
                    ErrorMsg.InnerText = "Eksik bilgi girdiniz. ";
                }
                else
                {
                    string PlakaNum = CPlaka.Value;
                    string CAracSinifi = AraSinifi.SelectedValue;
                    string CMarka = Marka.Value;
                    string CModel = Model.Value;
                    int CUretimYili = Convert.ToInt32(UretimYili.Value.ToString());
                    string CYakitTuru = YakiTuru.SelectedValue;
                    string CMotor = Motor.Value;
                    string CSanzuman = Sanzuma.SelectedValue;
                    int CKilometre = Convert.ToInt32(Kilometre.Value.ToString());
                    int CFiyat = Convert.ToInt32(Fiyat.Value.ToString());
                    string CEkBilgi = EkBilgi.Value;
                    string CDurum = Durum.SelectedValue;
                    string Query = "update CarsTbl set CAracSinifi='{0}',CMarka='{1}',CModel='{2}',CUretimYili={3},CYakitTuru='{4}',CMotor='{5}',CSanzuman='{6}',CKilometre={7},CFiyat={8},CEkBilgi='{9}',CDurum='{10}'where PlakaNum='{11}'";
                    Query = String.Format(Query, CAracSinifi, CMarka, CModel, CUretimYili, CYakitTuru, CMotor, CSanzuman, CKilometre, CFiyat, CEkBilgi, CDurum, PlakaNum);
                    Conn.SetData(Query);
                    ShowCars();
                    ErrorMsg.InnerText = "Araba Bilgileri Güncellendi.";

                }

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }


    }
}