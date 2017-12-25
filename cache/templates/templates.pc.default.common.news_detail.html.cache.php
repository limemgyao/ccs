<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<!-- page start -->


            <link rel="stylesheet" href="<?php echo HOME_THEME_PATH; ?>css/news.css">
            <script type="text/javascript">
                
                function page_onload(){
                    
                   
                }
            </script>

            
            <div class='content_box'>
                <span class='news_title'><b class='point'>·</b>商城新闻</span>
                <div class='news_content'>
                    <h1 style='padding:20px 0px;'><?php echo $title; ?></h1>
                    <p><?php echo $content; ?></p>
                </div>
            </div>


<!-- page end -->
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>
