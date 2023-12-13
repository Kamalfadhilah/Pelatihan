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
                <a class="text-decoration-none" href="{{ url('/_artikel') }}"><i class="fas fa-arrow-left text-red"></i>&emsp;&emsp;</a>
                Tambah Acara
            </h3>
            <form action="{{ url('/_artikel') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group mb-3">
                    <label for="name_artikel" class="text-title1 text-blue">Nama Artikel</label>
                    <input type="text"
                           class="form-control mt-1 text-title1 text-blue @error('name_artikel') is-invalid @enderror"
                           id="name_artikel" name="name_artikel"
                           placeholder="Nama Artikel" required value="{{ old('name_artikel') }}">
                    @error('name_artikel')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <div class="form-group mb-3">
                    <label for="desc_artikel" class="text-title1 text-blue">Deksripsi</label>
                    <textarea
                        class="form-control text-title1 text-blue @error('desc_artikel') is-invalid @enderror"
                        id="desc_artikel" name="desc_artikel"
                        rows="3">{{ old('desc_artikel') }}</textarea>
                    @error('desc_artikel')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <div class="form-group mb-3">
                    <label for="ktp" class="text-title1 text-blue">Photo (Optional)</label>
                    <div class="custom-file mt-1">
                        <input onchange="validateSize(this)" type="file"
                               accept="image/jpeg,image/gif,image/png"
                               class="custom-file-input @error('thumbnail_artikel') is-invalid @enderror"
                               id="customFile" name="thumbnail_artikel">
                        <label class="custom-file-label text-title1 text-blue" for="customFile">Choose file</label>
                    </div>
                    @error('thumbnail_artikel')
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

