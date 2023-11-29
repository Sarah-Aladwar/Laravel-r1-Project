<!DOCTYPE html>
<html lang="en">
<head>
    <title>Car detail</title>
</head>
<body>

<div class="container">
    <h2>Car Details</h2>

    <p><strong>Title: </strong>{{ $car->cartitle }}</p>
    <p><strong>Price: </strong>{{ $car->price }}</p>
    <p><strong>Description: </strong>{{ $car->description }}</p>

    @if($car->published)
        <p><strong>Status: </strong>Published</p>
    @else
        <p><strong>Status: </strong>Not Published</p>
    @endif

</div> 

</body>
</html>
 