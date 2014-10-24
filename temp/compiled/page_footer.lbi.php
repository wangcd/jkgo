<script>
$(function(){
	$(".bg_url:eq(1)").css("background-position","-175px 0px");
	$(".bg_url:eq(2)").css("background-position","-350px 0px");
	$(".bg_url:eq(3)").css("background-position","-525px 0px");
	$(".bg_url:eq(4)").css("background-position","-700px 0px");
	
	$(".bg_url").hover(
		function(){
			var num=$(this).index();
			var sum=num*175;
			$(this).css("background-position","-"+sum+"px 38px");
		},
		function(){
			var num=$(this).index();
			var sum=num*175;
			$(this).css("background-position","-"+sum+"px 0px");
		}
	)
})
</script>
<?php if ($this->_var['helps']): ?>
<div id="footerServiceLinkId">
  <div class="ft_service_link clearfix">
    <div class="ft_help_list clearfix" id="bottomHelpLinkId">
		<div class="foot_left">
            <p style="width: 900px;height:35px;">
                <span class="bg_url"></span>
                <span class="bg_url"></span>
                <span class="bg_url"></span>
                <span class="bg_url"></span>
                <span class="bg_url"></span>
            </p> 
          <?php $_from = $this->_var['helps']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'help_cat');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['key'] => $this->_var['help_cat']):
        $this->_foreach['foo']['iteration']++;
?>
          <dl class="bg_url_dl">
            <dt><a href='<?php echo $this->_var['help_cat']['cat_id']; ?>' title="<?php echo $this->_var['help_cat']['cat_name']; ?>" class="on_yellow"><?php echo $this->_var['help_cat']['cat_name']; ?></a></dt>
            <?php $_from = $this->_var['help_cat']['article']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
            <dd><a href="<?php echo $this->_var['item']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['item']['title']); ?>" class="on_red"><?php echo $this->_var['item']['short_title']; ?></a></dd>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          </dl>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
     	</div>
        <div class="foot_right">
            <span class="cd_phone">
             <span style="color:#ba0c0d;">客服热线 HOTLINE</span><br><span style="font-size:28px"><?php echo $this->_var['service_phone']; ?></span>
             </span><br>	
             <span class="cd_qq">
                <span style="color:#fea500;">客服QQ ONLINE</span><br><span><?php echo $this->_var['im']; ?></span>
             </span><br>
             <span class="cd_address">
                <span style="color:#154edd;">公司地址 ADDRESS</span><br><span>河南省 三门峡市</span>
             </span><br>        
        </div>
    </div>
  </div>
</div>
<?php endif; ?>

