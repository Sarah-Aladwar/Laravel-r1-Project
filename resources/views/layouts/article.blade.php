<!doctype html>
<html class="no-js" lang="en">

  <!-- head -->
  @include('includes.head')
	
	<body>
		<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
		
        <!-- header-top -->
        @include('includes.header')

	    <!-- top-area -->
        @include('includes.toparea')
	
		@yield('content')


        <!-- footer -->
        @include('includes.footer')

        


        </body>
	
    </html>