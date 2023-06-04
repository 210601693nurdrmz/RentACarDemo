<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Arabalar.aspx.cs" Inherits="RentACarDemo.View.Admin.Cars"  EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <h3 class="text-warning">Araba Yönetim Sayfası</h3>
                        <img src="../../Assets/Img/14e8015e-223e-457c-b000-a50a1a116d09.png" style="height: 350px" />
                    </div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col d-grid">
                        <form runat="server">
                            <div class="form-group">
                                <label for="text" class="col-sm-2 col-form-label">Araç Plaka</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="CPlaka" placeholder="Plaka Giriniz." runat="server">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-10">
                                    <label for="text">Araç Sınıfı</label>
                                    <asp:DropDownList ID="AraSinifi" runat="server">
                                        <asp:ListItem>A</asp:ListItem>
                                        <asp:ListItem>B</asp:ListItem>
                                        <asp:ListItem>C</asp:ListItem>
                                        <asp:ListItem>D</asp:ListItem>
                                        <asp:ListItem>E</asp:ListItem>
                                        <asp:ListItem>G</asp:ListItem>
                                        <asp:ListItem>M</asp:ListItem>
                                        <asp:ListItem>J</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text" class="col-sm-2 col-form-label">Marka</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="Marka" placeholder="Marka Giriniz." runat="server">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text" class="col-sm-2 col-form-label">Model</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="Model" placeholder="Model Giriniz." runat="server">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text" class="col-sm-2 col-form-label">Üretim Yılı</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="UretimYili" placeholder="Üretim Yılı Giriniz." runat="server">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-10">
                                    <label for="text">Yakıt Türü</label>
                                    <asp:DropDownList ID="YakiTuru" runat="server">
                                        <asp:ListItem>Dizel</asp:ListItem>
                                        <asp:ListItem>Benzin</asp:ListItem>
                                        <asp:ListItem>Elektrik</asp:ListItem>
                                        <asp:ListItem>LPG</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text" class="col-sm-2 col-form-label">Motor</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="Motor" placeholder="Motor Hacmi Giriniz." runat="server">
                                </div>
                            </div>
                                                        <div class="form-group">
                                <div class="col-sm-10">
                                    <label for="text">Şanzuman</label>
                                    <asp:DropDownList ID="Sanzuma" runat="server">
                                        <asp:ListItem>Manuel</asp:ListItem>
                                        <asp:ListItem>Otomatik</asp:ListItem>
                                        <asp:ListItem>CVT</asp:ListItem>
                                        <asp:ListItem>DSG</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="text" class="col-sm-2 col-form-label">Kilometre</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="Kilometre" placeholder="KM Değerini Giriniz." runat="server">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text" class="col-sm-2 col-form-label">Fiyat</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="Fiyat" placeholder="Günlük Kiralama Fiyatını Giriniz." runat="server">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-10">
                                    <label for="floatingTextarea2">Ek Bilgiler</label>
                                    <textarea class="form-control" id="EkBilgi" placeholder="Araç Bilgilerinizi buraya giriniz." style="height: 100px" runat="server"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-10">
                                    <label for="text">Durum</label>
                                    <asp:DropDownList ID="Durum" runat="server">

                                        <asp:ListItem>Uygun</asp:ListItem>

                                        <asp:ListItem>Rezerve Edilmiş</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <br />
                            <div class="col-sm-10">
                                <label id="ErrorMsg" runat="server"></label>

                                <asp:Button type="button" class="btn btn-outline-warning" ID="EkleBtn" runat="server" Text="Ekle" OnClick="EkleBtn_Click"></asp:Button>

                                <asp:Button type="button" class="btn btn-outline-secondary" ID="GuncelleBtn" runat="server" Text="Güncelle" OnClick="GuncelleBtn_Click"></asp:Button>

                                <asp:Button type="button" class="btn btn-outline-danger" ID="SilBtn" runat="server" Text="Sil" OnClick="SilBtn_Click"></asp:Button>
                                <br />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <br />
                <h1 class="text-danger">Araç Listesi</h1>
                <asp:GridView runat="server" ID="CarList" Class="table table-hover" BackColor="#FF9966" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged" >
                    <AlternatingRowStyle ForeColor="#CCFFCC" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
