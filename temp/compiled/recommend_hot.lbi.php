<?php if ($this->_var['hot_goods']): ?>
<div class="show_best_area" class="clearfix cd_hot_area">
  <?php $_from = $this->_var['hot_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_48428900_1414055864');if (count($_from)):
    foreach ($_from AS $this->_var['goods_0_48428900_1414055864']):
?>
  <div class="goodsItem">   
           <a href="<?php echo $this->_var['goods_0_48428900_1414055864']['url']; ?>" class="goodsimg"><img src="<?php echo $this->_var['goods_0_48428900_1414055864']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods_0_48428900_1414055864']['name']); ?>" height="170px" /></a>
           <p><a href="<?php echo $this->_var['goods_0_48428900_1414055864']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_48428900_1414055864']['name']); ?>"><?php echo htmlspecialchars($this->_var['goods_0_48428900_1414055864']['name']); ?></a></p>
		   <p style="float:left;  width:220px;">	      
               <font class="r_b">
              <?php if ($this->_var['goods_0_48428900_1414055864']['promote_price'] != ""): ?>
              <?php echo $this->_var['goods_0_48428900_1414055864']['promote_price']; ?>
              <?php else: ?>
              <?php echo $this->_var['goods_0_48428900_1414055864']['shop_price']; ?>
              <?php endif; ?>
               </font> 
               <font class="market"><?php echo $this->_var['goods_0_48428900_1414055864']['market_price']; ?></font> 
               <a href="<?php echo $this->_var['goods_0_48428900_1414055864']['url']; ?>"><img src="themes/red_three/images/ljq.jpg" style="float:right;"></a>
           </p>  
  </div>
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>
<?php endif; ?>
