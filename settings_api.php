<?php 
$page_title="Settings API";
include("includes/header.php");
require("includes/lb_helper.php");
require("language/language.php");

if(!isset($_SESSION['admin_type'])){
    if($_SESSION['admin_type'] == 0){
        session_destroy();
        header("Location: index.php");
        exit;
    }
}

$qry = "SELECT * FROM tbl_settings WHERE id='1'";
$result = mysqli_query($mysqli, $qry);
$settings_data = mysqli_fetch_assoc($result);

// Handle TMDb Settings Submission
if (isset($_POST['submit_tmdb'])) {
    $data = array(
        'account_delete_intruction' => $_POST['account_delete_intruction']
    );
    Update('tbl_settings', $data, "WHERE id = '1'");
    $_SESSION['msg'] = "TMDb settings updated successfully";
    $_SESSION['class'] = "success";
    header("Location: settings_api.php");
    exit;
}

// Handle RABBITSTREAM Settings Submission
if (isset($_POST['submit_rabbitstream'])) {
    $data = array(
        'RABBITSTREAM_SOURCE_API' => $_POST['RABBITSTREAM_SOURCE_API']
    );
    Update('tbl_settings', $data, "WHERE id = '1'");
    $_SESSION['msg'] = "RABBITSTREAM settings updated successfully";
    $_SESSION['class'] = "success";
    header("Location: settings_api.php");
    exit;
}

// Handle External App Settings Submission
if (isset($_POST['submit_external_app'])) {
    $data = array(
        'vod_extra_pakage_name' => $_POST['vod_extra_pakage_name'],
        'vod_extra_link' => $_POST['vod_extra_link']
    );
    Update('tbl_settings', $data, "WHERE id = '1'");
    $_SESSION['msg'] = "External App settings updated successfully";
    $_SESSION['class'] = "success";
    header("Location: settings_api.php");
    exit;
}
?>


<!-- Start: main -->
<main id="nsofts_main">
    <div class="nsofts-container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb align-items-center">
                <li class="breadcrumb-item d-inline-flex"><a href="dashboard.php"><i class="ri-home-4-fill"></i></a></li>
                <li class="breadcrumb-item d-inline-flex active" aria-current="page"><?php echo (isset($page_title)) ? $page_title : "" ?></li>
            </ol>
        </nav>
            
        <div class="card">
            <div class="card-body p-0">                    
                <div class="nsofts-setting">
                    <div class="nsofts-setting__sidebar">
                        <a class="d-inline-flex align-items-center text-decoration-none fw-semibold mb-4">
                            <span class="ps-2 lh-1"><?php echo (isset($page_title)) ? $page_title : "" ?></span>
                        </a>
                        <div class="nav flex-column nav-pills" id="nsofts_setting" role="tablist" aria-orientation="vertical">
                            <button class="nav-link active" id="nsofts_setting_1" data-bs-toggle="pill" data-bs-target="#nsofts_setting_content_1" type="button" role="tab" aria-controls="nsofts_setting_1" aria-selected="true">
                                <i class="ri-list-settings-line"></i>
                                <span>Themoviedb</span>
                            </button>

                        </div>
                    </div>
                    <div class="nsofts-setting__content">
                        <div class="tab-content">
                            
                            <!--Themoviedb Settings-->
                            <div class="tab-pane fade show active" id="nsofts_setting_content_1" role="tabpanel" aria-labelledby="nsofts_setting_1" tabindex="0">
                                <form action="" name="settings_general" method="POST" enctype="multipart/form-data">
                                    <h4 class="mb-4">Themoviedb Settings</h4>
                                    <div class="mb-3 row">
                                        <label for="" class="col-sm-2 col-form-label">TMDb Access Token <a style="color: #f44336c7;" href="https://docs.nemosofts.com/streambox-app/admin-panel/themoviedb" target="_blank">link</a></label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="account_delete_intruction" id="account_delete_intruction" value="<?php echo $settings_data['account_delete_intruction']?>" >
                                        </div>
                                    </div>
                                    <button type="submit" name="submit_tmdb" class="btn btn-primary" style="min-width: 120px;">Save</button>
                                    
                                    
                                    
                                </form>
                                <div class="tab-content">
                            </div>
                            <div class="tab-pane fade show active" id="nsofts_setting_content_1" role="tabpanel" aria-labelledby="nsofts_setting_1" tabindex="0">
                                <form action="" name="settings_general" method="POST" enctype="multipart/form-data">
                                    <h4 class="mb-4">RABBITSTREAM Settings</h4>
                                    
                                    
                                    <div class="mb-3 row">
                                        <label for="" class="col-sm-2 col-form-label">RABBITSTREAM SOURCE API </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="RABBITSTREAM_SOURCE_API" id="RABBITSTREAM_SOURCE_API" value="<?php echo $settings_data['RABBITSTREAM_SOURCE_API']?>" >
                                        </div>
                                    </div>
                                    <button type="submit" name="submit_rabbitstream" class="btn btn-primary" style="min-width: 120px;">Save</button>
                                    
                                </form>
                            </div>
                            <div class="tab-pane fade show active" id="nsofts_setting_content_1" role="tabpanel" aria-labelledby="nsofts_setting_1" tabindex="0">
                                <form action="" name="settings_general" method="POST" enctype="multipart/form-data">
                                    <h4 class="mb-4">External App Settings</h4>
                                    
                                    
                                    <div class="mb-3 row">
                                        <label for="" class="col-sm-2 col-form-label">External App packagename  </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="vod_extra_pakage_name" id="vod_extra_pakage_name" value="<?php echo $settings_data['vod_extra_pakage_name']?>" >
                                        </div>
                                        <label for="" class="col-sm-2 col-form-label">External App Download link  </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="vod_extra_link" id="vod_extra_link" value="<?php echo $settings_data['vod_extra_link']?>" >
                                        </div>
                                    </div>
                                    <button type="submit" name="submit_external_app" class="btn btn-primary" style="min-width: 120px;">Save</button>
                                    
                                </form>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- End: main -->
    
<?php include("includes/footer.php");?>
