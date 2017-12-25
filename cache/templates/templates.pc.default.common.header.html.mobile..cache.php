<!DOCTYPE html>
<html>
<head lang="zh">
    <meta charset="utf-8">
    <title>CC商城</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no,email=no"/>
    <!-- <link rel="shortcut icon" href="<?php echo HOME_THEME_PATH;  echo HOME_THEME_PATH; ?>images/base/title.png"> -->
    <meta name="applicable-device" content="pc,mobile"/>
    <script src="<?php echo HOME_THEME_PATH; ?>js/jquery.min.js"></script>
    <script src="<?php echo HOME_THEME_PATH; ?>js/jquery-1.7.2.min.js"></script>
    <script src="<?php echo HOME_THEME_PATH; ?>js/iscroll.js"></script>
    <script src="<?php echo HOME_THEME_PATH; ?>js/swiper.min.js"></script>
    <script src="<?php echo HOME_THEME_PATH; ?>js/fastclick.js"></script>
    <link rel="stylesheet" href="<?php echo HOME_THEME_PATH; ?>css/base.css">
    <link rel="stylesheet" href="<?php echo HOME_THEME_PATH; ?>css/swiper.min.css">
    <script src="<?php echo HOME_THEME_PATH; ?>js/base.js"></script>
</head>
<body>
    <div class='headbar'>
        
    </div>
    
    <div class='nav_box'>
       
    </div>

    <div class='alert_qrcode_box'>
        
    </div>

    <div class='main_box'>
        <div class='main_body'>
            <div class='header_box'>
                <div class='header_body'>
                    <div class="logo"><img src="<?php echo HOME_THEME_PATH; ?>images/logo.png"></div>
                    <div class='nav'>
                        <span class='<?php if ($catid==22||!$catid) { ?>nav_init<?php } ?>'><a href="/" >平台首页</a></span>
                    <?php $rt = $this->list_tag("action=category pid=0"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                        <span class='<?php if ($cat[topid]==$t['topid']) { ?>nav_init<?php } ?>'><a href="<?php echo $t['url']; ?>"><?php echo $t['name']; ?></a></span>
                    <?php } } ?>
                        <!-- <span class='nav_init'>平台首页</span>
                        <span>CC商城</span>
                        <span>新闻中心</span>
                        <span>招商合作</span>
                        <span>联系我们</span> -->
                    </div>
                </div>
            </div>
