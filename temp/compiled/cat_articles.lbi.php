	<div class="rs_bnr_box">
		<div class="rs_bnr_boxtit">
			<h2><a href="<?php echo $this->_var['articles_cat']['url']; ?>"><?php echo htmlspecialchars($this->_var['articles_cat']['name']); ?></a></h2>
			<div class="cd_more"><a href="<?php echo $this->_var['articles_cat']['url']; ?>">更多&nbsp;&gt;&gt;</a></div>
		</div>
			<ul class="rs_bnr_newslist">
				<?php $_from = $this->_var['articles']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'article_item');if (count($_from)):
    foreach ($_from AS $this->_var['article_item']):
?>
				<li><a href="<?php echo $this->_var['article_item']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['article_item']['title']); ?>"><?php echo $this->_var['article_item']['short_title']; ?></a></li>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
	</div>