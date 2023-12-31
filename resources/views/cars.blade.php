<!DOCTYPE html>
<html lang="en">
<head>
  <title>Car List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Car List</h2>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Title</th>
        <th>Price</th>
        <th>Description</th>
        <th>Category</th>
        <th>Published</th>
        <th>Edit</th>
        <th>Show</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      @foreach($cars as $car)
      <tr>
        <td>{{ $car->cartitle }}</td>
        <td>{{ $car->price }}</td>
        <td>{{ $car->description }}</td>
        <td>{{ $car->category->category_name }}</td>
        <td> {{$car->published ? 'Yes' : 'No'}}
        <!-- @if($car->published) 
              Yes 
            @else 
              No
            @endif  -->
        </td>
        <td><a href="editcar/{{ $car->id }}">Edit</a></td>
        <td><a href="cardetail/{{ $car->id }}">Show</a></td>
        <td><a href="deletecar/{{ $car->id }}">Delete</a></td>
      </tr>
      @endforeach
    </tbody>    
  </table>
</div>

</body>
</html>
 