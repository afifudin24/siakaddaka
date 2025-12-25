@extends('layouts.app')

@section('content')
 @if(auth()->user()->staff->jabatan == 'Staff Keuangan')
    @include('pages.staff.dashboard.partials.dashboard_staff_keuangan')
 @endif
@endsection
