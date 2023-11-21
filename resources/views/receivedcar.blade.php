<!DOCTYPE html>
<html lang="en">
<head>
    <title>Received Car Data</title>
</head>
<body>

<div class="container">
    <h2>Car Data</h2>

    <p><strong>Title: </strong>{{ $title }}</p>
    <p><strong>Price: </strong>{{ $price }}</p>
    <p><strong>Description: </strong>{{ $description }}</p>

    @if($published)
        <p><strong>Status: </strong>Published</p>
    @else
        <p><strong>Status: </strong>Not Published</p>
    @endif

</div>

</body>
</html>
 