<script>
$(function(){
	$(".rs_iglr_ul li:eq(1)").addClass("lf_border");
	$(".rs_iglr_ul li:eq(4)").addClass("lf_border");
	$(".rs_iglr_ul li:eq(7)").addClass("lf_border");
	$(".rs_iglr_ul li:eq(10)").addClass("lf_border");
	$(".rs_iglr_ul li:eq(13)").addClass("lf_border");
})
</script>
<div class="rs_idx_gl">
    <div class="rs_igl_tit rs_jq_gl_<?php echo $this->_var['goods_cat']['id']; ?>">
        <div class="rs_igl_tit_img">
        	<span class="Hanzel_Bold"><?php echo $this->_var['goods_cat']['id']; ?>&nbsp;F</span>
            <span class="floot_name"><?php echo $this->_var['goods_cat']['name']; ?></span>
        </div>
        <a href="category-<?php echo $this->_var['goods_cat']['id']; ?>-b0.html" class="floor_more">更多+</a>
    </div>
    <div class="rs_igl_l">
		<ul class="rs_igll_cate">
				<?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cates_0_65659400_1414027547');$this->_foreach['cate_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cate_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['cates_0_65659400_1414027547']):
        $this->_foreach['cate_foreach']['iteration']++;
?>
				<?php if ($this->_var['cates_0_65659400_1414027547']['id'] == $this->_var['goods_cat']['id']): ?>
					<?php $_from = $this->_var['cates_0_65659400_1414027547']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cate_child2_0_65678900_1414027547');$this->_foreach['cate2_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cate2_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['cate_child2_0_65678900_1414027547']):
        $this->_foreach['cate2_foreach']['iteration']++;
?>
					<?php if ($this->_var['cate_child2_0_65678900_1414027547']['id']): ?>
						<li><a href="<?php echo $this->_var['cate_child2_0_65678900_1414027547']['url']; ?>"><?php echo htmlspecialchars($this->_var['cate_child2_0_65678900_1414027547']['name']); ?></a></li>
						<?php $_from = $this->_var['cate_child2_0_65678900_1414027547']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cate_child3_0_65700100_1414027547');$this->_foreach['cate3_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cate3_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['cate_child3_0_65700100_1414027547']):
        $this->_foreach['cate3_foreach']['iteration']++;
?>
						<?php if ($this->_var['cate_child3_0_65700100_1414027547']['id']): ?>
							<li><a href="<?php echo $this->_var['cate_child3_0_65700100_1414027547']['url']; ?>"><?php echo htmlspecialchars($this->_var['cate_child3_0_65700100_1414027547']['name']); ?></a></li>
						<?php endif; ?>
						<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
					<?php endif; ?>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		 </ul>
         <img src="themes/red_three/images/<?php echo $this->_var['goods_cat']['id']; ?>f.jpg" width="255" height="302">   
	</div>
    <div class="rs_igl_r">
        <div class="rs_iglr_ad">
			<div class="rs_iglr_ad">
			<?php $_from = $this->_var['rs_idx_ads']['idx_step_mid']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('adkey', 'ads_0_65734200_1414027547');$this->_foreach['ads_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['ads_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['adkey'] => $this->_var['ads_0_65734200_1414027547']):
        $this->_foreach['ads_foreach']['iteration']++;
?>
				<?php if ($this->_var['adkey'] == $this->_var['goods_cat']['id']): ?>
					<?php echo $this->_var['ads_0_65734200_1414027547']['0']; ?>
				<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</div>
        </div>
        <ul class="rs_iglr_ul">
        	<?php $_from = $this->_var['cat_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_65758400_1414027547');$this->_foreach['goods_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['goods_0_65758400_1414027547']):
        $this->_foreach['goods_foreach']['iteration']++;
?>
				<li>
					<div class="rs_iglr_img">
						<a href="<?php echo $this->_var['goods_0_65758400_1414027547']['url']; ?>" target="_blank"><img src="<?php echo $this->_var['goods_0_65758400_1414027547']['thumb']; ?>" border="0" alt="<?php echo htmlspecialchars($this->_var['goods_0_65758400_1414027547']['name']); ?>" /></a>
					</div>
					<div class="rs_iglr_n">
						<a href="<?php echo $this->_var['goods_0_65758400_1414027547']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_65758400_1414027547']['name']); ?>" target="_blank"><?php echo htmlspecialchars($this->_var['goods_0_65758400_1414027547']['name']); ?></a>
					</div>
					<div class="rs_iglr_p">
                    <p style="float:left;">
						<span class="rs_pp">
							<?php if ($this->_var['goods_0_65758400_1414027547']['promote_price'] != ""): ?>
							<?php echo $this->_var['goods_0_65758400_1414027547']['promote_price']; ?>
							<?php else: ?>
							<?php echo $this->_var['goods_0_65758400_1414027547']['shop_price']; ?>
							<?php endif; ?>
						</span><br>
						<del><?php echo $this->_var['goods_0_65758400_1414027547']['market_price']; ?></del>
					</p>
                    	
					</div>
				</li>
			 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>
    <div class="cd_rqph">
    	<div  style="padding-bottom:3px;">
    	<?php $_from = $this->_var['rs_idx_ads']['top_1']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('adkey', 'ads_0_65807300_1414027547');$this->_foreach['ads_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['ads_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['adkey'] => $this->_var['ads_0_65807300_1414027547']):
        $this->_foreach['ads_foreach']['iteration']++;
?>
				<?php if ($this->_var['adkey'] == $this->_var['goods_cat']['id']): ?>
					<?php echo $this->_var['ads_0_65807300_1414027547']['0']; ?>
				<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
        <div style="padding-top:4px; padding-bottom:4px; border-bottom:1px dashed #ccc; border-top:1px dashed #ccc;">
        <?php $_from = $this->_var['rs_idx_ads']['top_2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('adkey', 'ads_0_65834300_1414027547');$this->_foreach['ads_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['ads_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['adkey'] => $this->_var['ads_0_65834300_1414027547']):
        $this->_foreach['ads_foreach']['iteration']++;
?>
				<?php if ($this->_var['adkey'] == $this->_var['goods_cat']['id']): ?>
					<?php echo $this->_var['ads_0_65834300_1414027547']['0']; ?>
				<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
        <div style="padding-top:3px;">
        <?php $_from = $this->_var['rs_idx_ads']['top_3']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('adkey', 'ads_0_65864000_1414027547');$this->_foreach['ads_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['ads_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['adkey'] => $this->_var['ads_0_65864000_1414027547']):
        $this->_foreach['ads_foreach']['iteration']++;
?>
				<?php if ($this->_var['adkey'] == $this->_var['goods_cat']['id']): ?>
					<?php echo $this->_var['ads_0_65864000_1414027547']['0']; ?>
				<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
    </div>
</div>
<div class="blank"></div>
