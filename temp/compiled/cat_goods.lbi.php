
<div class="rs_idx_gl">
    <div class="rs_igl_tit rs_jq_gl_<?php echo $this->_var['goods_cat']['id']; ?>">
        <div class="rs_igl_tit_img"><?php echo $this->_var['goods_cat']['id']; ?>F<?php echo $this->_var['goods_cat']['name']; ?><span></span></div>
        <div class="rs_igl_tit_blank">
				<?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates');$this->_foreach['cate_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cate_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['cates']):
        $this->_foreach['cate_foreach']['iteration']++;
?>
				<?php if ($this->_var['cates']['id'] == $this->_var['goods_cat']['id']): ?>
					<?php $_from = $this->_var['cates']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'cate_child2');$this->_foreach['cate2_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cate2_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['key'] => $this->_var['cate_child2']):
        $this->_foreach['cate2_foreach']['iteration']++;
?>
						<?php if ($this->_foreach['cate2_foreach']['iteration'] < 5): ?>
						<a href="<?php echo $this->_var['cate_child2']['url']; ?>"><?php echo htmlspecialchars($this->_var['cate_child2']['name']); ?></a>
						<?php endif; ?>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>        
        <a href="category-<?php echo $this->_var['goods_cat']['id']; ?>-b0.html" style="float:right; padding-left:30px;">更多>></a></div>
    </div>
	<div class="rs_ig_l">
		<div class="rs_igl_l" style="background:url(themes/red_three/images/<?php echo $this->_var['goods_cat']['id']; ?>f.jpg)">
			<ul class="rs_igll_cate">
				<?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates');$this->_foreach['cate_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cate_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['cates']):
        $this->_foreach['cate_foreach']['iteration']++;
?>
				<?php if ($this->_var['cates']['id'] == $this->_var['goods_cat']['id']): ?>
					<?php $_from = $this->_var['cates']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cate_child2');$this->_foreach['cate2_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cate2_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['cate_child2']):
        $this->_foreach['cate2_foreach']['iteration']++;
?>
					<?php if ($this->_var['cate_child2']['id']): ?>
						<li><a href="<?php echo $this->_var['cate_child2']['url']; ?>"><?php echo htmlspecialchars($this->_var['cate_child2']['name']); ?></a></li>
						<?php $_from = $this->_var['cate_child2']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cate_child3');$this->_foreach['cate3_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cate3_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['cate_child3']):
        $this->_foreach['cate3_foreach']['iteration']++;
?>
						<?php if ($this->_var['cate_child3']['id']): ?>
							<li><a href="<?php echo $this->_var['cate_child3']['url']; ?>"><?php echo htmlspecialchars($this->_var['cate_child3']['name']); ?></a></li>
						<?php endif; ?>
						<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
					<?php endif; ?>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
		</div>
		<div class="rs_igl_r">
			<div class="rs_iglr_ad">
			<?php $_from = $this->_var['rs_idx_ads']['idx_step_mid']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('adkey', 'ads');$this->_foreach['ads_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['ads_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['adkey'] => $this->_var['ads']):
        $this->_foreach['ads_foreach']['iteration']++;
?>
				<?php if ($this->_var['adkey'] == $this->_var['goods_cat']['id']): ?>
					<?php echo $this->_var['ads']['0']; ?>
				<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</div>
			<ul class="rs_iglr_ul">
				<?php $_from = $this->_var['cat_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_98724800_1413794225');$this->_foreach['goods_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['goods_0_98724800_1413794225']):
        $this->_foreach['goods_foreach']['iteration']++;
?>
				<li>
					<div class="rs_iglr_img">
						<a href="<?php echo $this->_var['goods_0_98724800_1413794225']['url']; ?>" target="_blank"><img src="<?php echo $this->_var['goods_0_98724800_1413794225']['thumb']; ?>" border="0" alt="<?php echo htmlspecialchars($this->_var['goods_0_98724800_1413794225']['name']); ?>" /></a>
					</div>
					<div class="rs_iglr_n">
						<a href="<?php echo $this->_var['goods_0_98724800_1413794225']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_98724800_1413794225']['name']); ?>" target="_blank"><?php echo htmlspecialchars($this->_var['goods_0_98724800_1413794225']['name']); ?></a>
					</div>
					<div class="rs_iglr_p">
                    <p style="float:left;">
						<span class="rs_pp">
							<?php if ($this->_var['goods_0_98724800_1413794225']['promote_price'] != ""): ?>
							<?php echo $this->_var['goods_0_98724800_1413794225']['promote_price']; ?>
							<?php else: ?>
							<?php echo $this->_var['goods_0_98724800_1413794225']['shop_price']; ?>
							<?php endif; ?>
						</span><br>
						<del><?php echo $this->_var['goods_0_98724800_1413794225']['market_price']; ?></del>
					</p>
                    	<a href="<?php echo $this->_var['goods_0_98724800_1413794225']['url']; ?>" style="float:right;" title="<?php echo htmlspecialchars($this->_var['goods_0_98724800_1413794225']['name']); ?>" target="_blank"><img src="themes/red_three/images/gwc.jpg" /></a>
					</div>
				</li>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
		</div>
	</div>
    <div class="cd_rqph">
    	<p class="cd_rqph_tit">人气排行</>
        <ul>
            <?php $_from = $this->_var['cat_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'goods_0_98782100_1413794225');$this->_foreach['goods_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['key'] => $this->_var['goods_0_98782100_1413794225']):
        $this->_foreach['goods_foreach']['iteration']++;
?>
                <?php if ($this->_var['key'] == 5 || $this->_var['key'] == 6 || $this->_var['key'] == 7 || $this->_var['key'] == 8 || $this->_var['key'] == 9): ?>
                    <li>
                    	<img src="<?php echo $this->_var['goods_0_98782100_1413794225']['thumb']; ?>" width="60" style="float:left;">
                        <p style="float:right;">
                            <a class="cd_title_rq" href="<?php echo $this->_var['goods_0_98782100_1413794225']['url']; ?>"><?php echo htmlspecialchars($this->_var['goods_0_98782100_1413794225']['name']); ?></a><br>
                            售价：<span class="sml_red">
                                <?php if ($this->_var['goods_0_98782100_1413794225']['promote_price'] != ""): ?>
                                <?php echo $this->_var['goods_0_98782100_1413794225']['promote_price']; ?>
                                <?php else: ?>
                                <?php echo $this->_var['goods_0_98782100_1413794225']['shop_price']; ?>
                                <?php endif; ?>
                            </span>                        
                        </p>
                    </li>
                <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>
</div>
<div class="blank"></div>
