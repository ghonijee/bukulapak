<nav class="navbar navbar-expand navbar-dark bg-info fixed-top p-1 p-md-2 p-lg-3">
    <div class="container-fluid">
        <a href="home.php" class="navbar-brand col-9 col-sm-3 col-md-2 col-xl-1 nav-fill">BUKULAPAK</a>
        <form action="" class="text-center form-inline  col-lg-5 col-xl-8 d-none d-lg-inline-block">
            <input type="search" class="form-control w-75 col-11 mr-0 border-0" placeholder="Cari dengan Judul Buku / Pengarang Buku"
                name="cari" id="cari">
            <!-- <button class="btn btn-light btn-outline-light col-2" type="submit">Search</button> -->
        </form>
        <a href="checkout.php" class="nav-item nav-link font-weight-normal col-sm-5 col-md-1 d-none d-sm-inline text-light text-right">PESANANKU</a>
        <!-- <ul class="navbar-nav text-left d-none d-md-inline nav-fill">
            <li class="nav-item dropdown">
                <a href="#" class="nav-link text-light font-weight-bold dropdown-toggle" data-toggle="dropdown"></a>
                <div class="dropdown-menu">
                    <a href="pesananku.php" class="dropdown-item">Pesananku</a>
                    <a href="checkout.php" class="dropdown-item">Checkout</a>
                </div>
            </li>
        </ul> -->
        <div class="navbar-nav col-3 col-sm-4 col-md-3 col-xl-2">
            <?php    
        if(isset($_SESSION['login'])): ?>
            <?php $user = $_SESSION['login']['username']; ?>
            <span class='nav-item font-weight-normal nav-link d-none text-light d-sm-inline'>Hi,
                <?php echo $user; ?></span>
            <a href="control/logout.php" class="nav-item font-weight-normal nav-link d-none text-light d-sm-inline">LOGOUT</a>
            <?php else :?>
            <a href="#logincollap" class="nav-item nav-link font-weight-normal d-none text-light d-sm-inline"
                data-toggle="collapse">LOGIN</a>
            <a href="register.php" class="nav-item nav-link font-weight-normal d-none text-light d-sm-inline">REGISTER</a>
            <?php endif ?>
            <a href="keranjang.php" class="nav-item nav-link fas fa-cart-plus fa-lg text-light d-sm-inline"></a>
        </div>
        <div class="collapse" id="logincollap">
            <div class="card card-body mt-1 " style="position: fixed; top:9%; right: 6%;">
                <form action="" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" name='username' placeholder="Username">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name='password' placeholder="Password">
                    </div>
                    <button type="submit" name='login' class="btn-info border-0 pr-3 pl-3 pt-1 pb-1">Login</button>
                    <a href="register.php" class="text-primary">Daftar disini!</a>
                </form>
            </div>
        </div>
    </div>
</nav>