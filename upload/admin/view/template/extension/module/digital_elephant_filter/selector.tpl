<div class="form-group">
    <label class="col-sm-2 control-label" for="input-name"><?= $text_selector_container_products; ?></label>

    <div class="col-sm-4">
        <input
            type="text"
            name="DEF_settings[selector_container_products]"
            value="<?= $DEF_settings['selector_container_products'] ?>"
            class="form-control"/>
        <?php if ($error_selector_container_products) { ?>
            <div class="text-danger"><?= $error_selector_container_products ?></div>
        <?php } ?>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-2 control-label" for="input-name"><?= $text_selector_pagination; ?></label>

    <div class="col-sm-4">
        <input
            type="text"
            name="DEF_settings[selector_pagination]"
            value="<?= $DEF_settings['selector_pagination'] ?>"
            class="form-control"/>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-2 control-label" for="input-name"><?= $text_selector_quantity_products; ?></label>

    <div class="col-sm-4">
        <input
            type="text"
            name="DEF_settings[selector_quantity_products]"
            value="<?= $DEF_settings['selector_quantity_products'] ?>"
            class="form-control"/>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-2 control-label" for="input-name"><?= $text_selector_sort; ?></label>

    <div class="col-sm-4">
        <input
            type="text"
            name="DEF_settings[selector_sort]"
            value="<?= $DEF_settings['selector_sort'] ?>"
            class="form-control"/>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-2 control-label" for="input-name"><?= $text_selector_limit; ?></label>

    <div class="col-sm-4">
        <input
            type="text"
            name="DEF_settings[selector_limit]"
            value="<?= $DEF_settings['selector_limit'] ?>"
            class="form-control"/>
    </div>
</div>