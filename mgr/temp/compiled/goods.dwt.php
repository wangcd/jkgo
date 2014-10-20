<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="101BL v2.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />

<title><?php echo $this->_var['page_title']; ?></title>

<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js')); ?>
<script type="text/javascript" src="themes/red_three/js/action.js"></script>
<script type="text/javascript" src="themes/red_three/js/mzp-packed-me.js"></script>
<script type="text/javascript">
function $id(element) {
  return document.getElementById(element);
}
//切屏--是按钮，_v是内容平台，_h是内容库
function reg(str){
  var bt=$id(str+"_b").getElementsByTagName("h2");
  for(var i=0;i<bt.length;i++){
    bt[i].subj=str;
    bt[i].pai=i;
    bt[i].style.cursor="pointer";
    bt[i].onclick=function(){
      $id(this.subj+"_v").innerHTML=$id(this.subj+"_h").getElementsByTagName("blockquote")[this.pai].innerHTML;
      for(var j=0;j<$id(this.subj+"_b").getElementsByTagName("h2").length;j++){
        var _bt=$id(this.subj+"_b").getElementsByTagName("h2")[j];
        var ison=j==this.pai;
        _bt.className=(ison?"":"h2bg");
      }
    }
  }
  $id(str+"_h").className="none";
  $id(str+"_v").innerHTML=$id(str+"_h").getElementsByTagName("blockquote")[0].innerHTML;
}

</script>

<script type="text/javascript" src="themes/red_three/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="themes/red_three/js/jquery.ztree.core-3.5.js"></script>
<SCRIPT type="text/javascript" >
<!--
var zTree;
var demoIframe;
var setting = {
	view: {
		dblClickExpand: false,
		showLine: true,
		selectedMulti: false
	},
	data: {
		simpleData: {
			enable:true,
			idKey: "id",
			pIdKey: "pId",
			rootPId: ""
		}
	},
	callback: {
		beforeClick: function(treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("tree");
			if (treeNode.isParent) {
				zTree.expandNode(treeNode);
				return false;
			} else {
				demoIframe.attr("src",treeNode.file + ".html");
				return true;
			}
		}
	}
};

var zNodes =<?php echo $this->_var['menu_json']; ?>;
$(document).ready(function(){
	var t = $("#tree");
	t = $.fn.zTree.init(t, setting, zNodes);
	demoIframe = $("#testIframe");
	demoIframe.bind("load", loadReady);
	var zTree = $.fn.zTree.getZTreeObj("tree");
	zTree.selectNode(zTree.getNodeByParam("id", 101));

});
function loadReady() {
	var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
	htmlH = demoIframe.contents().find("html").get(0).scrollHeight,
	maxH = Math.max(bodyH, htmlH), minH = Math.min(bodyH, htmlH),
	h = demoIframe.height() >= maxH ? minH:maxH ;
	if (h < 530) h = 530;
	demoIframe.height(h);
}
//-->
</SCRIPT>
</head>
<body class="index_page">
<div class="top_adv">

