<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Components / Accordion - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="<?= base_url('assets/') ?>assets/img/favicon.png" rel="icon">
    <link href="<?= base_url('assets/') ?>assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<?= base_url('assets/') ?>assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url('assets/') ?>assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="<?= base_url('assets/') ?>assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="<?= base_url('assets/') ?>assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="<?= base_url('assets/') ?>assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="<?= base_url('assets/') ?>assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="<?= base_url('assets/') ?>assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Toastr -->
    <link rel="stylesheet" href="<?= base_url('assets/') ?>toastr/toastr.min.css">
    <script src="<?= base_url('assets/') ?>toastr/toastr.min.js"></script>

    <!-- Template Main CSS File -->
    <link href="<?= base_url('assets/') ?>assets/css/style.css" rel="stylesheet">

    <!-- jquery -->
    <script src="<?= base_url('assets/') ?>node_modules/jquery/dist/jquery.min.js"></script>
    <!-- jquery end -->

    <!-- sweetalert -->
    <link href="<?= base_url('assets/') ?>sweetalert2/sweetalert2.min.css" rel="stylesheet">
    <script src="<?= base_url('assets/') ?>sweetalert2/sweetalert2.min.js"></script>
    <!-- jquery end -->

    <!-- javasript modif -->
    <script src="<?= base_url('assets/') ?>assets/js/js.js"></script>
    <!-- javascript modif -->

    <!-- jquery-deserialize modif -->
    <script src="<?= base_url('node_modules/') ?>jquery-deserialize/src/jquery.deserialize.js"></script>
    <!-- jquery-deserialize modif -->

    <!-- DataTables -->
    <link href="<?= base_url('assets/') ?>DataTables/datatables.min.css" rel="stylesheet" />

    <script src="<?= base_url('assets/') ?>DataTables/datatables.min.js"></script>
    <!-- DataTables End -->

    <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Mar 09 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">

        <div class="d-flex align-items-center justify-content-between">
            <a href="index.html" class="logo d-flex align-items-center">
                <img src="<?= base_url('assets/') ?>assets/img/logo.png" alt="">
                <span class="d-none d-lg-block">INVENTORY</span>
            </a>
            <i class="bi bi-list toggle-sidebar-btn"></i>
        </div><!-- End Logo -->


        <nav class="header-nav ms-auto">
            <ul class="d-flex align-items-center">

                <li class="nav-item dropdown pe-3">

                    <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                        <!-- <img src="<?= base_url('assets/') ?>assets/img/profile-img.jpg" alt="Profile" class="rounded-circle"> -->
                        <span class="d-none d-md-block dropdown-toggle ps-2"><?= $this->session->userdata('name') ?></span>
                    </a><!-- End Profile Iamge Icon -->

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                                <i class="bi bi-person"></i>
                                <span>My Profile</span>
                            </a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="<?= base_url('Auth/logout') ?>">
                                <i class="bi bi-box-arrow-right"></i>
                                <span>Sign Out</span>
                            </a>
                        </li>

                    </ul><!-- End Profile Dropdown Items -->
                </li><!-- End Profile Nav -->

            </ul>
        </nav><!-- End Icons Navigation -->

    </header><!-- End Header -->