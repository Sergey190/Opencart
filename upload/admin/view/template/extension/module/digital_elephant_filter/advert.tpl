<div class="form-group">
    <div id="advert-container" class="col-sm-10 col-lg-6">

    </div>
</div>

<script>
    $('#advert-container').load('<?= $ajax_advert ?>', function () {
        $('a[href=#tab-advert] i').removeClass('fa-spin');
        $('a[href=#tab-advert] i').removeClass('fa-refresh');
    });
</script>