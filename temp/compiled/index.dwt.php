<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="101BL v2.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />

<title><?php echo $this->_var['page_title']; ?></title>



<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<link rel="alternate" type="application/rss+xml" title="RSS|<?php echo $this->_var['page_title']; ?>" href="<?php echo $this->_var['feed_url']; ?>" />

<?php echo $this->smarty_insert_scripts(array('files'=>'jquery-1.8.3.min.js,common.js,index.js')); ?>
</head>
<body class="index_page">
<div class="top_adv">

<?php $this->assign('ads_id','5'); ?><?php $this->assign('ads_num','0'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

</div>
<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="clearfix" style="width: 1350px;margin: 0 auto;"> 
        
        <div style="float:left; width:1350px;"> 
        <?php echo $this->fetch('library/index_ad.lbi'); ?>
        </div>
    
</div>

<div class="blank"></div>
<script type="text/javascript">
var cate_step = 1;

$(function(){
	$(".rs_jq_timer").each(function(){
		countDown($(this).html(), this);
	});
});
function countDown(time, elemId){
	//if(typeof end_time == "string")
	var end_time = new Date(time).getTime();//月份是实际月份-1
	//current_time = new Date().getTime(),
	var sys_second = (end_time-new Date().getTime())/1000;
	var timer = setInterval(
		function(){
			var elemText = "剩余： ";
			if (sys_second > 0) {
				sys_second -= 1;
				var day = Math.floor((sys_second / 3600) / 24);
				var hour = Math.floor((sys_second / 3600) % 24);
				var minute = Math.floor((sys_second / 60) % 60);
				var second = Math.floor(sys_second % 60);
				if(day > 0){
					elemText += "<b>" + day + "</b>天";
				}
				elemText += "<b>" + hour + "</b>时";
				elemText += '<b>' + minute + "</b>分";
				elemText += '<b>' + second + "</b>秒";
				$(elemId).html(elemText);
			} else { 
				clearInterval(timer);
				$(elemId).text("活动结束");
			}
		}, 1000);
}
</script>

<script>

$(function(){
	$(".search_more:eq(0)").show();
})
function change(id){
	if(id==1){
		$(".search_more").hide();
		$(".search_more:eq(0)").show();
		$(".show_best_area").hide();
		$(".show_best_area:eq(0)").show();
	}else if(id==2){ 
		$(".search_more").hide();
		$(".search_more:eq(1)").show();
		$(".show_best_area").hide();
		$(".show_best_area:eq(1)").show();
	}else if(id==3){
		$(".search_more").hide();
		$(".search_more:eq(2)").show();
		$(".show_best_area").hide();
		$(".show_best_area:eq(2)").show();	
	}else{ 
		$(".search_more").hide();
		$(".search_more:eq(3)").show();
		$(".show_best_area").hide();
		$(".show_best_area:eq(3)").show();	
	}
}
/* 横排三个广告中间距离 */
$(function(){
	$(".width_three:eq(1)").css("margin-left","5px");
	$(".width_three:eq(1)").css("margin-right","5px");
})
width_three
</script>
<div class="block clearfix">
    
    <div class="cd_left">
        <div id="cd_all_category"></div>
    <?php echo $this->fetch('library/category_tree_index.lbi'); ?>
	
<?php $this->assign('articles',$this->_var['articles_4']); ?><?php $this->assign('articles_cat',$this->_var['articles_cat_4']); ?><?php echo $this->fetch('library/cat_articles.lbi'); ?>
    
    </div>
    <div class="cd_right">
        
      <p class="rs_pbox_sxsc">
            <a id="sxsc">生鲜蔬菜</a>　
            <span style="float:right;"><a href="category-58-b0.html">更多>></a></span>
        </p>
      

	  <?php echo $this->fetch('library/cat_sxsc.lbi'); ?>
    </div>
    
    <div class="cd_right">
        
        <p class="rs_pbox_tit">
            <a class="best_hot" id="promo" onclick="change(1)">限时抢购</a>　
            <a class="best_hot" id="new" onclick="change(2)">最新上架</a>　
            <a class="best_hot" id="hot" onclick="change(3)">热卖商品</a>
            <a class="best_hot" id="group" onclick="change(4)">团购商品</a>
          <span style="float:right;">
       	  <a href="search-promotion.html" class="search_more">更多>></a>
          <a href="search-new.html" class="search_more">更多>></a>
          <a href="search-hot.html" class="search_more">更多>></a>
          <a href="group_buy.php" class="search_more">更多>></a>
          </span>
        </p>
		<?php echo $this->fetch('library/recommend_promotion.lbi'); ?>
        <?php echo $this->fetch('library/recommend_promotion.lbi'); ?>
		<?php echo $this->fetch('library/recommend_hot.lbi'); ?>
      <?php echo $this->fetch('library/group_buy.lbi'); ?>
    </div> 
    <div class="width_three_box">

<?php $this->assign('ads_id','8'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>
<?php $this->assign('ads_id','9'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>
<?php $this->assign('ads_id','10'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

	</div>
	


<?php $this->assign('cat_goods',$this->_var['cat_goods_1']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_1']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php $this->assign('ads_id','6'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>
<?php $this->assign('cat_goods',$this->_var['cat_goods_2']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_2']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php $this->assign('cat_goods',$this->_var['cat_goods_3']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_3']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php $this->assign('cat_goods',$this->_var['cat_goods_4']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_4']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php $this->assign('cat_goods',$this->_var['cat_goods_5']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_5']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php $this->assign('ads_id','7'); ?><?php $this->assign('ads_num','0'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

</div>
</div>
<?php echo $this->fetch('library/page_footer.lbi'); ?>
</body>
</html>
