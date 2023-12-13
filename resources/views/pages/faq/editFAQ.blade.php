@extends('layouts.main')
@section('container')
    <div class="row">
        <div class="col-md-8 offset-md-2 mt-2">
            @if($errors->any())
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif
            <h3 class="text-blue font-weight-bold mt-5 mb-5">
                <a class="text-decoration-none" href="{{ url('/adminFAQ') }}"><i class="fas fa-arrow-left text-red"></i>&emsp;&emsp;</a>
                Edit FAQ
            </h3>
            <form action="" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group mb-3">
                    <label for="name_donor_events" class="text-title1 text-blue">Edit  FAQ</label>
                    <input type="text"
                    class="form-control mt-1 text-title1 text-blue @error('name_donor_events') is-invalid @enderror"
                    id="name_donor_events" name="nama_faq"
                    placeholder="Masukan nama faq" required value="{{$editFAQ -> nama_faq}}">
                    @error('name_donor_events')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <div class="form-group mb-3">
                    <label for="desc_donor_events" class="text-title1 text-blue">isi FAQ</label>
                    <textarea
                        class="form-control text-title1 text-blue @error('desc_donor_events') is-invalid @enderror"
                        id="desc_donor_events" name="isi_faq"
                        rows="3" placeholder="isi jawaban dari FAQ" required>{{$editFAQ -> isi_faq}}</textarea>
                    @error('desc_donor_events')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <button class="btn bg-red text-white mt-4 w-25 text-title2" type="submit">Simpan</button>
            </form>
        </div>
    </div>
@endsection
@section('custom-script')
    <script type="text/javascript">
        $(".custom-file-input").on("change", function () {
            var fileName = $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
    </script>
    <script type="text/javascript">
        function validateSize(input) {
            const fileSize = input.files[0].size / 1024 / 1024;
            if (fileSize > 1) {
                alert('Ukuran maksimum 1 Mb');
                document.getElementById('customFile').value = "";
            }
        }
    </script>
@endsection

