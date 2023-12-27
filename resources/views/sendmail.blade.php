<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        main {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        form {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            box-sizing: border-box;
            margin-bottom: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: #555;
            font-weight: bold;
        }
        input, textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }
        button {
            background-color: #2c3e50;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 18px;
        }
        button:hover {
            background-color: #708090;
        }

        /* Style for success message */
        .success-message {
            text-align: center;
            margin-top: 20px;
            color: #2c3e50;
            font-weight: bold;
        }
    </style>
</head>
<body>


    <main>
        <form action="{{ route('submit') }}" method="POST">
            @csrf
        <div class="container">
         <div>
           <a href="{{ LaravelLocalization::getlocalizedUrl('en') }}">English</a>
           <a href="{{ LaravelLocalization::getlocalizedUrl('ar') }}">Arabic</a>
         </div>
        </div>
            <h1>{{ __('messages.contactForm') }}</h1>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="{{ old('name')}}" required>
            @error('name')
              <div style="color: red;">{{ $message }}</div>
            @enderror

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="{{ old('email')}}" required>
            @error('email')
              <div style="color: red;">{{ $message }}</div>
            @enderror

            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" value="{{ old('subject')}}" required>
            @error('subject')
              <div style="color: red;">{{ $message }}</div>
            @enderror

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="4" required>{{ old('message')}}</textarea>
            @error('message')
              <div style="color: red;">{{ $message }}</div>
            @enderror

            <button type="submit">Submit</button>
        </form>

        <!-- Display success message -->
        @if(session('success'))
            <div class="success-message">
                {{ session('success') }}
            </div>
        @endif
    </main>

</body>
</html>