<div id="footer">
  
  <p class="ft_footer_link foot_red"> 
    <?php if ($this->_var['navigator_list']): ?> 
    <?php $_from = $this->_var['navigator_list']['bottom']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'nav_0_64729700_1414139044');$this->_foreach['nav_bottom_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['nav_bottom_list']['total'] > 0):
    foreach ($_from AS $this->_var['nav_0_64729700_1414139044']):
        $this->_foreach['nav_bottom_list']['iteration']++;
?> 
    <a href="<?php echo $this->_var['nav_0_64729700_1414139044']['url']; ?>" 
    <?php if ($this->_var['nav_0_64729700_1414139044']['opennew'] == 1): ?> 
    target="_blank" 
    <?php endif; ?> 
    ><?php echo $this->_var['nav_0_64729700_1414139044']['name']; ?></a> 
    <?php if (! ($this->_foreach['nav_bottom_list']['iteration'] == $this->_foreach['nav_bottom_list']['total'])): ?> 
    | 
    <?php endif; ?> 
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
    <?php endif; ?> 
  </p>
   
  <?php if ($this->_var['icp_number']): ?>
  <p class="foot_yellow"><?php echo $this->_var['lang']['icp_number']; ?>:<a href="http://www.miibeian.gov.cn/" target="_blank"><?php echo $this->_var['icp_number']; ?></a></p>
  <?php endif; ?>
  <p class="foot_blue">技术支持万谦科技</p>
  
<!--  <p><?php echo $this->_var['copyright']; ?></p>    <p><?php echo $this->_var['shop_address']; ?> <?php echo $this->_var['shop_postcode']; ?></p>-->
</div>
<?php if ($this->_var['img_links'] || $this->_var['txt_links']): ?>
<div class="ft_pic_link" id="footerbanner2LazyLoad"> 
<?php $_from = $this->_var['img_links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'link');if (count($_from)):
    foreach ($_from AS $this->_var['link']):
?>
    <a href="<?php echo $this->_var['link']['url']; ?>"><img src="<?php echo $this->_var['link']['logo']; ?>"></a>| 
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>    
</div>
<?php endif; ?>





<div id="rk_kfbox">
	<div id="rk_kfbox_top">
		<img src="themes/red_three/images/rk_kfbox_top.gif">
		<div id="rk_kfbox_close">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
	</div>
	<div id="rk_kfbox_main">
		<?php $_from = $this->_var['qq']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?>
		<?php if ($this->_var['im']): ?>
		<div class="rk_kfbox_li">
			<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo $this->_var['im']; ?>&amp;Menu=yes">
			<img border="0" src="themes/red_three/images/rk_kfbox_qq.gif" title="联系我们" align="absmiddle">
			联系我们
			</a>
		</div>
		<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</div>
	<div>
		<img src="themes/red_three/images/rk_kfbox_bottom.gif">
	</div>
</div>







<!--
<link href="themes/red_three/qq/images/qq.css" rel="stylesheet" type="text/css" />
<div class="QQbox" id="divQQbox" style="width: 170px; ">
  <div class="Qlist" id="divOnline" onmouseout="hideMsgBox(event);" style="display: none; " onmouseover="OnlineOver();">
    <div class="t"></div>
    <div class="infobox">我们营业的时间<br>
      9:00-18:00</div>
    <div class="con">
      <ul>
        
        <?php $_from = $this->_var['qq']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?> 
        <?php if ($this->_var['im']): ?>
        <li><a href="http://wpa.qq.com/msgrd?V=1&amp;Uin=<?php echo $this->_var['im']; ?>&amp;Site=<?php echo $this->_var['shop_name']; ?>&amp;Menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=1:<?php echo $this->_var['im']; ?>:4" height="16" border="0" alt="QQ" /> <?php echo $this->_var['im']; ?></a> </li>
        <?php endif; ?> 
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
        <?php $_from = $this->_var['ww']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?> 
        <?php if ($this->_var['im']): ?>
        <li><a href="http://amos1.taobao.com/msg.ww?v=2&uid=<?php echo urlencode($this->_var['im']); ?>&s=2" target="_blank"><img src="http://amos1.taobao.com/online.ww?v=2&uid=<?php echo urlencode($this->_var['im']); ?>&s=2" width="16" height="16" border="0" alt="淘宝旺旺" /><?php echo $this->_var['im']; ?></a></li>
        <?php endif; ?> 
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
        <?php $_from = $this->_var['ym']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?> 
        <?php if ($this->_var['im']): ?>
        <li><a href="http://edit.yahoo.com/config/send_webmesg?.target=<?php echo $this->_var['im']; ?>n&.src=pg" target="_blank"><img src="themes/red_three/images/yahoo.gif" width="18" height="17" border="0" alt="Yahoo Messenger" /> <?php echo $this->_var['im']; ?></a></li>
        <?php endif; ?> 
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
        <?php $_from = $this->_var['msn']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?> 
        <?php if ($this->_var['im']): ?>
        <li><img src="themes/red_three/images/msn.gif" width="18" height="17" border="0" alt="MSN" /> <a href="msnim:chat?contact=<?php echo $this->_var['im']; ?>"><?php echo $this->_var['im']; ?></a></li>
        <?php endif; ?> 
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
        <?php $_from = $this->_var['skype']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?> 
        <?php if ($this->_var['im']): ?>
        <li><img src="http://mystatus.skype.com/smallclassic/<?php echo urlencode($this->_var['im']); ?>" alt="Skype" /><a href="skype:<?php echo urlencode($this->_var['im']); ?>?call"><?php echo $this->_var['im']; ?></a></li>
        <?php endif; ?> 
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
        
        <?php if ($this->_var['service_phone']): ?>
        <li> 服务热线: <?php echo $this->_var['service_phone']; ?></li>
        <?php endif; ?>
      </ul>
    </div>
    <div class="b"></div>
  </div>
  <div id="divMenu" onmouseover="OnlineOver();" style="display: block; "><img src="themes/red_three/qq/images/qq_1.gif" class="press" alt="在线咨询"></div>
</div>
-->
<script type="text/javascript">
//<![CDATA[
var tips; var theTop = 120/*这是默认高度,越大越往下*/; var old = theTop;
function initFloatTips() {
tips = document.getElementById('divQQbox');
moveTips();
};
function moveTips() {
var tt=50;
if (window.innerHeight) {
pos = window.pageYOffset
}
else if (document.documentElement && document.documentElement.scrollTop) {
pos = document.documentElement.scrollTop
}
else if (document.body) {
pos = document.body.scrollTop;
}
pos=pos-tips.offsetTop+theTop;
pos=tips.offsetTop+pos/10;
if (pos < theTop) pos = theTop;
if (pos != old) {
tips.style.top = pos+"px";
tt=10;
//alert(tips.style.top);
}
old = pos;
setTimeout(moveTips,tt);
}
//!]]>
initFloatTips();
function OnlineOver(){
document.getElementById("divMenu").style.display = "none";
document.getElementById("divOnline").style.display = "block";
document.getElementById("divQQbox").style.width = "170px";
}
function OnlineOut(){
document.getElementById("divMenu").style.display = "block";
document.getElementById("divOnline").style.display = "none";
}
if(typeof(HTMLElement)!="undefined")    //给firefox定义contains()方法，ie下不起作用
{   
      HTMLElement.prototype.contains=function(obj)   
      {   
          while(obj!=null&&typeof(obj.tagName)!="undefind"){ //通过循环对比来判断是不是obj的父元素
   　　　　if(obj==this) return true;   
   　　　　obj=obj.parentNode;
   　　}   
          return false;   
      };   
}  
function hideMsgBox(theEvent){ //theEvent用来传入事件，Firefox的方式
　 if (theEvent){
　 var browser=navigator.userAgent; //取得浏览器属性
　 if (browser.indexOf("Firefox")>0){ //如果是Firefox
　　 if (document.getElementById('divOnline').contains(theEvent.relatedTarget)) { //如果是子元素
　　 return; //结束函式
} 
} 
if (browser.indexOf("MSIE")>0){ //如果是IE
if (document.getElementById('divOnline').contains(event.toElement)) { //如果是子元素
return; //结束函式
}
}
}
/*要执行的操作*/
document.getElementById("divMenu").style.display = "block";
document.getElementById("divOnline").style.display = "none";
}
</script> 