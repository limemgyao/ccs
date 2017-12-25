<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<!-- page start -->



            <link rel="stylesheet" href="<?php echo HOME_THEME_PATH; ?>css/business.css">
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
                <?php $rt = $this->list_tag("action=module catid=30 num=5"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                    <div class="swiper-slide">
                        <a href="<?php echo $t['link']; ?>"><img src="<?php echo dr_get_file($t['thumb']); ?>" alt="<?php echo $t['title']; ?>" style="width:100%;"/></a>
                    </div>
                <?php } } ?>
                </div>
            </div>
            <div class='content_box'>
                <span class='business_title'><b class='point'>·</b>加盟原因</span>
                <div class='business_response business_content'>
                    <span>政策导向</span>
                    <p>
                        国务院2016年11月11日印发《关于推动实体零售创新转型的意见》。《意见》共提出5大类16项具体措施推动实体零售商转型升级，释放发展活力。促进线上线下融合、创新经营机制与简政放权。 
                    </p>
                    <span>发展动因</span>
                    <p>
                        传统电商所面临的增长“瓶颈”开始显现。线上商城和线下实体店从相对独立、转化为互为促进、彼此融合。消费者是有温度的，不论线上还是线下，消费者愿意选择的都是好的体验服务。  当消费升级区域扩大让珠宝等产品逐步成为大众消费品。
                    </p>
                    <span>未来展望</span>
                    <p>
                        Gift集成店是线上线下融为一体化的新电商、新娱乐、新金融等的新模式融合，来启动消费购物体验的升级，推进消费购物方式的变革，构建全产业销售的全渠道生态格局。 
                    </p>
                    <span>行业领先</span>
                    <p>
                        Csmall-gift集成店颠覆了传统多行业的单轨道运营模式。以换代售，推动珠宝饰品化。满足顾客潜在消费需求, 线上多选、跨界营销、大数据化等多个维度结合起来的全球全产业的新业态。 
                    </p>
                </div>
                <span class='business_title'><b class='point'>·</b>加盟条件</span>
                <div class='business_rule business_content'>
                    <p>
                        <span class='rhomb'></span>
                        <a>
                            认同 Csmall-Gift 的商业模式、品牌定位、价值、经营理念和运作、管理模式,具有良好的投资心态及风险意识,有与Gift共同发展的信心。
                        </a>
                    </p>

                    <p>
                        <span class='rhomb'></span>
                        <a>
                            Gift加盟商需在经济上自负盈亏、独立核算、独立经营的法人；与Gift是一种互惠互利的合作关系。其类型可分为：运营商、经销商。
                        </a>
                    </p>

                    <p>
                        <span class='rhomb'></span>
                        <a>
                            Gift加盟商须有符合一定的资质，具有珠宝、工艺品销售等资格以及拥有，足够运营资本和当地企业或商户资源、广阔的人脉关系；社会信誉较好的、具有一定流动资金的、适合公司战略发展方向；有商务拓展能力的公司。
                        </a>
                    </p>

                    <p>
                        <span class='rhomb'></span>
                        <a>
                            Gift加盟商需符合国家相关法律规定的加盟商资格。
                        </a>
                    </p>
                    <div class='clear'></div>
                </div>
                <div class='business_qrcode'>
                    <span><img src="<?php echo HOME_THEME_PATH; ?>images/qr_code.jpg"/></span>
                </div>
            </div>


<!-- page end -->
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>
