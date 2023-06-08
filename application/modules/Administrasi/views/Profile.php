<div class="pagetitle">
    <h1><?= $title ?></h1>
</div><!-- End Page Title -->

<section class="section">
    <div class="row">
        <div class="col-lg">
            <div class="card">
                <div class="card-body mt-3">

                    <form class="row g-3 mt-3">
                        <div class="mb-3 row">
                            <label for="staticPassword_Lama" class="col-sm-2 col-form-label">Password Lama</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="staticPassword_Lama" name="current_password">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="inputPassword_Baru" class="col-sm-2 col-form-label">Password Baru</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword_Baru" name="new_password">
                            </div>
                        </div>
                        <div>
                            <button class="btn btn-primary" type="submit">Ubah</button>
                        </div>
                    </form>

                </div>
            </div>


        </div>
</section>

<script>
    let dt;
    let formUrl;
    let fm = '#fm';

    $(document).ready(function() {


    });







    $("form").submit(function(e) {
        e.preventDefault();
        $.ajax({
            url: _url.concat('/edit'),
            type: 'post',
            data: $(this).serialize(),
            success: function(data, textStatus, jqXHR) {

                let view = jQuery.parseJSON(data);
                // console.log(view);
                if (view.status == true) {
                    toastr.success(view.message);
                } else {
                    toastr.error(view.message);
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                toastr.error('Data Gagal disimpan.');
            }
        });
    });

    function clearText() {

    }
</script>