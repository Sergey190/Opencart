<?php
/**
 * CHECKBOX:
 * $input_name
 * $option_value
 * $option_name
 * $option_id
 */
?>
<div class="digitalElephantFilter_type_checkbox">
    <?php foreach ($inputs_data as $input_data) { ?>
        <label class="checkbox-inline">
            <?php $attr_checked = ''; ?>
            <?php if ($input_data['is_active']) { ?>
                <?php $attr_checked = 'checked="checked"'; ?>
            <?php } ?>

            <?php $attr_disabled = (!$input_data['is_enable']) ? 'disabled="disabled"' : ''; ?>
            <input
                type="checkbox"
                name="<?= $input_data['input_name'] ?>[<?= $section['id'] ?>][]"
                value="<?= $input_data['input_value'] ?>"
                <?= $attr_checked; ?>
                <?= $attr_disabled ?>
                >
            <span><?= $input_data['input_label'] ?></span>
        </label>
    <?php } ?>
</div>