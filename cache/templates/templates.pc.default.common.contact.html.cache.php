<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<!-- page start -->


            <link rel="stylesheet" href="<?php echo HOME_THEME_PATH; ?>css/contact.css">
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
                <?php $rt = $this->list_tag("action=module catid=31 num=5"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                    <div class="swiper-slide">
                        <a href="<?php echo $t['link']; ?>"><img src="<?php echo dr_get_file($t['thumb']); ?>" alt="<?php echo $t['title']; ?>" style="width:100%;"/></a>
                    </div>
                <?php } } ?>
                </div>
            </div>
            <div class='content_box'>
                <div class='info_box'>
                    <span>上海一二三网络科技有限公司</span>
                    <span><a>地址：</a>上海市浦东新区东三里桥路1018号上海数字产业园B座204</span>
                    <span><a>电话：</a>4000215098</span>
                    <span><a>邮编：</a>200125</span>
                    <span><a>Email：</a>yiersan_net@163.com</span>
                </div>
                <div class='input_box'>
                    <input type="text" name="name" placeholder='姓名(必填)'>
                    <input type="text" name="phone" placeholder='手机(必填)'>
                    <input type="text" name="email" placeholder='邮箱(必填)'>
                    <textarea placeholder="备注(选填200个字以内)"></textarea>
                    <span class='submit_btn'>发送我们</span>
                </div>
            </div>


<!-- page end -->

<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>

