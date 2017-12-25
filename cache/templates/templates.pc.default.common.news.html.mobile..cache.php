<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<!-- page start -->




            <link rel="stylesheet" href="<?php echo HOME_THEME_PATH; ?>css/news.css">
            <script type="text/javascript">
                var bannerSwiper;
                function page_onload(){
                    //banner swiper init
                    bannerSwiper = new Swiper('.banner_box', {
                        autoplay: 4000,//可选选项，自动滑动
                        loop: true
                    })
                    //strategy swiper init
                   
                }
            </script>

            <div class="banner_box">
                <div class="swiper-wrapper">
                <?php $rt = $this->list_tag("action=module catid=29 num=5"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                    <div class="swiper-slide">
                        <a href="<?php echo $t['link']; ?>"><img src="<?php echo dr_get_file($t['thumb']); ?>" alt="<?php echo $t['title']; ?>" style="width:100%;"/></a>
                    </div>
                <?php } } ?>
                </div>
            </div>
            <div class='content_box'>
                <span class='news_title'><b class='point'>·</b>商城新闻</span>
                <div class='news_content'>

                <?php $rt = $this->list_tag("action=module catid=32 num=30"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                    <div class='news_list'>
                        <div class='news_li_img'>
                            <img src="<?php echo dr_get_file($t['thumb']); ?>"/>
                        </div>
                        <div class='news_li_title'>
                            <?php echo $t['title']; ?>
                        </div>
                        <div class='news_li_content'>
                            <?php echo $t['description']; ?>
                        </div>
                        <div class='news_li_info'>
                            <span><?php echo $t['keywords']; ?></span>
                            <p>阅读：<?php echo $t['readnum']; ?></p>
                        </div>
                    </div>
                    <div class="clear"></div>
                <?php } } ?>
                </div>
            </div>


<!-- page end -->
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>
