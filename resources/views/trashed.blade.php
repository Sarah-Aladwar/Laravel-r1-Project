<!DOCTYPE html>
<html lang="en">
<head>
  <title>Trashed Car List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Trashed Car List</h2>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Title</th>
        <th>Price</th>
        <th>Description</th>
        <th>Published</th>
        <th>Restore</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      @foreach($cars as $car)
      <tr>
        <td>{{ $car->cartitle }}</td>
        <td>{{ $car->price }}</td>
        <td>{{ $car->description }}</td>
        <td> {{$car->published ? 'Yes' : 'No'}}
        </td>
        <td><a href="restorecar/{{ $car->id }}">Restore</a></td>
        <td><a href="forcedelete/{{ $car->id }}">Delete</a></td>  
    </tr>
      @endforeach
    </tbody>    
  </table>
</div>

</body>
</html>
 