<?php if ($this->_var['promotion_goods']): ?>
<div class="show_best_area" class="clearfix cd_hot_area">
<?php $_from = $this->_var['promotion_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['promotion_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['promotion_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['promotion_foreach']['iteration']++;
?>
  <div class="goodsItem">   
           <a href="<?php echo $this->_var['goods']['url']; ?>" class="goodsimg"><img src="<?php echo $this->_var['goods']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>" height="170px" /></a>
           <p><a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>"><?php echo htmlspecialchars($this->_var['goods']['name']); ?></a></p>
		   <p style="float:left;  width:220px;">	      
               <font class="r_b">
              <?php if ($this->_var['goods']['promote_price'] != ""): ?>
              <?php echo $this->_var['goods']['promote_price']; ?>
              <?php else: ?>
              <?php echo $this->_var['goods']['shop_price']; ?>
              <?php endif; ?>
               </font> 
               <font class="market"><?php echo $this->_var['goods']['market_price']; ?></font> 
               <a href="<?php echo $this->_var['goods']['url']; ?>"><img src="themes/red_three/images/ljq.jpg" style="float:right;"></a>
           </p>  
  </div>
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>
<?php endif; ?>
