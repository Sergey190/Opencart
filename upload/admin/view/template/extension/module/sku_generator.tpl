<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button id="button-save" type="submit" form="form-sku-generator" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
			<?php if (!empty($text_success)) { ?>
			<div class="alert alert-success"><i class="fa fa-exclamation-circle"></i> <?php echo $text_success; ?></div>
			<?php } ?>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h2>
				</div>
				<div class="panel-body">

<ul id="myTab2" class="nav nav-tabs">
  <li><a data-toggle="tab" href="#panely1">Управление</a></li>
  <li><a data-toggle="tab" href="#panely2">Инструкция</a></li>
</ul>
 
<div class="tab-content" style="margin-bottom: 20px;">
   <div id="panely1" class="tab-pane fade">
    <h3>Настройки</h3>
    <p class="bg-warning">Пожалуйста, перед настройкой модуля прочитайте инструкцию на соседней вкладке</p>
    	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-sku-generator" class="form-horizontal">
    			<div class="form-group">
		        	<label class="col-sm-2 control-label" for="sku_generator_group">Группа (необязательно)</label>
		            <div class="col-sm-10" >
		            	<input type="text" id="group" value="<?=$sku_generator_group?>" placeholder="введите группу (предпочтительно буквы) для генерации примера артикула"  name="sku_generator_group" class="form-control">
		            </div>
		       </div>

		       	<div class="form-group">
		        	<label class="col-sm-2 control-label" for="sku_generator_start">С какого числа начинаем?
		        	 (100000 по умолчанию)</label>
		            <div class="col-sm-10" >
		            	<input type="number" pattern="^[0-9]*" id="start" value="<?=$sku_generator_start?>"
		            	placeholder="введите число для генерации примера артикула" name="sku_generator_start" class="form-control">
		            </div>
		       </div>

		       	<div class="form-group">
		        	<label class="col-sm-2 control-label" for="sku_generator_digit">Разбивать артикул на разряды дефисом (по 3 цифры). Работает, начиная от 4ех значного артикула</label>
		            <div class="col-sm-10" >
		            	<input name='sku_generator_digit' type='hidden' value='0'>
		            	<input type="checkbox" id="digit" 
		            	<?if($sku_generator_digit):?> checked <?endif;?> value='1' name="sku_generator_digit" class="form-control">
		            </div>
		       </div>

		       <div class="form-group">
		       	<label class="col-sm-2 control-label" for="result-sku">Ваши артикулы будут выглядеть так:</label>
		       	<div class="col-sm-10" >
		       		<input type="text" id="result-sku"  disabled="" class="form-control">
		       	</div>
		       </div>
		     <div class="form-group"> 
		   	<div class="col-sm-offset-2 col-sm-10">
		   		<button type="submit" class="btn btn-success">Сохранить настройки</button>
		   		<button type="button" class="btn btn-warning" id="generateAllSku">Сгенерировать все артикулы</button>
		   	</div>
		   </div>	
		   <div class="form-group"> 
		   	<div class="col-sm-offset-2 col-sm-10">
					<p>Перед генерацией артикулов сохраните настойки данного модуля, а также сделайте бэкап базы.</p>
		   	</div>
		   </div>
		   	        
		   </form>   
		</div>
 <div id="panely2" class="tab-pane fade">
    <p>
    	<h3>Про модуль</h3>
						<p >Модуль предназначен для простого автоматического генерирования уникальных артикулов товаров.</p>
						<p>Формат генерируемого артикула универсальный, вида: <b>А-100056</b>, где А - любая числовая или цифровая группа, которую Вы можете задать артикулу в форме на соседней вкладке, а 100056 - порядковый номер артикула. Порядковый номер (с какого числа начинается отчет артикулов) Вы также можете задать в форме настроек формата артикула. Вы можете не использовать группу вовсе, а если Вы не впишите начальное число артикулов, то ему присвоиться номер по умолчанию - 100000. Также Вам доступна функция разбивания артикула на разряды дефисом (по 3 цифры). То есть, выбрав в настройках модуля "Разбивать артикул дефисом на разряды", артикул 100056 превратиться в 100-056, для более простого восприятия артикула. Вы можете изменить формат вывода и ввода данных, доработав модуль самостоятельно, или же связаться со мной для индивидуальной доработки. </p>
			<h3>Инструкция</h3>
			<strong><p class="bg-success">Генерация артикулов для уже созданных товаров по схеме:</p></strong>
				<ul>
					<li>Сделайте бэкап базы! Модуль безвозвратно заменяет Ваши старые артикулы товаров на новые</li>
					<li>Введите число, с которого вы хотите начать генерацию артикулов. Выбирайте число, которое будет легко воспринимать и передавать, например, по телефону, а также чтобы все потенциальные товары имели свои потенциальные номера. Например, числа 100000 хватит на все товары.</li>
					<li>Определитесь, будет ли генератор разбивать артикул на разряды (хххххх в ххх-ххх), и поставьте/снимите галочку в соответствующей настройке модуля</li>
					<li>Если есть такая необходимость, введите группу (литеру, слово или цифру). Эта группа будет неизменна, и используется для лучшего восприятия артикула. Если вы введете букву S, то артикул приобретет вид S-xxxxxx</li>
					<li>Сохраните настройки</li>
					<li>Нажмите кнопку "Сгенерировать все артикулы". Осторожно, процесс может занять некоторое время, особенно если у Вас много товаров в базе. Модуль сгенерирует для всех товаров новые артикулы по схеме, которую Вы задали выше</li>
					<li>Все новые товары будут создаваться с уже заполненным полем артикула по выбранной форме. Вы можете изменить их вручную перед сохранением, но я не советую этого делать, если Вы начали пользоваться автоматической генерацией.</li>
				</ul>

				<strong><p class="bg-success">Если вы не хотите генерировать артикулы для уже созданных товаров, Вы можете просто позволить модулю заполнять в процессе создания товаров:</p></strong>
				<ul>
					<li>Если Вы включили модуль - значит он уже подставляет следующий артикул для нового товара. Проверьте это прямо сейчас</li>
					<li>Если Вы не хотите изменять вид своего артикула - просто не заполняйте поля настроек группы, разбивки артикула и начального числа</li>
					<li>Модуль пока не может работать с разными товарными группами, и будет генерировать следующий артикул для самого большого артикула, который у вас есть в базе. Будьте внимательны.</li>
				</ul>
  			</div>

  </div>

				<br>
					<div class="copywrite" style="padding: 10px 10px 0 10px; border: 1px dashed #ccc;">
						<p>
							&copy; <?=$text_author?>: <a><?=$text_author_name?></a>
							<br/>
							<?=$text_author_support?>: <a href="mailto:gorustovich.sv@yandex.ru">gorustovich.sv@yandex.ru</a>
						</p>
					</div>
				</div><!-- /Panel-Body-->
				<!-- Customized.End-->
			</div>
	</div><!-- /content-->