<?php $this->assign('ads_id','5'); ?><?php $this->assign('ads_num','0'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

</div>
<?php echo $this->fetch('library/page_header.lbi'); ?>



<div class="block clearfix">
  
  <div class="cd_category_tree_box">
  <div id="cd_all_category"></div>
  <div class="cd_category_tree">
    
<?php echo $this->fetch('library/category_tree.lbi'); ?>

</div>


    
    <?php echo $this->fetch('library/goods_hot.lbi'); ?>
  </div>
  
  
  <div class="AreaR">
    <?php echo $this->fetch('library/ur_here.lbi'); ?>
   
   <div id="goodsInfo" class="clearfix">
    
     
     <div class="imgInfo">
     <a href="<?php echo $this->_var['pictures']['0']['img_url']; ?>" id="zoom1" class="MagicZoom MagicThumb" title="<?php echo $this->_var['goods']['goods_style_name']; ?>">
      <img src="<?php echo $this->_var['goods']['goods_img']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>" width="360px;" height="360px"/>
     </a>
     <div class="blank5"></div>
    <div style="text-align:center; position:relative; width:100%;">
         <?php if ($this->_var['prev_good']): ?>
      <a href="<?php echo $this->_var['prev_good']['url']; ?>"><img style="position: absolute; left:0;" alt="prev" src="themes/red_three/images/up.gif" /></a>
      <?php endif; ?>
      <a href="javascript:;" onclick="window.open('gallery.php?id=<?php echo $this->_var['goods']['goods_id']; ?>'); return false;"><img alt="zoom" src="themes/red_three/images/zoom.gif" /></a>
      <?php if ($this->_var['next_good']): ?>
      <a href="<?php echo $this->_var['next_good']['url']; ?>"><img style="position: absolute;right:0;"  alt="next" src="themes/red_three/images/down.gif" /></a>
      <?php endif; ?>
      </div>
      
 
         <div class="blank"></div>
           
     <?php echo $this->fetch('library/goods_gallery.lbi'); ?>
     
         

     </div>
     
     <div class="textInfo">
     <form action="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
	  <h1 class="clearfix" >
      <?php echo $this->_var['goods']['goods_style_name']; ?>
      </h1> 
 
       <?php if ($this->_var['promotion']): ?>
      <div class="padd">
      <?php $_from = $this->_var['promotion']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      <?php echo $this->_var['lang']['activity']; ?>
      <?php if ($this->_var['item']['type'] == "snatch"): ?>
      <a href="snatch.php" title="<?php echo $this->_var['lang']['snatch']; ?>" style="font-weight:100; color:#006bcd; text-decoration:none;">[<?php echo $this->_var['lang']['snatch']; ?>]</a>
      <?php elseif ($this->_var['item']['type'] == "group_buy"): ?>
      <a href="group_buy.php" title="<?php echo $this->_var['lang']['group_buy']; ?>" style="font-weight:100; color:#006bcd; text-decoration:none;">[<?php echo $this->_var['lang']['group_buy']; ?>]</a>
      <?php elseif ($this->_var['item']['type'] == "auction"): ?>
      <a href="auction.php" title="<?php echo $this->_var['lang']['auction']; ?>" style="font-weight:100; color:#006bcd; text-decoration:none;">[<?php echo $this->_var['lang']['auction']; ?>]</a>
      <?php elseif ($this->_var['item']['type'] == "favourable"): ?>
      <a href="activity.php" title="<?php echo $this->_var['lang']['favourable']; ?>" style="font-weight:100; color:#006bcd; text-decoration:none;">[<?php echo $this->_var['lang']['favourable']; ?>]</a>
      <?php endif; ?>
      <a href="<?php echo $this->_var['item']['url']; ?>" title="<?php echo $this->_var['lang'][$this->_var['item']['type']]; ?> <?php echo $this->_var['item']['act_name']; ?><?php echo $this->_var['item']['time']; ?>" style="font-weight:100; color:#006bcd;"><?php echo $this->_var['item']['act_name']; ?></a><br />
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
      </div>
      <?php endif; ?> 
	   
	  
	  <ul class="ul2 clearfix">
        <li class="clearfix" style="width:100%">
       <dd>
 
       
       <strong>售价: </strong><font class="shop" id="ECS_SHOPPRICE"><?php echo $this->_var['goods']['shop_price_formated']; ?></font> 
   
	   
	   <?php if ($this->_var['cfg']['show_marketprice']): ?>
       <font class="market"></font> 
       <?php endif; ?>
       </dd>
       </li>
      
      
      
      
       <?php if ($this->_var['cfg']['show_goodssn']): ?>
      <li class="clearfix">
       <dd>
       <strong>货号: </strong><?php echo $this->_var['goods']['goods_sn']; ?>
      
       </dd>
       </li> 
        <?php endif; ?>
       <?php if ($this->_var['goods']['goods_number'] != "" && $this->_var['cfg']['show_goodsnumber']): ?>
       <li class="clearfix">
       <dd>
      
        <?php if ($this->_var['goods']['goods_number'] == 0): ?>
          <strong><?php echo $this->_var['lang']['goods_number']; ?></strong>
          <font color='red'><?php echo $this->_var['lang']['stock_up']; ?></font>
        <?php else: ?>
          <strong><?php echo $this->_var['lang']['goods_number']; ?></strong>
          <?php echo $this->_var['goods']['goods_number']; ?> <?php echo $this->_var['goods']['measure_unit']; ?>
        <?php endif; ?>
     
       </dd>
       </li>  
       <?php endif; ?>
       <?php if ($this->_var['goods']['goods_brand'] != "" && $this->_var['cfg']['show_brand']): ?>
      <li class="clearfix">
       <dd>
      
       <strong><?php echo $this->_var['lang']['goods_brand']; ?></strong><a href="<?php echo $this->_var['goods']['goods_brand_url']; ?>" ><?php echo $this->_var['goods']['goods_brand']; ?></a>
    
       </dd>
       </li>  
        <?php endif; ?>
        <?php if ($this->_var['cfg']['show_goodsweight']): ?>
       <li class="clearfix">
       <dd>
       
       <strong><?php echo $this->_var['lang']['goods_weight']; ?></strong><?php echo $this->_var['goods']['goods_weight']; ?>
       
       </dd>
      </li>
      <?php endif; ?>  
       <?php if ($this->_var['cfg']['show_addtime']): ?>
      <li class="clearfix">
       <dd>
    
      <strong><?php echo $this->_var['lang']['add_time']; ?></strong><?php echo $this->_var['goods']['add_time']; ?>
      
       </dd>
       </li>
       <?php endif; ?>
       <li class="clearfix">
       <dd>
       
       <strong>点击数量: </strong><?php echo $this->_var['goods']['click_count']; ?>
       </dd>
      </li>
	  </ul>
	  
	  
	  <ul>
     
        

      <?php if ($this->_var['volume_price_list']): ?>
      <li class="padd">
       <font class="f1"><?php echo $this->_var['lang']['volume_price']; ?>：</font><br />
			 <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#aad6ff">
				<tr>
					<td align="center" bgcolor="#FFFFFF"><strong><?php echo $this->_var['lang']['number_to']; ?></strong></td>
					<td align="center" bgcolor="#FFFFFF"><strong><?php echo $this->_var['lang']['preferences_price']; ?></strong></td>
				</tr>
				<?php $_from = $this->_var['volume_price_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('price_key', 'price_list');if (count($_from)):
    foreach ($_from AS $this->_var['price_key'] => $this->_var['price_list']):
?>
				<tr>
					<td align="center" bgcolor="#FFFFFF" class="shop"><?php echo $this->_var['price_list']['number']; ?></td>
					<td align="center" bgcolor="#FFFFFF" class="shop"><?php echo $this->_var['price_list']['format_price']; ?></td>
				</tr>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	     </table>
      </li>
      <?php endif; ?>

      <?php if ($this->_var['goods']['is_promote'] && $this->_var['goods']['gmt_end_time']): ?>
      <?php echo $this->smarty_insert_scripts(array('files'=>'lefttime.js')); ?>
      <li class="padd loop" style="margin-bottom:5px; border-bottom:1px dashed #ccc;">
      <strong><?php echo $this->_var['lang']['promote_price']; ?></strong><font class="shop"><?php echo $this->_var['goods']['promote_price']; ?></font><br />
      <strong><?php echo $this->_var['lang']['residual_time']; ?></strong>
      <font class="f4" id="leftTime"><?php echo $this->_var['lang']['please_waiting']; ?></font><br />
      </li>
      <?php endif; ?>
  
  
       <?php if ($this->_var['goods']['give_integral'] > 0): ?>
       <li class="clearfix">
       <dd >
       
        <strong><?php echo $this->_var['lang']['goods_give_integral']; ?></strong><font class="f4"><?php echo $this->_var['goods']['give_integral']; ?> <?php echo $this->_var['points_name']; ?></font>
        
       </dd>
      </li>
      <?php endif; ?>
      <?php if ($this->_var['goods']['bonus_money']): ?>
      <li class="padd loop" style="margin-bottom:5px; border-bottom:1px dashed #ccc;">
      <strong><?php echo $this->_var['lang']['goods_bonus']; ?></strong><font class="shop"><?php echo $this->_var['goods']['bonus_money']; ?></font><br />
      </li>
      <?php endif; ?>
  
      
       <?php if ($this->_var['cfg']['use_integral']): ?>

        <li class="clearfix">
       <dd>
       <strong><?php echo $this->_var['lang']['goods_integral']; ?></strong><font class="f4"><?php echo $this->_var['goods']['integral']; ?> <?php echo $this->_var['points_name']; ?></font>
       </dd>
      </li>
       <?php endif; ?>
         <?php if ($this->_var['goods']['is_shipping']): ?>
      <li style="height:30px;padding-top:4px;">
      <?php echo $this->_var['lang']['goods_free_shipping']; ?><br />
      </li>
      <?php endif; ?>
            </ul>
         <ul class="bnt_ul">
     
      
      <?php $_from = $this->_var['specification']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('spec_key', 'spec');if (count($_from)):
    foreach ($_from AS $this->_var['spec_key'] => $this->_var['spec']):
?>
      <li class="padd loop">
      <strong><?php echo $this->_var['spec']['name']; ?>：</strong>
        
                    <?php if ($this->_var['spec']['attr_type'] == 1): ?>
                      <?php if ($this->_var['cfg']['goodsattr_style'] == 1): ?>
                        <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
                        <label for="spec_value_<?php echo $this->_var['value']['id']; ?>">
                        <input type="radio" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" id="spec_value_<?php echo $this->_var['value']['id']; ?>" <?php if ($this->_var['key'] == 0): ?>checked<?php endif; ?> onclick="changePrice()" />
                        <?php echo $this->_var['value']['label']; ?> [<?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?> <?php echo $this->_var['value']['format_price']; ?>] </label>
                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                        <input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
                        <?php else: ?>
                        <select name="spec_<?php echo $this->_var['spec_key']; ?>" onchange="changePrice()" >
                          <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
                          <option label="<?php echo $this->_var['value']['label']; ?>" value="<?php echo $this->_var['value']['id']; ?>"><?php echo $this->_var['value']['label']; ?> <?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?><?php if ($this->_var['value']['price'] != 0): ?><?php echo $this->_var['value']['format_price']; ?><?php endif; ?></option>
                          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                        </select>
                        <input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
                      <?php endif; ?>
                    <?php else: ?>
                      <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
                      <label for="spec_value_<?php echo $this->_var['value']['id']; ?>">
                      <input type="checkbox" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" id="spec_value_<?php echo $this->_var['value']['id']; ?>" onclick="changePrice()" />
                      <?php echo $this->_var['value']['label']; ?> [<?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?> <?php echo $this->_var['value']['format_price']; ?>] </label>
                      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                      <input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
                    <?php endif; ?>
      </li>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
      
      
           <li class="clearfix" style="border-bottom:1px solid #CCC;">
       <dd>
       <strong><?php echo $this->_var['lang']['number']; ?>：</strong>
        <input name="number" type="text" id="number" value="1" size="4" onblur="changePrice()" style="border:1px solid #ccc; height:30px; "/>
       </dd>
       </li>
      
      <li class="padd">
      <a href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)"><img src="themes/red_three/images/goumai2.gif" /></a>
     
      </li>
     
      </ul>
      </form>
     </div>
   </div>
   <div class="blank"></div>
   
   
     <div class="box info_message">
 
      <div style="padding:0 0px;">
        <div id="com_b" class="history clearfix">
        <h2 class="h2">商品描述</h2>
        <h2 class="h3">用户评论</h2>
        <?php if ($this->_var['package_goods_list']): ?>
        <h2 class="h2bg" style="color:red;"><?php echo $this->_var['lang']['remark_package']; ?></h2>
        <?php endif; ?>
        </div>
      </div>    
<div class="box_1">
      <div id="com_v" class="  " style="padding:6px;"></div>
      <div id="com_h">
           <blockquote>
            <?php echo $this->_var['goods']['goods_desc']; ?>            
           </blockquote>  
           <blockquote>
<?php echo $this->fetch('library/comments.lbi'); ?>         
           </blockquote>      
           
     

      </div>
     </div>
    </div>
    <script type="text/javascript">
    <!--
    reg("com");
    //-->
    </script>
  <div class="blank"></div>
  

  </div>
  
</div>
<?php echo $this->fetch('library/page_footer.lbi'); ?>
</body>
<script type="text/javascript">
var goods_id = <?php echo $this->_var['goods_id']; ?>;
var goodsattr_style = <?php echo empty($this->_var['cfg']['goodsattr_style']) ? '1' : $this->_var['cfg']['goodsattr_style']; ?>;
var gmt_end_time = <?php echo empty($this->_var['promote_end_time']) ? '0' : $this->_var['promote_end_time']; ?>;
<?php $_from = $this->_var['lang']['goods_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var goodsId = <?php echo $this->_var['goods_id']; ?>;
var now_time = <?php echo $this->_var['now_time']; ?>;


onload = function(){
  changePrice();
  fixpng();
  try {onload_leftTime();}
  catch (e) {}
}

/**
 * 点选可选属性或改变数量时修改商品价格的函数
 */
function changePrice()
{
  var attr = getSelectedAttributes(document.forms['ECS_FORMBUY']);
  var qty = document.forms['ECS_FORMBUY'].elements['number'].value;

  Ajax.call('goods.php', 'act=price&id=' + goodsId + '&attr=' + attr + '&number=' + qty, changePriceResponse, 'GET', 'JSON');
}

/**
 * 接收返回的信息
 */
function changePriceResponse(res)
{
  if (res.err_msg.length > 0)
  {
    alert(res.err_msg);
  }
  else
  {
    document.forms['ECS_FORMBUY'].elements['number'].value = res.qty;

    if (document.getElementById('ECS_GOODS_AMOUNT'))
      document.getElementById('ECS_GOODS_AMOUNT').innerHTML = res.result;
  }
}

</script>
</html>
