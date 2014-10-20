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
	<div class="banan" style="width:1207px; margin:0px auto;">
    <div class="AreaL">
        <div id="cd_all_category"></div>
        <?php echo $this->fetch('library/category_tree_index.lbi'); ?>
	</div>
	</div>
        
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
<div class="block clearfix">

<?php echo $this->fetch('library/recommend_promotion.lbi'); ?>
<script>
$(function(){
	$(".show_best_area:eq(1)").hide();
})
function change(id){
	if(id==1){
		$(".best_hot").css("color","#333");
		$("#best").css("color","#b22825");
		$(".show_best_area").hide();
		$(".show_best_area:eq(0)").show();
	}else{ 
		$(".best_hot").css("color","#333");
		$("#hot").css("color","#b22825");
		$(".show_best_area").hide();
		$(".show_best_area:eq(1)").show();
	}
}

</script>
<p class="rs_pbox_tit">
	<a class="best_hot" id="best" onclick="change(1)">精品推荐</a>　｜　
	<a class="best_hot" id="hot" onclick="change(2)">热卖商品</a>
    <span style="float:right;"><a href="search-best.html" style="color:#cc0001;">更多优惠</a><img src="themes/red_three/images/gdyh.jpg"></span>
</p>
<?php echo $this->fetch('library/recommend_best.lbi'); ?>
<?php echo $this->fetch('library/recommend_hot.lbi'); ?>


<?php $this->assign('ads_id','6'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>
<?php $this->assign('cat_goods',$this->_var['cat_goods_1']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_1']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>
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
