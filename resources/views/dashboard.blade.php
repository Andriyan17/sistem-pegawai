@extends('layouts.admin')
@section('title')
Dashboard
@endsection
@section('dashboard')
active
@endsection
@section('content')
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1>Dashboard Sistem Kepegawaian</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-6 col-lg-3">
          <div class="widget-small primary coloured-icon"><i class="icon fa fa-users fa-3x"></i>
            <div class="info">
              <h4>Users</h4>
              <p><b>{{ $user }}</b></p>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3"><a href="{{route('pegawai.create')}}">
          <div class="widget-small info coloured-icon"><i class="icon fa fa-edit fa-3x"></i>
            <div class="info"></a>
              <h4>Tambah Pegawai</h4>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3"><a href="{{route('pegawai.index')}}">
          <div class="widget-small warning coloured-icon"><i class="icon fa fa-files-o fa-3x"></i>
            <div class="info"></a>
              <h4>Data Pegawai</h4>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3"><a href="{{route('pegawai-pdf')}}">
          <div class="widget-small danger coloured-icon"><i class="icon fa fa-download fa-3x"></i>
            <div class="info"></a>
              <h4>Report Pegawai</h4>
            </div>
          </div>
        </div>
      </div>
    </main>
@endsection