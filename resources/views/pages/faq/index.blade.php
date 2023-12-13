@extends('layouts.main')

@section('container')
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <h4 class="m-0 font-weight-bold text-blue my-5">Frequently Asked Questions (FAQ)</h4>
            <div id="accordion">
                @foreach($daftarPertanyaan as $dp)
                <div class="card">
                    <div class="card-header" id="faqOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link text-grey text-title1 text-decoration-none"
                                    data-toggle="collapse" data-target="#collapseFaqOne" aria-expanded="true"
                                    aria-controls="collapseFaqOne">
                                <span><i class="fas fa-question-circle text-red"></i></span>
                                {{$dp -> nama_faq}}
                            </button>
                        </h5>
                    </div>

                    <div id="collapseFaqOne" class="collapse show" aria-labelledby="faqOne" data-parent="#accordion">
                        <div class="card-body text-decoration-none">
                            <span><i class="fas fa-quote-right text-red"></i></span>
                            <p class="text-title1" style="color: #0B090A">{{$dp -> isi_faq}}</p>

                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
