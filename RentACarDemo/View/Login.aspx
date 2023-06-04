<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RentACarDemo.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css" />
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-5">
                <div class="row mt-5">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger mb-3">Kullanıcı Giriş Sayfası</h3>
                        <img src="../Assets/Img/rent-a-car-açmak.jpeg" height="200px" />
                    </div>
                    <div class="col"></div>
                </div>
                <form>
                <div class="form-group" runat="server"> 
                    <div class="mb-3 mt-3" >
                        <label for="exampleInputEmail1" class="form-label">Email adres</label>
                        <input type="email" class="form-control" id="KullaniciAdi" aria-describedby="emailHelp" placeholder="example@gmail.com" runat="server">
                        <div id="emailHelp" class="form-text">Mail adresiniz kimseyle paylaşılmayacaktır.</div>

                    </div>
                    <div class="mb-3" >
                        <label for="exampleInputPassword1" class="form-label">Şifre</label>
                        <input type="password" class="form-control" id="sifre" placeholder="******" runat="server">

                    </div>
                    <div class="mb-3 form-group">
                        <input type="radio" class="form-check-input" id="AdminRadio" name="rol" runat="server">
                        <label class="form-check-label" for="exampleCheck1">Admin</label>
                        <input type="radio" class="form-check-input" id="UserRadio" name="rol">
                        <label class="form-check-label" for="exampleCheck1">Kullanıcı</label>

                    </div>
                    </br>
                    <form runat="server">
                    <div class="form-check d-grid" >
                        <asp:Button type="submit" id="LoginBtn" class="btn btn-warning btn-block"  Text="Giriş" runat="server" ></asp:Button>
                    </div>
</form>
                </div>

                </form>

            </div>
            <div class="col-md-2"></div>

        </div>

    </div>

</body>
</html>





