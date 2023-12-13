@extends('layouts.main')
@section('container')
    <div class="row">
        @include('partials.overview')
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
            <h3 class="text-blue font-weight-bold mt-5">Stok Bank buku</h3>
            <small>Pengubah Terakhir : {{ $bookBank[0]->modified_by ?? "-" }}</small>
            <form action="{{ url('/_bank') }}" method="POST" class="mt-4">
                @csrf
                @method("PUT")
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group mb-3">
                            <label for="Novel" class="text-title1 text-blue">Novel</label>
                            <input type="text"
                                   class="form-control mt-1 text-title1 text-blue w-50 @error('Novel') is-invalid @enderror"
                                   id="Novel" name="Novel"
                                   placeholder="Jumlah" required value="{{ $bookBank[0]->Novel }}">
                            @error('Novel')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group mb-3">
                            <label for="Komik" class="text-title1 text-blue">Komik</label>
                            <input type="text"
                                   class="form-control mt-1 text-title1 text-blue w-50 @error('Komik') is-invalid @enderror"
                                   id="Komik" name="Komik"
                                   placeholder="Jumlah" required value="{{ $bookBank[0]->Komik }}">
                            @error('Komik')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group mb-3">
                            <label for="Kamus" class="text-title1 text-blue">Biografi</label>
                            <input type="text"
                                   class="form-control mt-1 text-title1 text-blue w-50 @error('Kamus') is-invalid @enderror"
                                   id="Kamus" name="Kamus"
                                   placeholder="Jumlah" required value="{{ $bookBank[0]->Kamus }}">
                            @error('Kamus')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group mb-3">
                            <label for="Atlas" class="text-title1 text-blue">Ilmiah</label>
                            <input type="text"
                                   class="form-control mt-1 text-title1 text-blue w-50 @error('Atlas') is-invalid @enderror"
                                   id="Atlas" name="Atlas"
                                   placeholder="Jumlah" required value="{{ $bookBank[0]->Atlas }}">
                            @error('Atlas')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group mb-3">
                            <label for="Biografi" class="text-title1 text-blue">Kamus</label>
                            <input type="text"
                                   class="form-control mt-1 text-title1 text-blue w-50 @error('Biografi') is-invalid @enderror"
                                   id="Biografi" name="Biografi"
                                   placeholder="Jumlah" required value="{{ $bookBank[0]->Biografi }}">
                            @error('Biografi')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group mb-3">
                            <label for="Ilmiah" class="text-title1 text-blue">Atlas</label>
                            <input type="text"
                                   class="form-control mt-1 text-title1 text-blue w-50 @error('Ilmiah') is-invalid @enderror"
                                   id="Ilmiah" name="Ilmiah"
                                   placeholder="Jumlah" required value="{{ $bookBank[0]->Ilmiah }}">
                            @error('Ilmiah')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group mb-3">
                            <label for="Majalah" class="text-title1 text-blue">Majalah</label>
                            <input type="text"
                                   class="form-control mt-1 text-title1 text-blue w-50 @error('Majalah') is-invalid @enderror"
                                   id="Majalah" name="Majalah"
                                   placeholder="Jumlah" required value="{{ $bookBank[0]->Majalah }}">
                            @error('Majalah')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group mb-3">
                            <label for="Dongeng" class="text-title1 text-blue">Dongeng</label>
                            <input type="text"
                                   class="form-control mt-1 text-title1 text-blue w-50 @error('Majalah') is-invalid @enderror"
                                   id="Dongeng" name="Dongeng"
                                   placeholder="Jumlah" required value="{{ $bookBank[0]->Dongeng }}">
                            @error('Dongeng')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                    </div>
                </div>
                <input type="hidden" name="modified_by" value="{{ auth()->user()->name_employees }}">
                <button class="btn bg-red text-white mt-4 w-25 text-title2" type="submit">Simpan</button>
            </form>
        </div>
        @if(session()->has('updateSuccess'))
            <div class="position-fixed" style="right: 10px;bottom: 50px">
                <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-delay="5000">
                    <div class="toast-header d-flex justify-content-between">
                        <img src="{{ url('/images/logo.png') }}" class="rounded mr-2 img-fluid w-25" alt="...">
                        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="toast-body">
                        {{ session('updateSuccess') }}
                    </div>
                </div>
            </div>
        @endif
    </div>
@endsection
@section('custom-script')
    <script>
        $('.toast').toast('show');
    </script>
@endsection
