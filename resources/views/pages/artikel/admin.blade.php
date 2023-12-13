@extends('layouts.main')
@section('custom-head')
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.11.3/datatables.min.css"/>
@endsection
@section('container')
    <div class="row">
        <div class="col-md-12 mt-5 mb-2">
            <a href="{{ url('_artikel/create') }}" class="btn btn-primary">Tambah</a>
        </div>
        <div class="col-md-12">
            <table id="myTable" class="table table-stripped text-grey">
                <thead>
                <tr>
                    <th>No.</th>
                    <th>Foto</th>
                    <th>Nama Artikel</th>
                    <th>Deskripsi</th>
                    <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
        @if(session()->has('info'))
            <div class="position-fixed" style="right: 10px;bottom: 50px">
                <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-delay="5000">
                    <div class="toast-header d-flex justify-content-between">
                        <img src="{{ url('/images/logo.png') }}" class="rounded mr-2 img-fluid w-25" alt="...">
                        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="toast-body">
                        {{ session('info') }}
                    </div>
                </div>
            </div>
    @endif
    <!-- Modal -->
        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <form id="deleteAction" method="POST">
                    @csrf
                    @method("DELETE")
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Apakah Anda yakin akan hapus request darah dari <strong
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
@endsection
@section('custom-script')
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.11.3/datatables.min.js"></script>
    <script>
        $('#myTable').DataTable({
            processing: true,
            serverSide: true,
            "scrollX": true,
            ajax: '{{ route('artikel.data') }}',
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false},
                {data: 'thumbnail_artikel', name: 'thumbnail_artikel'},
                {data: 'name_artikel', name: 'name_artikel'},
                {data: 'desc_artikel', name: 'desc_artikel'},
                {data: 'action', name: 'action'},
            ]
        });
    </script>
    <script>
        const modal = document.getElementById("deleteModal");
        modal.addEventListener('hidden.bs.modal', function (_) {
            document.getElementById("id").remove();
            document.getElementById("deleteModalLabel").innerText = "";
        });

        function btnDelete(data) {
            console.log(data)
            $('#deleteModal').modal('show');
            document.getElementById("deleteModalLabel").innerText = data['name_artikel'];
            document.getElementById("deleteAction").action = "/_artikel/" + data['id_artikel'];
        }
    </script>
    <script>
        $('.toast').toast('show');
    </script>
@endsection
