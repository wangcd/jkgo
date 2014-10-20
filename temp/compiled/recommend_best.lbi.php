<?php if ($this->_var['best_goods']): ?>
<?php if ($this->_var['cat_rec_sign'] != 1): ?>
<div class="show_best_area" class="clearfix">
  <?php endif; ?>
  <?php $_from = $this->_var['best_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_11315900_1410578496');if (count($_from)):
    foreach ($_from AS $this->_var['goods_0_11315900_1410578496']):
?>
  <div class="goodsItem">   
           <a href="<?php echo $this->_var['goods_0_11315900_1410578496']['url']; ?>" class="goodsimg">
           <img src="<?php echo $this->_var['goods_0_11315900_1410578496']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods_0_11315900_1410578496']['name']); ?>" />
           </a><br />
           <p class="f1"><a href="<?php echo $this->_var['goods_0_11315900_1410578496']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_11315900_1410578496']['name']); ?>"><?php echo $this->_var['goods_0_11315900_1410578496']['short_style_name']; ?></a></p>
		   <p style="float:left; ">	      
               <font class="f1 big_red">
               <?php if ($this->_var['goods_0_11315900_1410578496']['promote_price'] != ""): ?>
              <?php echo $this->_var['goods_0_11315900_1410578496']['promote_price']; ?>
              <?php else: ?>
              <?php echo $this->_var['goods_0_11315900_1410578496']['shop_price']; ?>
              <?php endif; ?>
               </font> <br/>  
               <font class="market"><?php echo $this->_var['goods_0_11315900_1410578496']['market_price']; ?></font> 
           </p>
           <a href="" style="float:right"><img src="themes/red_three/images/qgm.png" width="80" height="30"></a>   
  </div>
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  <?php if ($this->_var['cat_rec_sign'] != 1): ?>
</div>
  <?php endif; ?>
<?php endif; ?>
