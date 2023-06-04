<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="RentACarDemo.View.Admin.Musteriler"  EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container mt-4 ">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <h3 class="text-warning">Müşteri Bilgileri Sayfası</h3>
                        <img src="../../Assets/Img/255-2554174_lili-kids-anonymous-profile-picture-female.png" style="height: 180px" />
                    </div>
                    <div class="col"></div>
                </div>
                <form class="row g-3">
                    <div class="col-md-6">
                        <label for="text" class="col-sm-2 col-form-label">İsim</label>
                        <input type="text" class="form-control" id="CustIsim" placeholder="İsim Giriniz..." runat="server">
                    </div>
                    <div class="col-md-6">
                        <label for="text" class="col-sm-2 col-form-label">Soyisim</label>
                        <input type="text" class="form-control" id="CustSoyisim" placeholder="Soyisim Giriniz..." runat="server">
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="CustEmail" placeholder=" example@gmail.com" runat="server">
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Şifre</label>
                        <input type="password" class="form-control" id="CustPassword" placeholder="******" runat="server">
                    </div>
                    <div class="col-12">
                        <label for="inputAddress" class="form-label">Adres</label>
                        <input type="text" class="form-control" id="inputAdres" placeholder=" 1234 Cad. .... sok. " runat="server">
                    </div>
                    <div class="col-12">
                        <label for="inputAddress2" class="form-label">Adres Devamı</label>
                        <input type="text" class="form-control" id="inputAdres2" placeholder="Apartman,kapı num..." runat="server">
                    </div>
                    
                    <div class="col-md-6">
                    <div class="form-group">
                                <div class="col-sm-10">
                                    <label for="inputCity">Şehir</label>
                                    <asp:DropDownList ID="inputSehir" runat="server" >
                                        <asp:ListItem>Şehir Seçiniz...</asp:ListItem>
                                        <asp:ListItem>Ankara</asp:ListItem>
                                        <asp:ListItem>Antalya</asp:ListItem>
                                        <asp:ListItem>Bolu</asp:ListItem>
                                        <asp:ListItem>Burdur</asp:ListItem>
                                        <asp:ListItem>Bursa</asp:ListItem>
                                        <asp:ListItem>Denizli</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                    </div> 
                    <div class="col-md-6">
                    <div class="form-group">
                                <div class="col-sm-10">
                                    <label for="inputState">İlçe</label>
                                    <asp:DropDownList ID="inputIlce" runat="server">
                                        <asp:ListItem> Akyurt</asp:ListItem>
                                        <asp:ListItem> Altındağ</asp:ListItem>
                                        <asp:ListItem> Ayaş</asp:ListItem>
                                        <asp:ListItem>  Balâ</asp:ListItem>
                                        <asp:ListItem> Beypazarı</asp:ListItem>
                                        <asp:ListItem> Çamlıdere</asp:ListItem>
                                        <asp:ListItem> Çankaya</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                    </div> 
                </form>
            </div>

            <form class="row g-3">
                <h5 class="text-warning">Ehliyet Bilgileri</h5>
                <div class="col-md-6">
                    <label class="form-label">Ehliyet Numarası</label>
                    <input type="text" class="form-control" id="EhlNo" placeholder="12AS54..." runat="server">
                </div>
                <div class="col-md-6">
                    <label class="form-label">Ehliyet Alış Tarihi</label>
                    <input type="text" class="form-control" id="EhlTarih" placeholder="12.12.1999" runat="server">
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputState">Alış Yeri</label>
                        <asp:DropDownList ID="inputAlisYeri" runat="server" >
                                        <asp:ListItem>Şehir Seçiniz...</asp:ListItem>
                                        <asp:ListItem>Ankara</asp:ListItem>
                                        <asp:ListItem>Antalya</asp:ListItem>
                                        <asp:ListItem>Bolu</asp:ListItem>
                                        <asp:ListItem>Burdur</asp:ListItem>
                                        <asp:ListItem>Bursa</asp:ListItem>
                                        <asp:ListItem>Denizli</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-6">
                     <div class="form-group">
                                    <label for="inputState">Alış Yeri - İlçe</label>
                                    <asp:DropDownList ID="inputAlisIlce" runat="server">
                                        <asp:ListItem> Akyurt</asp:ListItem>
                                        <asp:ListItem> Altındağ</asp:ListItem>
                                        <asp:ListItem> Ayaş</asp:ListItem>
                                        <asp:ListItem>  Balâ</asp:ListItem>
                                        <asp:ListItem> Beypazarı</asp:ListItem>
                                        <asp:ListItem> Çamlıdere</asp:ListItem>
                                        <asp:ListItem> Çankaya</asp:ListItem>
                                    </asp:DropDownList>
                            </div>
                </div>
                <div class="col-12">
                    <div class="form-group">
                        <input type="checkbox" class="form-check-input"  id="gridCheck" runat="server">
                        <label class="form-check-label" for="gridCheck">
                            Ticari Elektronik İzin Metnini Okudum. Tarafıma Ticari İleti Gönderilmesini Kabul Ediyorum.
                        </label>
                   
               
                <div class="col-12">           
                        <input type="checkbox" class="form-check-input"  id="gridCheck2" runat="server">
                        <label class="form-check-label" for="gridCheck2">
                            Müşteri Aydınlatma Metnini Okudum, Kabul Ediyorum.
                        </label>   
                </div>                
                </div> 
                </div>
                <br />
                <div class="col-12">
                               <label id="ErrorMsg" runat="server"></label>

                                <asp:Button type="button" class="btn btn-outline-warning" ID="EkleBtn" runat="server" Text="Ekle" OnClick="EkleBtn_Click"></asp:Button>

                                <asp:Button type="button" class="btn btn-outline-secondary" ID="GuncelleBtn" runat="server" Text="Güncelle" OnClick="GuncelleBtn_Click"></asp:Button>

                                <asp:Button type="button" class="btn btn-outline-danger" ID="SilBtn" runat="server" Text="Sil" OnClick="SilBtn_Click"></asp:Button>
                                <br />
                </div>
             </form>
        </div>
        <div class="col-md-8">
         <br />
                <h1 class="text-danger">Müşteri Listesi</h1>
                <asp:GridView runat="server" ID="CustList" Class="table table-hover" BackColor="#FF9966" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CustList_SelectedIndexChanged" >
                    <AlternatingRowStyle ForeColor="#CCFFCC" />
                </asp:GridView>   
        </div>
    </div>
</asp:Content>
