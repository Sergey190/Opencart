<div class="row">
  <div class="col-xs-12">
    <div class="head-module">
        <?php echo $heading_title; ?>
    </div>
    <div id="featured<?php echo $module; ?>" class="owl-carousel owl-module" style="opacity: 1;">
      <?php foreach ($products as $product) { ?>
      <div class="product-layout ">
          <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
          <div class="caption">
            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
            <p><?php echo $product['description']; ?></p>
            <?php if ($product['rating']) { ?>
            <div class="rating">
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($product['rating'] < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
              <?php } ?>
              <?php } ?>
            </div>
            <?php } ?>
            <?php if ($product['price']) { ?>
              <?php if ($product['special']) { ?>
                  <span class="price-old"><?php echo $product['price']; ?></span>
              <?php } ?>
              <?php if ($product['tax']) { ?>
              <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
              <?php } ?>
            <?php } ?>
          </div>
          <div class="button-group btn-group-justified product-price">
              <div class="btn-group">
                <?php if ($product['price']) { ?>
                <div class="btn-block">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <?php echo $product['special']; ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
              <div class="btn-group">
                  <button class="btn-block" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
              </div>
          </div>
          <div class="button-group btn-group-justified product-wish-comp">
              <div class="btn-group">
                  <button class="btn-block" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              </div>
              <div class="btn-group">
                  <button class="btn-block" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
<script >
  $('#featured<?php echo $module; ?>').owlCarousel({
    responsiveBaseWidth: '#featured<?php echo $module; ?>',
    itemsCustom: [[0, 1], [448, 2], [668, 3], [848, 4]],
    theme: 'product-carousel',
    navigation: true,
    slideSpeed: 200,
    paginationSpeed: 9999999999,
    stopOnHover: true,
    touchDrag: true,
    mouseDrag: false,
    navigationText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
    pagination: false,
    autoPlay: true
  });
</script>
