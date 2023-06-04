<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="RentACarDemo.View.Admin.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
        <div class="container mt-4">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col">
                        <h3 class="text-warning">HAKKIMIZDA VE İLETİŞİM BİLGİLERİ</h3>
                    </div>
                    <br />
                    <div class="col"><img src="../../Assets/Img/15-1-sabiha-gokcen-havalimani-nasil-arac-kiralanir_613.jpeg" style="height:450px"/>
                    </div>
                </div>
                <br />
                <div class="row"> 
                    <div class="col">      
                            <form class="row g-3">                               
                                <div class="form-group">
                                <label for="floatingTextarea2" class="text-secondary">HAKKIMIZDA BÖLÜMÜ </label>
                                <textarea class="form-control" placeholder="Buraya yazınız." id="HakkimizdaText" style="height: 100px" runat="server"></textarea>
                            </div>
                                <div class="col-md-6">
                                    <h3 class="text-secondary">İLETİŞİM BİLGİLERİ</h3>
                                    <label for="inputEmail4" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="SirketMail">
                                </div>
                                <div class="col-12">
                                    <label for="inputAddress" class="form-label">Adres</label>
                                    <input type="text" class="form-control" id="SirketAdres" placeholder="1234 Cad.">
                                </div>
                                <div class="col-12"><label for="inputAddress2" class="form-label">Adres 2</label>
                                    <input type="text" class="form-control" id="SirketAdres2" placeholder="Apartman, kapı num">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputCity" class="form-label">Şehir</label>
                                    <input type="text" class="form-control" id="inputSehir">
                                </div><div class="col-md-4">
                                    <label for="inputState" class="form-label">İlçe</label>
                                    <select id="inputIlce" class="form-select">
                                        <option selected>Choose...</option> <option>...</option>
                                    </select>
                                      </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-outline-warning">Güncelle</button>
                                </div>
                            </form>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <table class="table">

            </table>
        </div>
    </div>
    </div>
</asp:Content>
