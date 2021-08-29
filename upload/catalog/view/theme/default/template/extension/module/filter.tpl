<head>  
	<style type="text/css">
		.spoiler_body {display:none;}	
	</style>
</head>
<div class="panel panel-default">
  <div class="panel-heading"><?php echo $heading_title; ?></div>  
  <div>
	<?php foreach ($filter_groups as $filter_group) { ?>	
	<div>
	<button class="list-group-item spoiler_links">
		<i class="fa fa-angle-double-right"></i>
		<?php echo $filter_group['name']; ?>
	</button>
	<div class="spoiler_body">
    <div class="list-group-item">  
	  <div id="filter-group <?php echo $filter_group['filter_group_id']; ?>">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <div class="checkbox">          
		  <label>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked"/>
            <?php echo $filter['name']; $dele[] = ($filter)?>			
			<?php } else { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>"/>
            <?php echo $filter['name']; ?>            
			<?php } ?>
          </label>			
		</div>        
		<?php } ?>
      </div>
    </div>
	</div>					
	<?php if (isset($dele)) { ?>					
			<?php foreach ($dele as $del) { ?>																
				<div style=padding-left:10%> 
					<label style=cursor:pointer;>							
						<input style=display:none type="checkbox" name="del[]" value="<?php echo $del['filter_id']; ?>" checked="checked" />	
						<i style=padding-left:5px class="fa fa-trash-o"></i>
						<?php echo $del['name']; ?>							
					</label>							
				</div>
			<?php } ?>
	<?php } ?>
	</div>	
	<?php unset($dele); ?>
	<?php } ?>	
  </div>
<!--<div class="panel-footer text-right">
    <button type="button" id="button-filter" class="btn btn-primary"><?php echo 'Применить фильтр'; ?></button>
  </div>-->  
</div>
<script type="text/javascript"><!--
$('input[name^=\'filter\']').on('click', function() {
	filter = [];
	

	$('input[name^=\'filter\']:checked').each(function(element) {
		if (this.value != "") {
            filter.push(this.value);
        }
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
$('input[name^=del]').on('click', function() {
	filter = [];
	

	$('input[name^=del]:checked').each(function(element) {
		if (this.value != "") {
            filter.push(this.value);
        }
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
$(document).ready(function(){
 $('.spoiler_links').click(function(){
  $(this).parent().children('div.spoiler_body').toggle('normal');
  return false;
 });
});
//--></script>