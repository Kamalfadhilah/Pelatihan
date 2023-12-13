@extends('layouts.main')
@section('custom-head')
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
@endsection
@section('container')
    <div class="row">
        <div class="col-md-5 col-sm-12 mt-5">
            <div class="input-wrapper mb-5">
                <form action="{{ url('/artikel') }}" method="GET" id="search-form">
                    <input type="search" class="input-search rounded" placeholder="Cari Artikel Lainnya" name="search"
                           id="query" autocomplete="off" value="{{ request('search') }}">
                </form>
                <svg xmlns="http://www.w3.org/2000/svg" class="input-icon" viewBox="0 0 20 20"
                     fill="currentColor">
                    <path fill-rule="evenodd"
                          d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                          clip-rule="evenodd"/>
                </svg>
            </div>
            @foreach($datas as $data)
                <a href="#" class="text-decoration-none" data-toggle="modal" data-target="#detailModal{{$loop->index}}">
                    <div class="list-event card py-2 mb-3" style="max-width: 465px;">
                        <div class="row">
                            <div class="col-8">
                                <p style="max-lines: 2;"
                                   class="text-title1 text-blue ml-2">{{ $data->name_artikel }}</p>
                                <p>
                                    <span class="text-primary text-body1 mt-2 ml-2">Dobu</span>
                                    <span class="text-secondary text-body1 ml-2">&bull;</span>
                                    <span
                                        class="text-secondary text-body1 ml-2">{{ \Carbon\Carbon::parse( $data->start_date_artikel)->translatedFormat('d-m-Y') }}</span>
                                </p>

                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded-right"
                                     src="{{ $data->thumbnail_artikel ?? url('https://source.unsplash.com/350x200?book')}}"
                                     width="130px" alt="event">
                            </div>
                        </div>
                    </div>
                </a>
            @endforeach
        </div>
        <div class="col-md-6 col-sm-12 mt-5">
            <div class="d-flex flex-column">
                <img class="img-fluid m-5 pt-1 pb-4" src="{{ url('images/doctor.svg') }}" alt="Dokter">
                <p class="text-left m-auto text-blue text-title1 pb-2"
                   style="font-size: 30px;line-height: 30px;font-family: 'Montserrat', sans-serif;">
                   Bacalah Artikel</p>
                <p class="text-left pt-4 m-auto text-secondary text-title1">
                    Perbanyak literasi selain membaca buku dengan cara membaca artikel.
                    Mari tingkatkan literasimu dengan dobu!
                </p>
            </div>
        </div>
        @foreach($datas as $data)
            <div class="modal fade" id="detailModal{{ $loop->index }}" tabindex="-1" aria-labelledby="detailModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title font-weight-bold text-title1 text-blue text-truncate"
                                id="detailModalLabel">
                                Detail Artikel
                            </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="d-flex flex-column">
                                @php
                                    $startDate = \Carbon\Carbon::parse($data->start_date_artikel);
                                    $endDate = \Carbon\Carbon::parse($data->end_date_artikel);
                                    $startTime = \Carbon\Carbon::parse($data->start_time_artikel);
                                    $endTime = \Carbon\Carbon::parse($data->end_time_artikel);
                                @endphp
                                <img class="img-fluid rounded"
                                     src="{{ $data->thumbnail_artikel ?? url('https://source.unsplash.com/350x200?book') }}"
                                     alt="image">
                                <p class="ellipsis-2 text-blue text-title1 mt-2">{{ $data->name_artikel }}</p>
                                <p>
                                    <span class="text-primary text-body1 mt-2">Dobu</span>
                                    <span class="text-secondary text-body1">&bull;</span>
                                    <span
                                        class="text-secondary text-body1">{{ $data->institutions->name_institutions }}</span>
                                </p>
        
                                
                                
                                <p class="text-blue text-title1 mt-2">Deksripsi</p>
                                <p class="text-body1 mt-1">{{ $data->desc_artikel }}</p>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <form action="{{ url('/donor') }}" method="GET">
                                <input type="hidden" name="artikel" value="{{ $data->id_artikel }}">
                                <button type="button" class="btn bg-red text-white"" data-dismiss="modal">Close</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
@section('custom-script')
    <script>
        let timeout = null;
        $("input[type='search']").keyup(function () {
            clearTimeout(timeout);
            timeout = setTimeout(() => {
                $('#search-form').submit();
            }, 1000);
        });
    </script>
@endsection

