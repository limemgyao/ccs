<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<!-- page start -->



<link rel="stylesheet" href="<?php echo HOME_THEME_PATH; ?>css/index.css">
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
        <?php $rt = $this->list_tag("action=module catid=27 num=5"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <div class="swiper-slide">
                <a href="<?php echo $t['link']; ?>"><img src="<?php echo dr_get_file($t['thumb']); ?>" alt="<?php echo $t['title']; ?>" style="width:100%;"/></a>
            </div>
        <?php } } ?>
    </div>
</div>
<div class='content_box'>
    <div class='infobox'>
        <span><b class='point'>·</b>商城简介</span>
        <p>
            <b>金猫银猫CSmall</b>（ www.csmall.com ）是国内最大的线上线下一体化的珠宝新零售互联网企业。Gift集成店项目更是CSmall在2017年再次首度颠覆了传统珠宝行业零售模式，除了改变珠宝购物习惯，以换代售，推动珠宝饰品化，让所有人都能佩戴珠宝饰品，满足顾客的潜在消费需求；Gift集成店项目突破原有产业间的断格、融入新电商、新娱乐、新金融等多维度的新业态模式，真正实现跨界营销、大数据化等多个维度结合起来的全球Gift集成店模式的新业态。 
        </p>
        <div class='showbox'>
            <span><img src="<?php echo HOME_THEME_PATH; ?>images/index_ring_1.jpg"/></span>
            <span><img src="<?php echo HOME_THEME_PATH; ?>images/index_ring_2.jpg"/></span>
            <span><img src="<?php echo HOME_THEME_PATH; ?>images/index_ring_3.jpg"/></span>
        </div>
    </div>
    <div class='superbox'>
        <span><b class='point'>·</b>商城优势</span>
        <p class='super_title'>
            商城模式、实物交割
        </p>
        <p class='super_content'>
            国内最大的线上线下珠宝零售平台，全国200家实体店保障！<br/>
            模式创新--银豆游戏可提现、购物，购物积分可参与兑换！<br/>
        </p>
        <div class='phonebox'>
            <span><img src="<?php echo HOME_THEME_PATH; ?>images/index_phone.png"/></span>
        </div>
    </div>
</div>


<!-- page end -->

<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>
