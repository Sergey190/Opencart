<div class="form-group">
    <div class="col-sm-6">
        <div class="bs-callout bs-callout-info bs-callout-sm">
            <?= $callout_cache_info; ?>
        </div>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-1 control-label" for="cache-commanding"><?= $text_cache_isset ?></label>
    <label class="col-sm-1 control-label">
        <?php $checked = ''; ?>
        <?php if (isset($DEF_settings['cache']['isset'])) { ?>
            <?php $checked = ' checked="checked"'; ?>
        <?php } ?>
        <input type="checkbox"
               id="cache-commanding"
               class="form-control checkbox-inline pull-left"
               name="DEF_settings[cache][isset]"
            <?= $checked ?>
        >
    </label>
</div>

<div class="form-group">
    <label class="col-sm-1 control-label"><?= $text_cache_token ?></label>
    <div class="col-sm-1">

        <?php $attr_disable = 'disabled'; ?>
        <?php if (isset($DEF_settings['cache']['isset'])) { ?>
            <?php $attr_disable = ''; ?>
        <?php } ?>

        <input type="text"
               id="cache-token"
               class="form-control cache-dependent"
               name="DEF_settings[cache][token]"
               value="<?= $DEF_settings['cache']['token'] ?>"
               placeholder="hB)K!UG.epXF<st{EY?$h?<JK_LON2iXQ§]3XDuZeC*zOnlKruj*og+1Q7OLn}_Z"
            <?= $attr_disable ?>
        >
    </div>
</div>

<div class="form-group">
    <label class="col-sm-1 control-label"><?= $text_cache_update ?></label>
    <div class="col-sm-1">
        <button type="button"
                id="cache-update"
                class="form-control btn btn-success cache-dependent"
                name="DEF_settings[cache][update]"
            <?= $attr_disable ?>
        ><i class="fa fa-refresh"></i></button>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-1 control-label"><?= $text_cache_clear ?></label>
    <div class="col-sm-1">
        <button type="button"
                id="cache-clear"
                class="form-control btn btn-danger cache-dependent"
                name="DEF_settings[cache][clear]"
            <?= $attr_disable ?>
        ><i class="fa fa-eraser"></i></button>
    </div>
</div>

<script>
    $(function () {
        $('#cache-commanding').click(function () {
            if ($('input').is('#cache-commanding:checked')) {
                cacheDependentOn();
            } else {
                cacheDependentOff();
            }
        });
    });

    function cacheDependentOff() {
        $('.cache-dependent').prop("disabled", true);
    }

    function cacheDependentOn() {
        $('.cache-dependent').prop("disabled", false);
    }

    $('#cache-update').click(function () {
        var token = $('#cache-token').val();
        var icon = $(this).children('i');
        icon.addClass('fa-spin fa-fw');
        $.ajax({
            url: '<?= $action_cache_update ?>',
            dataType: 'HTML',
            method: 'post',
            data: {token: token},
            success: function (html) {
                icon.removeClass('fa-spin fa-fw');
                alert(html);
            }
        });
    });

    $('#cache-clear').click(function () {
        var token = $('#cache-token').val();
        var icon = $(this).children('i');
        icon.removeClass('fa-eraser');
        icon.addClass('fa-refresh fa-spin fa-fw');
        $.ajax({
            url: '<?= $action_cache_clear ?>',
            dataType: 'HTML',
            method: 'post',
            data: {token: token},
            success: function (html) {
                icon.removeClass('fa-refresh fa-spin fa-fw');
                icon.addClass('fa-eraser');
                alert(html);
            }
        });
    })

</script>