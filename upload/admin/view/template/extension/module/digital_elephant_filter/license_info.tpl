<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <h1><?= $heading_title ?></h1>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row mt-20">
            <div class="col-sm-6">
                <div id="info"><i class="fa fa-refresh fa-spin"></i></div>
            </div>
        </div>
    </div>
</div>

<script>
    $.ajax({
        url: '<?= $ajax_render_info ?>',
        success: function (html) {
            $('#info').html(html);
        },
        error: function () {
            $('#info').html('Server error, try to reload later');
        }
    });
</script>
<?php echo $footer; ?>