<script type="text/javascript">	
jQuery().ready(function() {

	if(startExist() || groupExist())
	{
		renderSku(startExist());
	}

	$("#group").bind('change', function(event) { 
		renderSku(startExist());
	});

	$("#start").bind('change', function(event) { 
		renderSku(startExist());
	});

	$("#digit").bind('change', function(event) { 
		renderSku(startExist());
	});

	function startExist() {
		if($("#start").val())
			return $("#start").val();
		else
			return start = 100000;
	}

	function groupExist() {
		if($("#group").val())
			return $("#group").val();
		else
			return group = false;
	}


function renderSku(start) {
		if($("#digit").prop("checked")) {
			start = String(start).replace(/(\d)(?=(\d\d\d)+([^\d]|$))/g, '$1-');
		}
		if ($("#group").val()) {
			var group = String($("#group").val()).replace(/\s/ig, '-');
			var resultSku = (group + '-' + start);
		} else {
			var resultSku = (start);
		}
		$("#result-sku").val(resultSku);
	}
});
$(function(){ 
    $("#myTab2 li:eq(0) a").tab('show');
});

$('#generateAllSku').click(function(event) {
		if(confirm("Сделали бэкап базы?")) {
		var data = $('#form-sku-generator').serialize();
		postFormByAjax(data);
		window.location.href = "index.php?route=extension/module/sku_generator/generateAllSku&token=<?=$token;?>";
	}
});

    function postFormByAjax(data) {
    	console.log(data);
    $.ajax({
     url: 'index.php?route=extension/module/sku_generator/postFormByAjax&token=<?=$token; ?>',
      data: data,
      dataType: 'json',
      method : 'POST',
       success: function( response, textStatus, jqXHR ){
      	 console.log('POST data is saved.');
      },
      error: function( jqXHR, textStatus, errorThrown ){
        console.log('We have a problem with Ajax: ' + textStatus);
      },
    });
  }
</script>

<?php echo $footer; ?>˚∫