<!DOCTYPE html>
<html lang="en">
<head>
    <title>News detail</title>
</head>
<body>

<div class="container">
    <h2>News Details</h2>

    <p><strong>Title: </strong>{{ $news->title }}</p>
    <p><strong>Author: </strong>{{ $news->author }}</p>
    <p><strong>Content: </strong>{{ $news->content }}</p>

    @if($news->published)
        <p><strong>Status: </strong>Published</p>
    @else
        <p><strong>Status: </strong>Not Published</p>
    @endif

</div> 

</body>
</html>
 