<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-theme-rapid" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-theme-rapid" class="form-horizontal">
          <fieldset>
            <legend><?php echo $text_general; ?></legend>
            <div class="form-group hidden">
              <label class="col-sm-2 control-label" for="input-directory"><span data-toggle="tooltip" title="<?php echo $help_directory; ?>"><?php echo $entry_directory; ?></span></label>
              <div class="col-sm-10">
                <select name="rapid_directory" id="input-directory" class="form-control">
                  <?php foreach ($directories as $directory) { ?>
                  <?php if ($directory == $rapid_directory) { ?>
                  <option value="<?php echo $directory; ?>" selected="selected"><?php echo $directory; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $directory; ?>"><?php echo $directory; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
			
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
              <div class="col-sm-10">
                <select name="rapid_status" id="input-status" class="form-control">
                  <?php if ($rapid_status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
			
          </fieldset>
		  
		  <hr>
		  
			<div class="row">
				<div class="col-lg-2 col-md-3" >
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#tab-basic-settings" data-toggle="pill">Базовые настройки</a></li>
						<li><a href="#tab-main-menu" data-toggle="pill">Главное меню</a></li>
						<li><a href="#tab-footer" data-toggle="pill">Настройки подвала</a></li>
					</ul>
				</div>
				<hr class="hidden-lg hidden-md">
				<div class="col-lg-10 col-md-9" style="border-left: 1px solid #eee;" >
					<div class="tab-content">
						<div class="tab-pane active" id="tab-basic-settings">
							 <fieldset>
								<legend><?php echo $text_product; ?></legend>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-catalog-limit"><span data-toggle="tooltip" title="<?php echo $help_product_limit; ?>"><?php echo $entry_product_limit; ?></span></label>
								  <div class="col-sm-10">
									<input type="text" name="rapid_product_limit" value="<?php echo $rapid_product_limit; ?>" placeholder="<?php echo $entry_product_limit; ?>" id="input-catalog-limit" class="form-control" />
									<?php if ($error_product_limit) { ?>
									<div class="text-danger"><?php echo $error_product_limit; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-description-limit"><span data-toggle="tooltip" title="<?php echo $help_product_description_length; ?>"><?php echo $entry_product_description_length; ?></span></label>
								  <div class="col-sm-10">
									<input type="text" name="rapid_product_description_length" value="<?php echo $rapid_product_description_length; ?>" placeholder="<?php echo $entry_product_description_length; ?>" id="input-description-limit" class="form-control" />
									<?php if ($error_product_description_length) { ?>
									<div class="text-danger"><?php echo $error_product_description_length; ?></div>
									<?php } ?>
								  </div>
								</div>
							  </fieldset>
							  <fieldset>
								<legend><?php echo $text_image; ?></legend>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-category-width"><?php echo $entry_image_category; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_category_width" value="<?php echo $rapid_image_category_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-category-width" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_category_height" value="<?php echo $rapid_image_category_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_category) { ?>
									<div class="text-danger"><?php echo $error_image_category; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-thumb-width"><?php echo $entry_image_thumb; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_thumb_width" value="<?php echo $rapid_image_thumb_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-thumb-width" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_thumb_height" value="<?php echo $rapid_image_thumb_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_thumb) { ?>
									<div class="text-danger"><?php echo $error_image_thumb; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-popup-width"><?php echo $entry_image_popup; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_popup_width" value="<?php echo $rapid_image_popup_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-popup-width" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_popup_height" value="<?php echo $rapid_image_popup_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_popup) { ?>
									<div class="text-danger"><?php echo $error_image_popup; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-product-width"><?php echo $entry_image_product; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_product_width" value="<?php echo $rapid_image_product_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-product-width" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_product_height" value="<?php echo $rapid_image_product_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_product) { ?>
									<div class="text-danger"><?php echo $error_image_product; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-additional-width"><?php echo $entry_image_additional; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_additional_width" value="<?php echo $rapid_image_additional_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-additional-width" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_additional_height" value="<?php echo $rapid_image_additional_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_additional) { ?>
									<div class="text-danger"><?php echo $error_image_additional; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-related"><?php echo $entry_image_related; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_related_width" value="<?php echo $rapid_image_related_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-related" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_related_height" value="<?php echo $rapid_image_related_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_related) { ?>
									<div class="text-danger"><?php echo $error_image_related; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-compare"><?php echo $entry_image_compare; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_compare_width" value="<?php echo $rapid_image_compare_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-compare" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_compare_height" value="<?php echo $rapid_image_compare_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_compare) { ?>
									<div class="text-danger"><?php echo $error_image_compare; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-wishlist"><?php echo $entry_image_wishlist; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_wishlist_width" value="<?php echo $rapid_image_wishlist_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-wishlist" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_wishlist_height" value="<?php echo $rapid_image_wishlist_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_wishlist) { ?>
									<div class="text-danger"><?php echo $error_image_wishlist; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-cart"><?php echo $entry_image_cart; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_cart_width" value="<?php echo $rapid_image_cart_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-cart" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_cart_height" value="<?php echo $rapid_image_cart_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_cart) { ?>
									<div class="text-danger"><?php echo $error_image_cart; ?></div>
									<?php } ?>
								  </div>
								</div>
								<div class="form-group required">
								  <label class="col-sm-2 control-label" for="input-image-location"><?php echo $entry_image_location; ?></label>
								  <div class="col-sm-10">
									<div class="row">
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_location_width" value="<?php echo $rapid_image_location_width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-image-location" class="form-control" />
									  </div>
									  <div class="col-sm-6">
										<input type="text" name="rapid_image_location_height" value="<?php echo $rapid_image_location_height; ?>" placeholder="<?php echo $entry_height; ?>" class="form-control" />
									  </div>
									</div>
									<?php if ($error_image_location) { ?>
									<div class="text-danger"><?php echo $error_image_location; ?></div>
									<?php } ?>
								  </div>
								</div>
							  </fieldset>
						</div>
						<div class="tab-pane" id="tab-main-menu">
							<div class="form-group">
								<label class="col-sm-2 control-label">Включить</label>
								<div class="col-sm-10">
									<label class="radio-inline">
										<input type="radio" name="rapid_main_menu_toggle" value="1" <?php if ($rapid_main_menu_toggle) { echo 'checked'; } ?> /> Да
									</label>
									<label class="radio-inline">
										<input type="radio" name="rapid_main_menu_toggle" value="0" <?php if (!$rapid_main_menu_toggle) { echo 'checked';} ?> /> Нет
									</label>
								</div>
							</div>
							<hr>
							<div class="form-group">
								<label class="col-sm-2 control-label">Пункты меню</label>
								<div class="col-sm-10">
									<table id="main-menu-items" class="table table-bordered">
										<thead>
											<tr>
												<td class="nowrap"><i class="fa fa-edit fa14"></i>&nbsp;&nbsp;Текст</td>
												<td class="nowrap"><i class="fa fa-link fa14"></i>&nbsp;&nbsp;Ссылка</td>
												<td class="nowrap"><i class="fa fa-sort fa14"></i>&nbsp;&nbsp;Сортировка</td>
												<td></td>
											</tr>
										</thead>
										<tbody>
										<?php $item_row_main = 0; ?>
										<?php foreach ($rapid_main_menu_items as $rapid_main_menu_item) { ?>
											<tr id="item-row-main<?php echo $item_row_main; ?>">
												<td class="text-left">
													<?php foreach ($languages as $language) { ?>
													<div class="input-group pull-left">
														<span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
														<input class="form-control" type="text" name="rapid_main_menu_item[<?php echo $item_row_main; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo $rapid_main_menu_item['title'][$language['language_id']]; ?>" />
													</div>
													<?php } ?>
												</td>
												<td class="text-left">
													<?php foreach ($languages as $language) { ?>
													<div class="input-group pull-left">
														<span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
															<input class="form-control" type="text" name="rapid_main_menu_item[<?php echo $item_row_main; ?>][link][<?php echo $language['language_id']; ?>]" value="<?php echo $rapid_main_menu_item['link'][$language['language_id']]; ?>" />
													</div>
													<?php } ?>
												</td>
												<td class="text-left">
													<input  class="form-control" type="text" name="rapid_main_menu_item[<?php echo $item_row_main; ?>][sort]" value="<?php echo $rapid_main_menu_item['sort']; ?>" />
												</td>
												<td class="text-right">
													<a class="btn btn-danger" onclick="$('#item-row-main<?php echo $item_row_main; ?>').remove();" data-toggle="tooltip" title="Удалить"><i class="fa fa-trash-o"></i></a>
												</td>
											</tr>
										<?php $item_row_main++; ?>
										<?php } ?>
										</tbody>
										<tfoot>
											<tr>
												<td colspan="3"></td>
												<td class="text-right"><a class="btn btn-primary" onclick="addItemMain();" data-toggle="tooltip" title="Добавить"><i class="fa fa-plus-circle"></i></a></td>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
						
						<div class="tab-pane" id="tab-footer">
							<div class="form-group">
								<label class="col-sm-2 control-label">Включить иконки в подвале</label>
								<div class="col-sm-10">
									<label class="radio-inline">
										<input type="radio" name="rapid_pay_icons_toggle" value="1" <?php if ($rapid_pay_icons_toggle) { echo 'checked'; } ?> /> Да
									</label>
									<label class="radio-inline">
										<input type="radio" name="rapid_pay_icons_toggle" value="0" <?php if (!$rapid_pay_icons_toggle) { echo 'checked';} ?> /> Нет
									</label>
								</div>
							</div>
							<hr>
							<div class="form-group">
								<label class="col-sm-2 control-label">Баннер</label>
								<div class="col-sm-10">
									<div class="inline-block">
										<select name="rapid_pay_icons_banner_id" class="form-control">
											<option value="-1">-- Выбрать --</option>
											<?php foreach ($banners as $banner) { ?>
											<?php if ($banner['banner_id'] == $rapid_pay_icons_banner_id) { ?>
											<option value="<?php echo $banner['banner_id']; ?>" selected="selected"><?php echo $banner['name']; ?></option>
											<?php } else { ?>
											<option value="<?php echo $banner['banner_id']; ?>"><?php echo $banner['name']; ?></option>
											<?php } ?>
											<?php } ?>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div> 
				</div>		
			</div>				
						
						
						
     
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
var item_row_main = <?php echo $item_row_main; ?>;

function addItemMain() {
  html  = '<tr id="item-row-main' + item_row_main + '">';
  html += '<td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group pull-left"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>';
	html += '<input class="form-control" type="text" name="rapid_main_menu_item[' + item_row_main + '][title][<?php echo $language['language_id']; ?>]" value="" />';
	html += '</div>';
	<?php } ?>
	html += '</td>';
	html += '<td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group pull-left"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>';
	html += '<input class="form-control"  type="text" name="rapid_main_menu_item[' + item_row_main + '][link][<?php echo $language['language_id']; ?>]" value="" />';
	html += '</div>';
	<?php } ?>
	html += '</td>';
	html += '<td class="text-left"><input class="form-control" type="text" name="rapid_main_menu_item[' + item_row_main + '][sort]" size="1" value="0" /></td>';
	html += '<td class="text-right"><a class="btn btn-danger" onclick="$(\'#item-row-main' + item_row_main  + '\').remove();" data-toggle="tooltip" title="Удалить"><i class="fa fa-trash-o"></i></a></td>';
	html += '</tr>'; 
	
	$('#main-menu-items tbody').append(html);;
	
	item_row_main++;
}
</script>
<?php echo $footer; ?>
