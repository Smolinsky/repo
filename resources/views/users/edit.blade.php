@extends('master')
@section('content')
<div class="container">
  <form method="post" action="{{action('UsersController@update', $id)}}">
    <div class="form-group row">
      {{csrf_field()}}
       <input name="_method" type="hidden" value="PATCH">
      <label for="Input1" class="col-sm-2">Name</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="Input1" placeholder="Name" name="name" value="{{$users->name}}">
      </div>
    </div>
    <div class="form-group row">
      <label for="Input2" class="col-sm-2">Email</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="Input2" placeholder="email" name="email" value="{{$users->email}}">
      </div>
    </div>
    <div class="form-group row">
      <label for="Input3" class="col-sm-2">Country</label>
      <div class="col-sm-10">
      <select name="country" class="form-control" id="Input3">
        <option value="{{ $users->country }}">{{ $users->country }}</option>
        @foreach ($countries as $country)
        <option value="{{ $country->name_ru }}">{{ $country->name_ru }}</option>
        @endforeach
      </select>
      </div>
    </div>
    <div class="form-group row">
      <button type="submit" class="btn btn-primary width100">Update</button>
    </div>
  </form>
</div> 
@endsection
