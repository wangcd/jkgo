<?php if ($this->_var['group_buy_goods']): ?>
<div class="show_best_area" class="clearfix cd_hot_area">
  <?php $_from = $this->_var['group_buy_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_35760000_1414139046');if (count($_from)):
    foreach ($_from AS $this->_var['goods_0_35760000_1414139046']):
?>
  <div class="goodsItem">   
           <a href="<?php echo $this->_var['goods_0_35760000_1414139046']['url']; ?>" class="goodsimg"><img src="<?php echo $this->_var['goods_0_35760000_1414139046']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods_0_35760000_1414139046']['name']); ?>" height="170px" /></a>
           <p><a href="<?php echo $this->_var['goods_0_35760000_1414139046']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_35760000_1414139046']['name']); ?>"><?php echo htmlspecialchars($this->_var['goods_0_35760000_1414139046']['short_style_name']); ?></a></p>
		   <p style="float:left; width:220px;">	      
               <font class="r_b">
              <?php echo $this->_var['goods_0_35760000_1414139046']['last_price']; ?>
               </font> 
               <font class="market"><?php echo $this->_var['goods_0_35760000_1414139046']['market_price']; ?></font> 
               <a href="<?php echo $this->_var['goods_0_35760000_1414139046']['url']; ?>"><img src="themes/red_three/images/ljq.jpg" style="float:right;"></a>
           </p>  
  </div>
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>

<?php endif; ?>
