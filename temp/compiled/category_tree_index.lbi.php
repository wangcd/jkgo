<script type="text/javascript">
          //初始化主菜单
            function sw_nav2(obj,tag)
            {		
            var DisSub2 = $("#DisSub2_"+obj);

			var HandleLI2= $("#HandleLI2_"+obj);
			var dts= $("#dt_"+obj);
                if(tag==1)
                {	/*显示子菜单*/
                    DisSub2.show();
					/*改变当前一级菜单所在区域背景*/
					HandleLI2.addClass("rs_cate_li_on_"+obj);
					HandleLI2.parent().css("background","#f4f4f4");
					/*改变下一个一级菜单所在区域背景*/
					HandleLI2.parent().next().addClass("cd_on_bg");
					HandleLI2.find('a').css("color","#B20000");
					
                }
                else
                {
                    DisSub2.hide();
					//HandleLI2.removeClass("current");
					HandleLI2.removeClass("rs_cate_li_on_"+obj);
					HandleLI2.parent().css("background","#fff");
					HandleLI2.parent().next().css("background","#fff");
					HandleLI2.parent().next().removeClass("cd_on_bg");
					HandleLI2.find('a').css("color","#fff");
                }
            }		
</script>

<div id="category_tree">
<dl class="clearfix" >
     <?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['cat']):
        $this->_foreach['no']['iteration']++;
?>
<div  class="dt"  onMouseOver="sw_nav2(<?php echo $this->_foreach['no']['iteration']; ?>,1);" onMouseOut="sw_nav2(<?php echo $this->_foreach['no']['iteration']; ?>,0);" >


                <div id="HandleLI2_<?php echo $this->_foreach['no']['iteration']; ?>" class="rs_cate_li rs_cate_li_<?php echo $this->_foreach['no']['iteration']; ?>" style="">
                <a class="rs_cate_tit" href="<?php echo $this->_var['cat']['url']; ?>">
                    <?php echo htmlspecialchars($this->_var['cat']['name']); ?>
                </a>
                <span class="rs_cate_jt">&gt;</span>
                <?php $_from = $this->_var['cat']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'rs_child');$this->_foreach['rs_childs'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['rs_childs']['total'] > 0):
    foreach ($_from AS $this->_var['rs_child']):
        $this->_foreach['rs_childs']['iteration']++;
?>
                <a class="rs_cate_a" href="<?php echo $this->_var['rs_child']['url']; ?>">
                    <?php if (! ($this->_foreach['rs_childs']['iteration'] <= 1)): ?>
                    、
                    <?php endif; ?>
                    <?php echo htmlspecialchars($this->_var['rs_child']['name']); ?>
                </a>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <hr/>
                </div>

                <dd  id=DisSub2_<?php echo $this->_foreach['no']['iteration']; ?> style="display:none"> 
                <?php $_from = $this->_var['cat']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child');if (count($_from)):
    foreach ($_from AS $this->_var['child']):
?>
                 <a class="over_2" href="<?php echo $this->_var['child']['url']; ?>"><?php echo htmlspecialchars($this->_var['child']['name']); ?></a>  
                
                <div class="clearfix">
                <?php $_from = $this->_var['child']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'childer');if (count($_from)):
    foreach ($_from AS $this->_var['childer']):
?>
                <a class="over_3" href="<?php echo $this->_var['childer']['url']; ?>"><?php echo htmlspecialchars($this->_var['childer']['name']); ?></a>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </div>   
                       
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </dd> 


</div>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
</dl>

</div>

