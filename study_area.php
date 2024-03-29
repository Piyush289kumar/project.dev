<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Dashboard - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- Favicons -->
  <link href="admin/assets/img/favicon.png" rel="icon">
  <link href="admin/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="admin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="admin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="admin/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="admin/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="admin/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="admin/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="admin/assets/vendor/simple-datatables/style.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="admin/assets/css/style.css" rel="stylesheet">
  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
  <?php
  include('private_files/system_configure_setting.php');
  if (!isset($_GET['course_id'])) {
    echo "
  <script>
    window.location.href = '$hostname/courses.php';
  </script>";
  }
  $course_id = $_GET['course_id'];

  if (!isset($_GET['course_id'])) {
    $chapter_id = 'blank';
  } else {
    $chapter_id = $_GET['chapter_id'];
  }
  ?>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center" style="background: #0A2640;">
    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/Logo.png" alt="Logo">
      </a>
      <i class="bi bi-list toggle-sidebar-btn text-white"></i>
    </div><!-- End Logo -->
    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
        <div class="d-flex gap-4 px-5">
          <a href="#" class="text-white btn fw-bold">Home</a>
          <a href="#" class="text-white btn fw-bold">Course</a>
          <a href="#" class="text-white btn fw-bold">About</a>
          <a href="#" class="btn bg-light fw-bold text-dark rounded-5">Login</a>
        </div>
      </ul>
    </nav><!-- End Icons Navigation -->
  </header><!-- End Header -->
  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
      <li class="nav-item">
        <a class="nav-link">
          <i class="bi bi-grid"></i>
          <span>Study Area</span>
        </a>
      </li>

      <!-- Fetch Chapter Data -->
      <!-- Fetch All Chapter From Database -->
      <?php
      $sql_fetch_all_chapter = "SELECT * FROM chapter
                WHERE active_record = 'Yes'
                AND course_id = '{$course_id}'
                ORDER BY chapter_index";
      $idx = 1;
      $result_sql_fetch_all_chapter = mysqli_query($conn, $sql_fetch_all_chapter) or die("Query Failed!!");
      if (mysqli_num_rows($result_sql_fetch_all_chapter) > 0) {
        while ($row_sql_fetch_all_chapter = mysqli_fetch_assoc($result_sql_fetch_all_chapter)) {
      ?>
          <!-- Chapter -->
          <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#chapter_<?php echo $idx ?>" data-bs-toggle="collapse" style='cursor: pointer;'>
              <i class="bi bi-menu-button-wide"></i><span>Chapter: <?php echo $idx ?></span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="chapter_<?php echo $idx ?>" class="nav-content collapse" data-bs-parent="#sidebar-nav">
              <li>
                <a href="study_area.php?course_id=<?php echo $course_id ?>&chapter_id=<?php echo $row_sql_fetch_all_chapter['chapter_id'] ?>">
                  <i class="bi bi-circle"></i><span><?php echo $row_sql_fetch_all_chapter['chapter_title'] ?></span>
                </a>
              </li>
            </ul>
          </li>
          <!-- Chapter Nav -->


      <?php
          $idx++;
        }
      } ?>
      <!-- Fetch Chapter Data -->

    </ul>
  </aside><!-- End Sidebar-->

  <!-- Fetch Chapter Details as chooses -->
  <?php
                  $sql_fetch_chapter = "SELECT * FROM chapter
                  INNER JOIN course ON chapter.course_id = course.cid
                  WHERE chapter.active_record = 'Yes'
                  AND course.active_record = 'Yes'
                  AND chapter.course_id = '{$course_id}'
                  ORDER BY chapter.chapter_index";

  echo $result_sql_fetch_chapter = mysqli_query($conn, $sql_fetch_chapter) or die("Query Failed!!");
  if (mysqli_num_rows($result_sql_fetch_chapter) > 0) {
    while ($row_sql_fetch_chapter = mysqli_fetch_assoc($result_sql_fetch_chapter)) {
  ?>
      <main id="main" class="main">
        <div class="pagetitle">
          <h1>Dashboard</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->
        <section class="section dashboard">
          <div class="row">
            <!-- Left side columns -->
            <div class="col-md-12">
              <div class="row">
                <!-- Header Card -->
                <div class="col-md-12">
                  <div class="card info-card sales-card">
                    <div class="card-body">
                      <h5 class="card-title">Sales <span>| Today</span></h5>
                      <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                          <i class="bi bi-bookmarks"></i>
                        </div>
                        <div class="ps-3">
                          <h6>Chapter: <?php echo $row_sql_fetch_chapter['chapter_title'] ?></h6>
                        </div>
                      </div>
                    </div>
                  </div>
                </div><!-- End Header Card -->
                <!-- Contend Card -->
                <div class="col-md-12">
                  <div class="card info-card sales-card">
                    <div class="card-body">
                      <div class="card-text px-3 py-4">
                        Top 10 Excel Pivot Table Keyboard Shortcuts
                        Using programs like Microsoft Excel, pivot tables are handy for highlighting key data. They let you
                        “pivot,” changing data direction for fresh insights. By grouping similar data and applying
                        operations
                        like total or average, pivot tables summarize large datasets efficiently. However, dealing with
                        massive data can be tedious. Knowing keyboard shortcuts becomes valuable, speeding up common tasks
                        and
                        saving time. These shortcuts enhance work speed and reduce the likelihood of mistakes, common in
                        manual processes. Tools also minimize human errors like choosing the wrong item or pushing the wrong
                        button, improving overall efficiency and accuracy in data handling.
                        Excel Pivot Table Shortcuts
                        Shortcuts
                        Action
                        Alt + N + V + T + Enter
                        Create a PivotTable from selected data
                        Alt + Shift + F10
                        Opens the context menu for the selected cell in the PivotTable
                        Up/Down/Left/Right arrows
                        Navigate within the context menu
                        Enter
                        Selects the highlighted option in the context menu
                        Tab
                        Switch between the PivotTable fields list and the data area
                        Alt + Down Arrow
                        Opens the dropdown menu for a cell with options to filter data
                        Up/Down arrows
                        Select options within the dropdown menu
                        Enter
                        Apply the selected filter
                        Esc
                        Close the dropdown menu without applying any filter
                        Ctrl + Tab
                        Switch between worksheets
                        Ctrl + Alt + F5
                        Refresh all PivotTables in the workbook Refresh all PivotTables in the workbook
                        Shortcut to Create a Pivot Table From Data
                        You can quickly make a Pivot Table in Excel with the data you choose by pressing this keyboard
                        button.
                      </div>
                    </div>
                  </div>
                </div><!-- End Contend Card -->
              </div>
            </div><!-- End Left side columns -->
          </div>
        </section>
      </main><!-- End #main -->

    <?php }
  } else {
    ?>

    <div class="row" style='height: 80vh;'>
      <div class="offset-lg-5 d-flex justify-content-center align-items-center col-lg-4">
        <a class="btn btn-danger w-75">No Data Found.</a>
      </div>
    </div>

  <?php
  } ?>
  <!-- ======= Footer ======= --><!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <!-- <div class="copyright">
        &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div> -->
    <!-- Import Copyright File -->
    <div class="credits">
      Designed & Developed by <a href="https://github.com/Piyush289kumar/">Piyush Kumar Raikwar</a>
    </div>

  </footer><!-- End Footer -->

  <a class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


  <!-- Vendor JS Files -->
  <script src="admin/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="admin/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="admin/assets/vendor/echarts/echarts.min.js"></script>
  <script src="admin/assets/vendor/quill/quill.min.js"></script>
  <script src="admin/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="admin/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="admin/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="admin/assets/js/main.js"></script>


</body>

</html>