<header>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #0d8592; background-color: #0d8592;
            padding: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            z-index: 1000;">
        <div class="container-fluid">
            <a href="index.php"> <img src="Pharma.png" id="image"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" style="color: white; " aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent" style="font-family:'Apple Chancery', cursive;">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="index.php" style="color: black; font-size:bold; margin-left: 20px;">Home<img src="home-smile-fill.png" style="margin-left: 5px;" alt=""></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cart.php" style="color: black; font-size:bold; margin-left: 20px;">Cart<img src="shopping-cart-line.png" style="margin-left: 5px;" alt=""></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link  dropdown-toggle " style="color: black; font-size:bold; margin-left: 20px;" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Categories<img src="dropdown-list.png" style="margin-left: 5px;" alt="">
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="color: black; font-size:bold;">
                            <li><a class="dropdown-item " href="search.php?cat=medicine">Medicine</a></li>
                            <li><a class="dropdown-item" href="search.php?cat=self-care">Self Care</a></li>
                            <li><a class="dropdown-item" href="search.php?cat=machine"> machines</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="admin/index.php" style="color: black; font-size:bold; margin-left: 20px;">Admin<img src="admin-fill.png" style="margin-left: 5px;" alt=""></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="userManual.php" style="color: black; font-size:bold; margin-left: 20px;">User Manual<img src="book-read-fill.png" style="margin-left: 5px;" alt=""></a>
                    </li>
                </ul>
                <?php

                if (!isset($_SESSION['user_id'])) {
                    echo "<a class='nav-link' href='login.php' style='color: black; font-size:bold;'><img src='login-box-fill.png'> Log in</a>";
                } else {
                    $check_user_id = check_user($_SESSION['user_id']);
                    if ($check_user_id == 1) {
                        echo "<a class='nav-link' href='logout.php' style='color: black; font-size:bold;'><img src='logout-box-fill.png'> Log out</a>  ";
                    } else {
                        post_redirect("logout.php");
                    }
                }
                ?>


                <form class="d-flex" action="search.php" method="GET">
                    <input class="form-control me-2" type="search" placeholder="Search" name="search_text">
                    <button class="btn btn-outline-light" type="submit" value="go" name="search" style='color: black;'><i class="fas fa-search"></i></button>
                </form>

            </div>
        </div>
    </nav>
    <br><br><br><br>
</header>