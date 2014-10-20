<?php if ($this->_var['promotion_goods']): ?>
<div class="rs_pbox">
	<div class="rs_pbox_tit">
    	<span style="font-size:22px;">限时</span>
        <span style="font-size:22px; color:#b22825;">抢购</span>
        <img src="themes/red_three/images/tjxsqg.jpg">
        <span style="float:right;"><a href="search-promotion.html" style="color:#cc0001;">更多优惠</a><img src="themes/red_three/images/gdyh.jpg"></span>
    </div>
	<ul class="rs_pbox_ul">
		<?php $_from = $this->_var['promotion_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_28770400_1413785842');$this->_foreach['promotion_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['promotion_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['goods_0_28770400_1413785842']):
        $this->_foreach['promotion_foreach']['iteration']++;
?>
		<?php if (! ($this->_foreach['promotion_foreach']['iteration'] <= 1)): ?>
		<li>
			<div class="rs_pbox_n">
				<span class="rs_jq_timer"><?php echo $this->_var['goods_0_28770400_1413785842']['end_date_str']; ?></span>
			</div>    
	        <div class="cd_rp_con">      
                <div class="rs_gl_img">
                    <a href="<?php echo $this->_var['goods_0_28770400_1413785842']['url']; ?>" target="_blank"><img src="<?php echo $this->_var['goods_0_28770400_1413785842']['thumb']; ?>" border="0" alt="<?php echo htmlspecialchars($this->_var['goods_0_28770400_1413785842']['name']); ?>" /></a>
                </div>
    <p class="f1"><a href="<?php echo $this->_var['goods_0_28770400_1413785842']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_28770400_1413785842']['name']); ?>"><?php echo htmlspecialchars($this->_var['goods_0_28770400_1413785842']['name']); ?></a></p>
               <p style="float:left; ">	      
                   <font class="f1 big_red">
                  <?php if ($this->_var['goods_0_28770400_1413785842']['promote_price'] != ""): ?>
                  <?php echo $this->_var['goods_0_28770400_1413785842']['promote_price']; ?>
                  <?php else: ?>
                  <?php echo $this->_var['goods_0_28770400_1413785842']['shop_price']; ?>
                  <?php endif; ?>
                   </font> <br/>  
                   <font class="market"><?php echo $this->_var['goods_0_28770400_1413785842']['market_price']; ?></font> 
               </p>
               <a href="" style="float:right"><img src="themes/red_three/images/ljqg.jpg" width="80" height="30"></a>  
          	</div>  
		</li>
		<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</ul>
</div>
<div class="blank"></div>
<?php endif; ?>
