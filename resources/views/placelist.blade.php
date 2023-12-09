<!DOCTYPE html>
<html lang="en">
<head>
  <title>Explore Places List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Explore Places List</h2>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Title</th>
        <th>Price from</th>
        <th>Price to</th>
        <th>Description</th>
        <th>Published</th>
        <th>Edit</th>
        <th>Show</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      @foreach($places as $p)
      <tr>
        <td>{{ $p->title }}</td>
        <td>{{ $p->price_from }}</td>
        <td>{{ $p->price_to }}</td>
        <td>{{ $p->description }}</td>
        <td> {{$p->published ? 'Yes' : 'No'}}
        </td>
        <td><a href="editplace/{{ $p->id }}">Edit</a></td>
        <td><a href="placedetail/{{ $p->id }}">Show</a></td>
        <td><a href="deleteplace/{{ $p->id }}">Delete</a></td>
      </tr>
      @endforeach
    </tbody>    
  </table>
</div>

</body>
</html>
 