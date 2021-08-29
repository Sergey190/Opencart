<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h4><i class="glyphicon glyphicon-info-sign"></i><span><?php echo $text_information; ?></span></h4>
        <ul >
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h4><i class="glyphicon glyphicon-comment"></i><span><?php echo $text_service; ?></span></h4>
        <ul >
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h4><i class="fa fa-share"></i><span><?php echo $text_extra; ?></span></h4>
        <ul >
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h4><i class="glyphicon glyphicon-user"></i><span><?php echo $text_account; ?></span></h4>
        <ul >
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
   <div class="row">
		<div class="col-sm-12 col-md-4">
			<?php echo $powered; ?>
		</div>
		<?php if ($pay_icons_toggle) { ?>
		<div class="col-sm-12 col-md-8 text-right">
			<ul class="list-unstyled footer-icons">
				 <?php foreach ($pay_icons as $pay_icon) { ?>
				<li>
					<?php if ($pay_icon['link']) { ?>
					<a target="_blank" href="<?php echo $pay_icon['link']; ?>"><img src="<?php echo $pay_icon['image']; ?>" alt="<?php echo $pay_icon['title']; ?>" class="img-responsive" /></a>
					<?php } else { ?>
					<img src="<?php echo $pay_icon['image']; ?>" alt="<?php echo $pay_icon['title']; ?>" class="img-responsive" />
					<?php } ?>
				</li>
				<?php } ?>
			</ul>
		</div>
		<?php } ?>
	</div>
  </div>
  <style>#myModal{text-align:center;background:rgba(0,0,0,.5)}@media screen and (min-width: 768px){#myModal:before{display:inline-block;vertical-align:middle;content:"";height:100%}}#myModal .modal-dialog{display:inline-block;text-align:left;vertical-align:middle}#myModal a{font-weight:500; color:#F7AD0A;}#myModal .fa{font-size:inherit}#myModal li{margin-bottom:3px;}</style>

<div class="modal fade" id="myModal" tabindex="-1">
  <div class="modal-dialog modal-lg">
    <div class="modal-content"> 
			<div class="modal-header">
        <h4 class="modal-title text-primary"><i class="fa fa-warning"></i>&nbsp;&nbsp;Полезная информация!</h4>
      </div>
      <div class="modal-body">
        <p>Рекомендую ознакомиться с шаблоном <a href="http://boom.nexer.by/" alt="boom theme" title="boom theme"><b><u>Boom theme</u></b></a></p>
		Официально купить шаблон Boom theme можно только на указанных ниже торговых площадках, либо напрямую у автора шаблона.
		<ul>
		  <li><a href="https://opencartforum.com/files/file/6070-nexer-boomtheme-bystryy-sovremennyy-shablon-dlya-opencart-3x/" target="blank">Opencartforum.com</a></li>
		  <li><a href="https://liveopencart.ru/opencart-moduli-shablony/shablonyi/nexer-boomtheme-adaptivnyiy-shablon-dlya-opensart-3-1-0-0" target="_blank">Liveopencart.ru</a></li>
		  <li><a href="https://shop.opencart-russia.ru/nexer_boom_theme" target="_blank">Opencart-russia.ru</a></li>
		</ul>
		<p>Данная тема имеет отличный функционал, продуманное юзабилити, чистый код, быструю загрузку и многое другое что требуется для успешных продаж в вашем интернет-магазине.</p>
		<p>Boom theme разработан на основе одного из топовых шаблонов для Opencart 3.x, Frame Theme.<br>
		Шаблон входит в стоимость, а это значит, что за эту цену, у вас будет 2 абсолютно разных темы по дизайну на выбор. Которые вы сможете легко менять через настройки шаблона.</p>
		
		<p>Так же рекомендую хостинг <a href="https://eurobyte.ru/?referer=137590" target="_blank"><b><u>Евробайт</u></b></a><br>
		<span class="small">* Первый месяц хостинга бесплатный</span></p>
      </div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary load-button" onclick="setcookie()" data-dismiss="modal" disabled="disabled">
					<span class="btn-spinner"><i class="fa fa-spinner fa-pulse"></i>&nbsp;&nbsp;</span>Закрыть
				</button>
      </div>
    </div>
  </div>
</div>
<script>
	!function(e){if("function"==typeof define&&define.amd)define(e);else if("object"==typeof exports)module.exports=e();else{var n=window.Cookies,t=window.Cookies=e();t.noConflict=function(){return window.Cookies=n,t}}}(function(){function e(){for(var e=0,n={};e<arguments.length;e++){var t=arguments[e];for(var o in t)n[o]=t[o]}return n}function n(t){function o(n,r,i){var c;if(arguments.length>1){if(i=e({path:"/"},o.defaults,i),"number"==typeof i.expires){var s=new Date;s.setMilliseconds(s.getMilliseconds()+864e5*i.expires),i.expires=s}try{c=JSON.stringify(r),/^[\{\[]/.test(c)&&(r=c)}catch(a){}return r=encodeURIComponent(String(r)),r=r.replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g,decodeURIComponent),n=encodeURIComponent(String(n)),n=n.replace(/%(23|24|26|2B|5E|60|7C)/g,decodeURIComponent),n=n.replace(/[\(\)]/g,escape),document.cookie=[n,"=",r,i.expires&&"; expires="+i.expires.toUTCString(),i.path&&"; path="+i.path,i.domain&&"; domain="+i.domain,i.secure?"; secure":""].join("")}n||(c={});for(var p=document.cookie?document.cookie.split("; "):[],u=/(%[0-9A-Z]{2})+/g,d=0;d<p.length;d++){var f=p[d].split("="),l=f[0].replace(u,decodeURIComponent),m=f.slice(1).join("=");'"'===m.charAt(0)&&(m=m.slice(1,-1));try{if(m=t&&t(m,l)||m.replace(u,decodeURIComponent),this.json)try{m=JSON.parse(m)}catch(a){}if(n===l){c=m;break}n||(c[l]=m)}catch(a){}}return c}return o.get=o.set=o,o.getJSON=function(){return o.apply({json:!0},[].slice.call(arguments))},o.defaults={},o.remove=function(n,t){o(n,"",e(t,{expires:-1}))},o.withConverter=n,o}return n()});

	function setcookie() {
		Cookies.set("visit", "1");
		Cookies.set("visit_long", "1", {expires: 30});
	}
	
	modalshow = function (){
		if(Cookies.get("visit") == null) {
			setTimeout(function() {
				$('#myModal').modal({
					backdrop: false,
					keyboard: false
				});
				if (Cookies.get("visit_long") == null) {
					setTimeout(function() { 
						$('.load-button .btn-spinner').remove();
						$('.load-button, .clk').removeAttr('disabled');
					}, 5000)
				} else {
					$('.load-button .btn-spinner').remove();
					$('.load-button, .clk').removeAttr('disabled');
				}
			}, 100)
		}
	}
	
	$(window).load(modalshow());
</script>
</footer>
</body></html>
