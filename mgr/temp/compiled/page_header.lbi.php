<link href="themes/red_three/qq/images/qq.css" rel="stylesheet" type="text/css" />
<script>

	 function aaa(){alert('111');}
</script>



<div id="global_top_bar" class=" hd_global_top_bar ">
  <div class="wrap clearfix">
    <div class=" hd_topbar_left clearfix "  id="ECS_MEMBERZONE">
    	<?php 
$k = array (
  'name' => 'member_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?>
    	<?php if ($this->_var['service_phone']): ?>
		<span class="rs_head_phone"> 服务热线: <?php echo $this->_var['service_phone']; ?></span>
		<?php endif; ?>
    </div>
    <div class="hd_top_manu clearfix">
      <ul class="clearfix">
        <li class="hd_my_order"> <a href="user.php?act=order_list" target="_blank"><s></s>我的订单</a> </li>
        <li class="cd_my_order"> <a href="" onClick="aaa()" target="_blank"><s></s>便民服务</a> 
 			<ul class="cd_now_order">
            	<li><a href="">移动充值</a></li>
                <li><a href="">联通充值</a></li>
                <li><a href="">火车票预订</a></li>
                <li><a href="">飞机票预定</a></li>
                <li><a href="">天气预报</a></li>
            </ul>       
        </li>
        <?php if ($this->_var['navigator_list']['top']): ?> 
        <?php $_from = $this->_var['navigator_list']['top']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'nav');$this->_foreach['nav_top_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['nav_top_list']['total'] > 0):
    foreach ($_from AS $this->_var['nav']):
        $this->_foreach['nav_top_list']['iteration']++;
?> 
        <li class="hd_menu_tit" 
               
        <?php if (($this->_foreach['nav_top_list']['iteration'] == $this->_foreach['nav_top_list']['total'])): ?> 
        style="background:none;" 
        <?php endif; ?> 
        > <a href="<?php echo $this->_var['nav']['url']; ?>" 
         
        <?php if ($this->_var['nav']['opennew'] == 1): ?> 
        target="_blank" 
        <?php endif; ?> 
        ><?php echo $this->_var['nav']['name']; ?></a>
        </li>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
        <?php endif; ?>
      </ul>
      </div>
  </div>
</div>
 


<div id="logo_box" class="wrap clearfix">
  <div id="logo_areaID" class="hd_logo_area fl clearfix"> <a href="index.php" class="fl"> <img src="themes/red_three/images/logo.jpg"> </a> </div>
  <script type="text/javascript">
    function checkSearchForm()
    {
        if(document.getElementById('keyword').value)
        {
            return true;
        }
        else
        {
            alert("<?php echo $this->_var['lang']['no_keywords']; ?>");
            return false;
        }
    }

    </script>
  <div class="hd_head_search">
    <div class="hd_search_form clearfix">
      <div class="hd_search_wrap clearfix">
        <form name="searchForm" method="get" action="search.php" onSubmit="return checkSearchForm()" >
          <input type="text" maxlength="100" style="color:#333333;" name="keywords" id="keyword" class="hd_input_test"  value="<?php echo htmlspecialchars($this->_var['search_keywords']); ?>" >
          
          <input class="hd_search_btn" type="submit" style="width:98px" value="搜 索" vspace="111">
          </input>
        </form>
      </div>
    </div>
    <p id="hotKeywordsShow" class="hd_hot_search"> <?php if ($this->_var['searchkeywords']): ?> <span><?php echo $this->_var['lang']['hot_search']; ?> ：</span> <?php $_from = $this->_var['searchkeywords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'val');if (count($_from)):
    foreach ($_from AS $this->_var['val']):
?> <a href="search.php?keywords=<?php echo urlencode($this->_var['val']); ?>"><?php echo $this->_var['val']; ?></a> <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
      <?php endif; ?> </p>
  </div>
  
  <span id="ECS_CARTINFO"><?php 
$k = array (
  'name' => 'cart_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></span>
</div>

<div class="menu_box clearfix">
  <div class="block" style="position:relative;">
    <div class="cd_menu">
      <a href="index.php"<?php if ($this->_var['navigator_list']['config']['index'] == 1): ?> class="cur"<?php endif; ?>><?php echo $this->_var['lang']['home']; ?><span></span></a> 
      <?php $_from = $this->_var['navigator_list']['middle']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'nav');$this->_foreach['nav_middle_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['nav_middle_list']['total'] > 0):
    foreach ($_from AS $this->_var['nav']):
        $this->_foreach['nav_middle_list']['iteration']++;
?> 
      <a href="<?php echo $this->_var['nav']['url']; ?>" <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?> <?php if ($this->_var['nav']['active'] == 1): ?> class="cur"<?php endif; ?>> <?php echo $this->_var['nav']['name']; ?> <span></span> </a> 
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </div>
  </div>
</div>
