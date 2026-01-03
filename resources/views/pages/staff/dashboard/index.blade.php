@extends('layouts.app')

@section('content')
 @if(auth()->user()->staff->jabatan == 'keuangan')
    @include('pages.staff.dashboard.partials.dashboard_staff_keuangan')
 @endif
@endsection
