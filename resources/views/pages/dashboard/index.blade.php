@extends('layouts.main')
@section('custom-head')
    <link href="{{ url('/vendor/powerful-calendar/style.css') }}" rel="stylesheet">
    <link href="{{ url('/vendor/powerful-calendar/theme.css') }}" rel="stylesheet">
@endsection
@section('container')
        @include('partials.overview')
        <div class="col-md-6 col-sm-12">
            <div class="card mb-4 mx-auto" style="width: 100%;">
                <div class="card-header py-3">
                    <div class="d-flex">
                        <h6 class="m-auto text-title1 text-red text-center"><span>
                                 <svg width="17" height="17" viewBox="0 0 17 17" fill="none"
                                      xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M6.58957 2.45232C7.88312 2.45232 9.05482 2.97724 9.90781 3.82086L7.52693 6.20175H13.1511V0.577606L11.2295 2.49919C10.039 1.30874 8.39867 0.577606 6.58957 0.577606C3.2807 0.577606 0.562369 3.02411 0.103065 6.20175H1.99653C2.42771 4.06457 4.32117 2.45232 6.58957 2.45232ZM11.8763 11.0198C12.4949 10.1761 12.9261 9.17317 13.0761 8.07646H11.1826C10.7514 10.2136 8.85798 11.8259 6.58957 11.8259C5.29602 11.8259 4.12432 11.301 3.27133 10.4573L5.65222 8.07646H0.0280762V13.7006L1.94966 11.779C3.1401 12.9695 4.78047 13.7006 6.58957 13.7006C8.04248 13.7006 9.3829 13.2225 10.4702 12.4258L15.0258 16.972L16.4224 15.5753L11.8763 11.0198Z"
                                fill="#184EBA"/>
                        </svg>
                            </span>Penerima Buku
                        </h6>
                    </div>
                </div>
                <div class="card-body">
                    <div class="overflow-auto p-3 mb-3 mb-md-0 mr-md-3" style=" max-height: 250px;">
                        @if($donorSubmissions->count())
                            @foreach($donorSubmissions as $data)
                                @php
                                    $bg_condition = 'bg-secondary';
                                    if($data->status_donor_submissions === 1) $bg_condition = 'bg-red';
                                    elseif($data->status_donor_submissions === 2) $bg_condition = 'bg-primary';
                                    elseif($data->status_donor_submissions === 3) $bg_condition = 'bg-success';
                                    elseif($data->status_donor_submissions === 4) $bg_condition = 'bg-red-2'
                                @endphp
                                <div class="rounded px-3 mb-3 {{ $bg_condition }}">
                                    <h5 class="text-white text-title1 py-2">Memohon Buku
                                        Tipe
                                        <strong>{{ $data->book_type_donor_submissions }}{{ $data->book_type_donor_submissions == 'positive' ? '+' : '-'}}</strong>
                                        di {{ $data->institutions->name_institutions }}</h5>
                                    <div class="d-flex justify-content-between pb-3">
                                        <p class="text-white text-body1">{{ $data->time_used_donor_submissions ? \Carbon\Carbon::parse($data->time_used_donor_submissions)->translatedFormat('d-m-Y') :  '-' }}</p>
                                        <p class="text-white text-body1">{{ $data->status->name_status_donor }}</p>
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <p class="text-center">Belum melakukan peminjaman buku</p>
                        @endif
                    </div>
                    <hr>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-12">
            <div class="card mb-4 mx-auto" style="width: 100%;">
                <div class="card-header py-3">
                    <div class="d-flex">
                        <h6 class="m-auto text-title1 text-red text-center"><span>
                                <svg width="28" height="24" viewBox="0 0 28 24" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
