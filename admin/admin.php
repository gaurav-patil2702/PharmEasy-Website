<?php
include "includes/head.php";
?>

<body>
    <?php include "includes/header.php"; ?>
    <?php include "includes/sidebar.php"; ?>

    <main class="d-flex justify-content-center text-center col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <?php message(); ?>

        <div class="container">

            <!-- Page Title -->
            <div class="row">
                <div class="col">
                    <br>
                    <h2 class="text-center">Admin details</h2>
                    <br>
                </div>
            </div>

            <!-- Search -->
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form class="d-flex justify-content-center" method="GET" action="admin.php">
                        <input class="form-control me-2" type="search" name="search_admin_email" placeholder="Search for Admin (Email)" aria-label="Search">
                        <button class="btn btn-outline-secondary" type="submit" name="search_admin" value="search">Search</button>
                    </form>
                </div>
            </div>
            <br>

            <!-- Edit Form -->
            <?php
            edit_admin($_SESSION['admin_id']);
            if (isset($_GET['edit'])) {
                $_SESSION['admin_id'] = $_GET['edit'];
                $data = get_admin($_SESSION['admin_id']);
            ?>
                <br>
                <h2 class="text-center">Edit Admin Details</h2>
                <form action="admin.php" method="POST" class="text-start mx-auto" style="max-width: 600px;">
                    <div class="form-group">
                        <label>First name</label>
                        <input pattern="[A-Za-z_]{1,15}" type="text" class="form-control"
                               placeholder="<?php echo isset($data[0]['admin_fname']) ? $data[0]['admin_fname'] : 'First Name'; ?>"
                               name="admin_fname">
                    </div>
                    <br>
                    <div class="form-group">
                        <label>Last name</label>
                        <input pattern="[A-Za-z_]{1,15}" type="text" class="form-control"
                               placeholder="<?php echo isset($data[0]['admin_lname']) ? $data[0]['admin_lname'] : 'Last Name'; ?>"
                               name="admin_lname">
                    </div>
                    <br>
                    <div class="form-group">
                        <label>Email address</label>
                        <input type="email" class="form-control"
                               placeholder="<?php echo isset($data[0]['admin_email']) ? $data[0]['admin_email'] : 'E-Mail'; ?>"
                               name="admin_email">
                    </div>
                    <br>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" placeholder="Password" name="admin_password">
                    </div>
                    <br>
                    <button type="submit" class="btn btn-outline-success" name="admin_update">Submit</button>
                    <button type="submit" class="btn btn-outline-danger" name="admin_cancel">Cancel</button>
                    <br><br>
                </form>
            <?php
            }

            add_admin();
            if (isset($_GET['add'])) {
            ?>
                <h2 class="text-center">Add new Admin</h2>
                <form action="admin.php" method="POST" class="text-start mx-auto" style="max-width: 600px;">
                    <div class="form-group">
                        <label>First name</label>
                        <input pattern="[A-Za-z_]{1,15}" type="text" class="form-control" placeholder="First name" name="admin_fname">
                    </div>
                    <br>
                    <div class="form-group">
                        <label>Last name</label>
                        <input pattern="[A-Za-z_]{1,15}" type="text" class="form-control" placeholder="Last name" name="admin_lname">
                    </div>
                    <br>
                    <div class="form-group">
                        <label>Email address</label>
                        <input type="email" class="form-control" placeholder="Email address" name="admin_email">
                    </div>
                    <br>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" placeholder="Password" name="admin_password">
                    </div>
                    <br>
                    <button type="submit" class="btn btn-outline-success" name="add_admin">Submit</button>
                    <button type="submit" class="btn btn-outline-danger" name="admin_cancel">Cancel</button>
                    <br><br>
                </form>
            <?php } ?>

            <!-- Table -->
            <div class="table-responsive d-flex justify-content-center">
                <table class="table table-striped table-bordered text-center w-auto">
                    <thead class="table-dark">
                        <tr>
                            <th>#</th>
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th colspan="2">
                                <button type="button" class="btn btn-outline-primary">
                                    <a style="text-decoration: none; color:black;" href="admin.php?add=1">Add</a>
                                </button>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $data = all_admins();
                        delete_admin();
                        if (isset($_GET['search_admin'])) {
                            $query = search_admin();
                            if (!empty($query)) {
                                $data = $query;
                            } else {
                                get_redirect("admin.php");
                            }
                        }
                        $num = sizeof($data);
                        for ($i = 1; $i < $num; $i++) {
                        ?>
                            <tr>
                                <td><?php echo $i ?></td>
                                <td><?php echo isset($data[$i]['admin_id']) ? $data[$i]['admin_id'] : ''; ?></td>
                                <td><?php echo isset($data[$i]['admin_fname']) ? $data[$i]['admin_fname'] : ''; ?></td>
                                <td><?php echo isset($data[$i]['admin_lname']) ? $data[$i]['admin_lname'] : ''; ?></td>
                                <td><?php echo isset($data[$i]['admin_email']) ? $data[$i]['admin_email'] : ''; ?></td>
                                <td>
                                    <button type="button" class="btn btn-outline-warning">
                                        <a style="text-decoration: none; color:black;" href="admin.php?edit=<?php echo $data[$i]['admin_id'] ?>">Edit</a>
                                    </button>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-outline-danger">
                                        <a style="text-decoration: none; color:black;" href="admin.php?delete=<?php echo $data[$i]['admin_id'] ?>">Delete</a>
                                    </button>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>

        </div>
    </main>

    <?php include "includes/footer.php"; ?>
</body>
