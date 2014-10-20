<?php if ($this->_var['hot_goods']): ?>
<?php if ($this->_var['cat_rec_sign'] != 1): ?>
<div class="show_best_area" class="clearfix cd_hot_area">
  <?php endif; ?>
  <?php $_from = $this->_var['hot_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_98236200_1413794225');if (count($_from)):
    foreach ($_from AS $this->_var['goods_0_98236200_1413794225']):
?>
  <div class="goodsItem">   
           <a href="<?php echo $this->_var['goods_0_98236200_1413794225']['url']; ?>" class="goodsimg">
           <img src="<?php echo $this->_var['goods_0_98236200_1413794225']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods_0_98236200_1413794225']['name']); ?>" />
           </a><br />
           <p class="f1"><a href="<?php echo $this->_var['goods_0_98236200_1413794225']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_98236200_1413794225']['name']); ?>"><?php echo htmlspecialchars($this->_var['goods_0_98236200_1413794225']['name']); ?></a></p>
		   <p style="float:left; ">	      
               <font class="f1 big_red">
              <?php if ($this->_var['goods_0_98236200_1413794225']['promote_price'] != ""): ?>
              <?php echo $this->_var['goods_0_98236200_1413794225']['promote_price']; ?>
              <?php else: ?>
              <?php echo $this->_var['goods_0_98236200_1413794225']['shop_price']; ?>
              <?php endif; ?>
               </font> <br/>  
               <font class="market"><?php echo $this->_var['goods_0_98236200_1413794225']['market_price']; ?></font> 
           </p>
           <a href="" style="float:right"><img src="themes/red_three/images/qgm.png" width="80" height="30"></a>   
  </div>
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  <?php if ($this->_var['cat_rec_sign'] != 1): ?>
</div>
<div class="blank"></div>
  <?php endif; ?>
<?php endif; ?>
