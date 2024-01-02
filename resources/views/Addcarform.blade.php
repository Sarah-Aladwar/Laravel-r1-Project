<!DOCTYPE html>
<html lang="en" dir="{{ LaravelLocalization::getCurrentLocaleDirection() }}">
<head>
  <title>Add Car</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style>
    .language-switch-container{
      display: flex;
      justify-content: flex-end;
    }

    .language-switch{
      margin-right: 5px;
      margin-top: 15px;
    }

    .language-switch a{
      text-decoration: none;
      color: #333;
      font-weight: bold;
      padding: 5px 10px;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }

    .language-switch a:hover {
      background-color: #f0f0f0;
    }
     
  </style>


</head>
<body>

<div class="container">
    <div class="language-switch-container">
      <div class="language-switch">
        <a href="{{ LaravelLocalization::getLocalizedURL('en') }}">English</a>
      </div>
      <div class="language-switch">
        <a href="{{ LaravelLocalization::getLocalizedURL('ar') }}">العربية</a>
      </div>
    </div>

    <h1>{{ __('car.head') }}</h1>
  <form action="{{ route('displaycar') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
      <label for="title">{{ __('car.title') }}:</label>
      <input type="text" class="form-control" id="title" placeholder="{{ __('car.title_ph') }}" name="cartitle" value="{{ old('cartitle') }}">
      @error('cartitle')
        <div class="alert alert-warning">{{ __('car.title_em') }}</div>
      @enderror
    </div>
    <div class="form-group">
      <label for="price">{{ __('car.price') }}:</label>
      <input type="number" class="form-control" id="price" placeholder="{{ __('car.price_ph') }}" name="price" value="{{ old('price') }}">
      @error('price')
        <div class="alert alert-warning">{{  __('car.price_em') }}</div>
      @enderror
    </div>
    <div class="form-group">
      <label for="description">{{ __('car.desc') }}:</label>
      <textarea class="form-control" rows="5" placeholder="{{ __('car.desc_ph') }}" id="description" name="description">{{ old('description') }}</textarea>
      @error('description')
       <div class="alert alert-warning">{{  __('car.desc_em') }}</div>
      @enderror
    </div> 
    <div class="form-group">
      <label for="image">{{ __('car.img') }}:</label>
      <input type="file" class="form-control" id="image" name="image" value="{{ old('image') }}">
      @error('image')
       <div class="alert alert-warning">{{  __('car.img_em') }}</div>          
      @enderror
    </div>
    <div class="form-group">
    <label for="category">{{ __('car.cat') }}:</label>
      <select name="category_id" id="">
        <option value="">{{ __('car.cat_ph') }}</option>
        @foreach($cat as $c)
          <option value="{{ $c->id }}" {{ old('category_id') == $c->id ? 'selected' : '' }} >{{$c->category_name}}</option>
        @endforeach
      </select>
      @error('category_id')
        <div class="alert alert-warning">{{  __('car.cat_em') }}</div>
      @enderror
    </div>
    <div>
      <input type="checkbox" id="published" name="published">
      <label for="published">{{ __('car.pub') }}</label>
    </div>
    <button type="submit" class="btn btn-default">{{ __('car.add') }}</button>
  </form>
</div>


</body>
</html> 