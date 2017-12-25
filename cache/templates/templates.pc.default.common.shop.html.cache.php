<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<!-- page start -->




            <link rel="stylesheet" href="<?php echo HOME_THEME_PATH; ?>css/shop.css">
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
                <?php $rt = $this->list_tag("action=module catid=28 num=5"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                    <div class="swiper-slide">
                        <a href="<?php echo $t['link']; ?>"><img src="<?php echo dr_get_file($t['thumb']); ?>" alt="<?php echo $t['title']; ?>" style="width:100%;"/></a>
                    </div>
                <?php } } ?>
                </div>
            </div>
            <div class='content_box'>
                <span class='shop_title'><b class='point'>·</b>商城简介</span>
                <div class='shop_content'>

                    <div class='shop_row'>
                        <span style="width:55%;" class='shop_row_img'><img src='<?php echo HOME_THEME_PATH; ?>images/shop_img_1.jpg'/></span>
                        <span style="width:35%;" class='shop_row_text tfl'>
                            设计多元，工艺精湛 ，自身拥有庞大的产品研发团队，并联合国内外知名设计大师，非遗传承大师以及各大院校合作。
                        </span>
                    </div>
                    <div class='clear'></div>

                    <div class='shop_row'>
                        <span style="width:35%;" class='shop_row_text tfr'>
                            品类齐全 ，涵盖所有珠宝品类 。产品覆盖每个价位段，贴心服务每一个消费群体 。
                        </span>
                        <span style="width:55%;" class='shop_row_img'><img src='<?php echo HOME_THEME_PATH; ?>images/shop_img_2.jpg'/></span>
                    </div>
                    <div class='clear'></div>

                    <div class='shop_row'>
                        <span style="width:45%;" class='shop_row_img'><img src='<?php echo HOME_THEME_PATH; ?>images/shop_img_3.jpg'/></span>
                        <span style="width:45%;" class='shop_row_text tfl'>
                            <br/><br/>产品精准 利用大数据驱动，精准市场分析追随市场趋势。
                        </span>
                    </div>
                    <div class='clear'></div>

                    <div class='shop_row'>
                        <span style="width:35%;" class='shop_row_text tfr'>
                            限量销售、双重保真 ，每款产品限量销售，拒绝撞款，引流时尚潮流
                        </span>
                        <span style="width:55%;" class='shop_row_img'><img src='<?php echo HOME_THEME_PATH; ?>images/shop_img_4.jpg'/></span>
                    </div>
                    <div class='clear'></div>

                </div>
            </div>


<!-- page end -->

<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>


