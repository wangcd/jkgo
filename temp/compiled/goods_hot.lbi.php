<?php if ($this->_var['hot_goods']): ?>
<div class="cd_rxcpph">
    	<p class="cd_category_rqph">人气排行<a href="search.php" style="float:right; color:#09C">更多>></a></p>
        <ul>
            <?php $_from = $this->_var['hot_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['goods']):
?>
            <?php if ($this->_var['key'] != 0): ?>
                    <li>
                    	<p style="width:200px; overflow:hidden;"><a href="<?php echo $this->_var['goods']['url']; ?>" style=" color: #09C"><?php echo $this->_var['key']; ?>.<?php echo htmlspecialchars($this->_var['goods']['name']); ?></a><br></p>
                    	<a href="<?php echo $this->_var['goods']['url']; ?>" class=""><img src="<?php echo $this->_var['goods']['thumb']; ?>" width="60" style="float:left;"></a>
                        <p style="float:right;">
                            <span style="color:#CCC; font-size:14px; line-height:40px;">售价：
                                <?php if ($this->_var['goods']['promote_price'] != ""): ?>
                                <?php echo $this->_var['goods']['promote_price']; ?>
                                <?php else: ?>
                                <?php echo $this->_var['goods']['shop_price']; ?>
                                <?php endif; ?>
                            </span> <br>
							<img src="themes/red_three/images/goumai2.gif" width="80" height="30">                       
                        </p>
                    </li>
            <?php endif; ?>        
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>
<?php endif; ?>    