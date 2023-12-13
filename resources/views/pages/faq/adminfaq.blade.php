@extends('layouts.main')

@section('container')
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <h4 class="m-0 font-weight-bold text-blue my-5">Frequently Asked Questions (FAQ)</h4>
            <button type="button" class="btn btn-primary mb-4" onclick="event.preventDefault(); location.href='{{ url('/tambah-faq') }}';">Tambah FAQ</button>
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
                            @if(auth()->guard('employee')->check())
                            <div class="d-flex justify-content-end">
                                <button type="button" class="btn btn-warning" onclick="event.preventDefault(); location.href='{{ url('/edit-faq/' . $dp->id) }}';" style="margin-right: 20px;">Edit pertanyaan</button>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                hapus pertanyaan
                                </button>
                            </div>
                            @endif
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
            <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            <form id="deleteAction" method="POST" action="adminFAQ/{{$dp -> id}}">
                @csrf
                @method("DELETE")
                <div class="modal-header">
                    <h5 class="modal-title">Apakah Anda yakin ingin menghapus pertanyaan ini <strong
                                    id="deleteModalLabel"></strong> ?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="hidden-value"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batalkan</button>
                    <button type="submit" class="btn btn-danger">Hapus</button>
                </div>
            </div>
            </form>
        </div>
    </div> 
        </div>   
    </div>
@endsection
