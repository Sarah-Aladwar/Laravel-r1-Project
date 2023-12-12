
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
	
		<!-- welcome-hero -->
        @include('includes.welcome')

		<!-- list-topics -->
        @include('includes.listtopics')

		@include('includes.works')


		@include('includes.explore')

		@include('includes.reviews')

		@include('includes.stat')

		@include('includes.blog')

		@include('includes.sub')

        <!-- footer -->
        @include('includes.footer') 

        <!-- footerjs -->
        @include('includes.footerjs') 
		

    </body>
	
</html>