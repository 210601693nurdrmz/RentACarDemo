<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Owner.aspx.cs" Inherits="RentACarDemo.View.Admin.İletisim" EnableEventValidation="false" %>



<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">


    <div class="container mt-4">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <h3 class="text-warning">Araç Sahipleri Kontrol Sayfası</h3>
                    <div class="col">
                        <img src="../../Assets/Img/255-2554174_lili-kids-anonymous-profile-picture-female.png" style="height: 180px" />
                    </div>
                    <div class="col"></div>
                </div>
                <form class="row g-3">
                    <div class="col-md-6">
                        <label for="text" class="col-sm-2 col-form-label">T.C.</label>
                        <input type="text" class="form-control" id="Ownid" placeholder="T.C. kimlik numaranızı Giriniz." runat="server">
                    </div>
                    <div class="col-md-6">
                        <label for="text" class="col-sm-2 col-form-label">İsim</label>
                        <input type="text" class="form-control" id="Ownisim" placeholder="İsim Giriniz." runat="server">
                    </div>
                    <div class="col-md-6">
                        <label for="text" class="col-sm-2 col-form-label">Soyisim</label>
                        <input type="text" class="form-control" id="Ownsoyisim" placeholder="Soyisim Giriniz." runat="server">
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="Ownmail" runat="server">
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Şifre</label>
                        <input type="password" class="form-control" id="Ownpassword" runat="server">
                    </div>
                    <div class="col-12">
                        <label for="inputAddress" class="form-label">Adres</label>
                        <input type="text" class="form-control" id="inputadres" placeholder="1234 Cad." runat="server">
                    </div>
                    <div class="col-12">
                        <label for="inputAddress2" class="form-label">Adres 2</label>
                        <input type="text" class="form-control" id="inputadres2" placeholder="Apartman,kapı num..." runat="server">
                    </div>
                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">Şehir</label>
                        <input type="text" class="form-control" id="inputsehir" runat="server">
                    </div>
                                <div class="col-md-4">
                                    <label for="text">İlçe</label>
                                    <asp:DropDownList ID="inputilce" runat="server">
                                        <asp:ListItem>Aadsadas</asp:ListItem>
                                        <asp:ListItem>Asadasdasd</asp:ListItem>
                                        <asp:ListItem>Adsfsdfss</asp:ListItem>
                                        <asp:ListItem>Adsfsdfds</asp:ListItem>
                                        <asp:ListItem>Asfsdgsdg</asp:ListItem>
                                        <asp:ListItem>Afhfgjfhj</asp:ListItem>                                     
                                    </asp:DropDownList>
                                </div>

                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridcheck" runat="server">
                            <label class="form-check-label" for="gridCheck">
                                Müşteri Aydınlatma Metnini Okudum, Kabul Ediyorum.
                            </label>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridcheck2" runat="server">
                            <label class="form-check-label" for="gridCheck">
                                Ticari Elektronik İzin Metnini Okudum,Tarafıma Ticari İLeti Gönderilmesini Kabul Ediyorum.
                            </label>
                        </div>
                    </div>
                    <br />
                    <div class="col-sm-10">
                        <label id="ErrorMsg1" runat="server"></label>

                        <asp:Button type="button" class="btn btn-outline-warning" ID="EkleBtn" runat="server" Text="Ekle" ></asp:Button>

                        <asp:Button type="button" class="btn btn-outline-secondary" ID="GuncelleBtn" runat="server" Text="Güncelle" ></asp:Button>

                        <asp:Button type="button" class="btn btn-outline-danger" ID="SilBtn" runat="server" Text="Sil"></asp:Button>
                        <br />
                    </div>
                </form>
            </div>
           <div class="col-md-8">
                <br />
                <h1 class="text-danger">Araç Sahiplerinin Listesi</h1>
            <asp:GridView runat="server" ID="OwnList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="OwnList_SelectedIndexChanged" AlternatingRowStyle-ForeColor="#CCCCFF" Height="184px" Width="821px">
                
            </asp:GridView>
               </div>
        </div>
    </div>
</asp:Content>
