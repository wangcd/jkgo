
<?php if ($this->_var['user_info']): ?>

你好，<a href="user.php">[<?php echo $this->_var['user_info']['username']; ?>]</a> &nbsp;&nbsp;
 <a href="user.php?act=logout">[<?php echo $this->_var['lang']['user_logout']; ?>]</a>
 
  <?php else: ?> 
  
<?php echo $this->_var['lang']['welcome']; ?>&nbsp;&nbsp;<a href="user.php">[登录]</a>&nbsp;&nbsp;<a href="user.php?act=register">[免费注册]</a>
 
 
 <?php endif; ?>