<path
    d="M19.9248 12.8333C23.9161 9.555 27.6748 6.48667 27.6748 3.85C27.6748 1.69167 25.8019 0 23.4123 0C22.069 0 20.7644 0.571667 19.9248 1.45833C19.0723 0.571667 17.7806 0 16.4373 0C14.0477 0 12.1748 1.69167 12.1748 3.85C12.1748 6.48667 15.9336 9.555 19.9248 12.8333ZM16.4373 2.33333C17.0056 2.33333 17.5869 2.57833 17.9615 2.975L19.9248 5.06333L21.8881 2.975C22.2627 2.57833 22.844 2.33333 23.4123 2.33333C24.3681 2.33333 25.0915 2.98667 25.0915 3.85C25.0915 5.15667 22.4565 7.54833 19.9248 9.67167C17.3931 7.54833 14.7581 5.145 14.7581 3.85C14.7581 2.98667 15.4815 2.33333 16.4373 2.33333Z"
    fill="#184EBA"/>
<path
    d="M23.7998 16.3333H21.2165C21.2165 14.9333 20.2477 13.6733 18.8011 13.1833L10.8444 10.5H0.549805V23.3333H8.2998V21.6533L17.3415 23.9167L27.6748 21V19.8333C27.6748 17.8967 25.944 16.3333 23.7998 16.3333ZM3.13314 21V12.8333H5.71647V21H3.13314ZM17.3027 21.4783L8.2998 19.2267V12.8333H10.3794L17.8969 15.365C18.3361 15.5167 18.6331 15.9017 18.6331 16.3333C18.6331 16.3333 16.0627 16.275 15.6623 16.1583L12.5881 15.2367L11.7744 17.4533L14.8486 18.375C15.5073 18.5733 16.1919 18.6783 16.8894 18.6783H23.7998C24.3036 18.6783 24.7556 18.9467 24.9623 19.3317L17.3027 21.4783Z"
    fill="#184EBA"/>
</svg>
                            </span>Donatur Buku
                        </h6>
                    </div>
                </div>
                <div class="card-body">
                    <div class="overflow-auto p-3 mb-3 mb-md-0 mr-md-3" style=" max-height: 250px;">
                        @if($donorNotes->count())
                            @foreach($donorNotes as $data)
                                @php
                                    $bg_condition = 'bg-secondary';
                                    if($data->status_donor_notes === 1) $bg_condition = 'bg-red';
                                    elseif($data->status_donor_notes === 2) $bg_condition = 'bg-primary';
                                    elseif($data->status_donor_notes === 3) $bg_condition = 'bg-success';
                                    elseif($data->status_donor_notes === 4) $bg_condition = 'bg-red-2'
                                @endphp
                                <div class="rounded px-3 mb-3 {{ $bg_condition }}">
                                    <h5 class="text-white text-title1 py-2">Mendonasikan Buku
                                        <strong>{{ auth()->user()->status_donators}}</strong>
                                        di {{ $data->institutions->name_institutions }}</h5>
                                    <div class="d-flex justify-content-between pb-3">
                                        <p class="text-white text-body1">{{ \Carbon\Carbon::parse($data->schedule_donor_notes)->translatedFormat('d-m-Y') }}</p>
                                        <p class="text-white text-body1">{{ $data->status->name_status_donor }}</p>
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <p class="text-center">Belum melakukan pendaftaran donatur buku</p>
                        @endif
                    </div>
                    <hr>
                </div>
            </div>
        </div>
@endsection
@section('custom-script')
    <script> let dataCovid = @json($covidData) </script>
    <script>
        let dataRaw = @json($schedules);
        const dataSchedule = [];
        for (let i = 0; i < dataRaw.length; i++) {
            dataSchedule.push(dataRaw[i]['schedule_donor_notes']);
        }
    </script>
    <script src="{{ url('/vendor/chart.js/Chart.min.js') }}"></script>
    <script src="{{ url('/js/chart-covid.js') }}"></script>
    <script src="{{ url('/vendor/powerful-calendar/calendar.min.js') }}"></script>
    <script src="{{ url('/js/calendar.js') }}"></script>
@endsection
