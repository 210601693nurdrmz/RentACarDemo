<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Kiralama.aspx.cs" Inherits="RentACarDemo.View.Admin.Kiralama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">


     <div class="container mt-4">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <h3 class="text-warning">Kiralanan Araçlar Kontrol Sayfası</h3>
                    <div class="col">
                        <img src="../../Assets/Img/CR-3-min-2.jpg" style="height: 180px" />
                    </div>
                    <div class="col"></div>
                </div>
                <form class="row g-3" runat="server">
                    <div class="col-md-12">
                        <label for="text" class="col-sm-2 col-form-label">Plaka</label>
                        <input type="text" class="form-control" id="Kirid" placeholder="Plaka bilgisi..." runat="server">
                    </div>
                    <div class="col-md-12">
                        <label for="text" class="col-sm-2 col-form-label">Araç Marka</label>
                        <input type="text" class="form-control" id="arac" placeholder="Marka Giriniz." runat="server">
                    </div>
                    <div class="col-md-12">
                        <label for="date" class="col-sm-2 col-form-label">Alış Tarihi</label>
                        <input type="date" class="form-control" id="KiralisDate"  runat="server">
                    </div>
                    <div class="col-md-12">
                        <label for="date" class="form-label">Teslim Tarihi</label>
                        <input type="date" class="form-control" id="KirteslimDate" runat="server">
                    </div>
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="onay" runat="server">
                            <label class="form-check-label" for="gridCheck">
                               Kira Sözleşmesine uygun olarak, Kiralama işlemini onaylıyorum.
                            </label>
                        </div>
                    </div>
                   
                    <br />
                    <div class="col-sm-10">
                        <label id="ErrorMsg2" runat="server"></label>

                        <asp:Button type="button" class="btn btn-outline-warning" ID="EkleBtn" runat="server" Text="Gönder" ></asp:Button>

                        <asp:Button type="button" class="btn btn-outline-secondary" ID="GuncelleBtn" runat="server" Text="Kaydı Güncelle" ></asp:Button>

                        <asp:Button type="button" class="btn btn-outline-danger" ID="SilBtn" runat="server" Text=" Kaydı Sil"></asp:Button>
                        <br />
                    </div>
                </form>
            </div>

        </div>
    </div>
</asp:Content>
