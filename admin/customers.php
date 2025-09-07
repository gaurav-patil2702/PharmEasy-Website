<?php
include "includes/head.php";
?>

<body>
    <?php
    include "includes/header.php"
    ?>

    <?php
    include "includes/sidebar.php";
    ?>
    <main class="d-flex justify-content-center text-center col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <?php
        message();
        ?>

        <div class="container">

            <!-- Page Title -->
            <div class="row">
                <div class="col">
                    <br>
                    <h2 class="text-center">Customer details</h2>
                    <br>
                </div>
            </div>

            <!-- Search -->
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form class="d-flex justify-content-center" method="GET" action="customers.php">
                        <input class="form-control me-2" type="search" name="search_user_email" placeholder="Search for User (Email)" aria-label="Search">
                        <button class="btn btn-outline-secondary" type="submit" name="search_user" value="search">Search</button>
                    </form>
                </div>
            </div>
            <br>

            <!-- Edit Customer Form -->
            <?php
            if (isset($_GET['edit'])) {
                $_SESSION['id'] = $_GET['edit'];
                $data = get_user($_SESSION['id']);
            ?>
                <br>
                <h2 class="text-center">Edit Customer Details</h2>
                <form action="customers.php" method="POST" class="text-start mx-auto" style="max-width: 600px;">
                    <div class="form-group">
                        <label>Full name</label>
                        <input pattern="[A-Za-z_]{1,15}" type="text" class="form-control" placeholder="<?php echo $data[0]['user_fname'] ?>" name="Fname">
                        <div class="form-text">please enter the full name in range(1-30) character/s , special character & numbers not allowed !</div>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="validationTooltip01">Mobile Number</label>
                        <input pattern="/^[789]\d{9}$/" id="validationTooltip01" type="text" class="form-control" placeholder="<?php echo $data[0]['user_m_no'] ?>" name="m_no">
                        <div class="form-text">please enter the last name in range(1-30) character/s , special character & numbers not allowed !</div>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="<?php echo $data[0]['email'] ?>" name="email">
                        <div class="form-text">please enter the email in format : example@gmail.com.</div>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="inputAddress2">Address</label>
                        <input pattern="^[#.0-9a-zA-Z\s,-]+$" type="text" class="form-control" id="inputAddress2" placeholder="<?php echo $data[0]['user_address'] ?>" name="address">
                    </div>
                    <div class="form-text">please enter the email in format : #1, North Street, Chennai - 11.</div>
                    <br>
                    <button type="submit" class="btn btn-outline-success" value="update" name="update">Submit</button>
                    <button type="submit" class="btn btn-outline-danger" value="cancel" name="cancel">Cancel</button>
                    <br><br>
                </form>
            <?php
            }
            if (isset($_SESSION['id'])) {
                edit_item($_SESSION['id']);
            }
            ?>

            <!-- Table -->
            <div class="table-responsive d-flex justify-content-center">
                <table class="table table-striped table-bordered text-center w-auto">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Full Name</th>
                            <th scope="col">Mobile Number</th>
                            <th scope="col">Email</th>
                            <th scope="col">Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $data = all_users();
                        delete_user();
                        if (isset($_GET['search_user'])) {
                            $query = search_user();
                            if (isset($query)) {
                                $data = $query;
                            } else {
                                get_redirect("customers.php");
                            }
                        } elseif (isset($_GET['id'])) {
                            $data = get_user_details();
                        }
                        $num = sizeof($data);
                        for ($i = 0; $i < $num; $i++) {
                        ?>
                            <tr>
                                <td><?php echo isset($data[$i]['user_id']) ? $data[$i]['user_id'] : ''; ?></td>
                                <td><?php echo isset($data[$i]['user_fname']) ? $data[$i]['user_fname'] : ''; ?></td>
                                <td><?php echo isset($data[$i]['user_m_no']) ? $data[$i]['user_m_no'] : ''; ?></td>
                                <td><?php echo isset($data[$i]['email']) ? $data[$i]['email'] : ''; ?></td>
                                <td><?php echo isset($data[$i]['user_address']) ? $data[$i]['user_address'] : ''; ?></td>
                            </tr>
                        <?php  }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
    </div>
    </div>
    <?php
    include "includes/footer.php"
    ?>
</body>
