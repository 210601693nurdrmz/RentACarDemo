<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="RentACarDemo.View.Admin.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
   <div class="bg-warning">
    <div class="container">
        <h1 class="display-4">ADMİN PANELİNE HOŞGELDİNİZ !</h1>
        <p class="lead"> Kiralama İşlemleri , Araç İşlemleri , Müşteri ve Araç Sahipleri için bilgi işlemlerini buradan gerçekleştirebilirsiniz.</p>
    </div></div>
    <br />
    <br />
    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0"  aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" class="active" aria-current="true" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item " data-bs-interval="10000">
                <img src="../../Assets/Img/slider/resized_aluguel-de-carros.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Bizimle Güvendesiniz.</h3>
                    <p>Araç Güvenlik Sistemlerimiz hakkında bilgi almak için tıklayınız</p>
                </div>
            </div>
            <div class="carousel-item active" data-bs-interval="2000">
                <img src="../../Assets/Img/1500x500.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Araç Filomuz Hizmete Hazır</h3>
                    <p>Araçları görüntülemek için tıklayınız.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../../Assets/Img/slider/rent-a-car-açmak.jpeg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Çalışanlarımız Bizim İçin Değerli</h3>
                    <p>Ekibimize katılmak ve bilgi almak için tıklayınız.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <br />
    <br /> 
    <div class="container mt-4">
    <h3 class="text-warning">KİRALAMA İŞLEMLERİ</h3>
    <div class="row">
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../../Assets/Img/e5819baa-818a-41c3-aaf1-a465451c2a7d.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">SKODA SUPERB</h5>
                    <p class="card-text">Kiralama İşlemi Detayları için Tıklayınız.</p>
                    <a href="Kiralama.aspx" class="btn btn-primary">Ayrıntılar</a>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../../Assets/Img/14e8015e-223e-457c-b000-a50a1a116d09.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">AUDI A3 SEDAN</h5>
                    <p class="card-text">Kiralama İşlemi Detayları için Tıklayınız.</p>
                    <a href="Kiralama.aspx" class="btn btn-primary">Ayrıntılar</a>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../../Assets/Img/e5819baa-818a-41c3-aaf1-a465451c2a7d.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">SKODA SUPERB</h5>
                    <p class="card-text">Kiralama İşlemi Detayları için Tıklayınız.</p>
                    <a href="Kiralama.aspx" class="btn btn-primary">Ayrıntılar</a>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../../Assets/Img/14e8015e-223e-457c-b000-a50a1a116d09.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">AUDI A3 SEDAN</h5>
                    <p class="card-text">Kiralama İşlemi Detayları için Tıklayınız.</p>
                    <a href="Kiralama.aspx" class="btn btn-primary">Ayrıntılar</a>
                </div>
            </div>

        </div>
        </div>
    </div>
</asp:Content>
