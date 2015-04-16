<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>Wat | LispCast</title>
    <meta name="description" content="">
    <meta name="author" content="Eric Normand">

    <meta name="viewport" content="width=device-width,initial-scale=1">

    <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Inconsolata" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="/css/styles.css" type="text/css">

    <link rel="alternate" type="application/rss+xml" title="LispCast" href="/feed" />

<!-- start Mixpanel --><script type="text/javascript">(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.track_charge people.clear_charges people.delete_user".split(" ");
for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="//cdn.mxpnl.com/libs/mixpanel-2.2.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);
mixpanel.init("ffad2bd88d2cb690edbbba6cf30b2958");</script><!-- end Mixpanel -->
  </head>

  <body>
    <header class="banner">
      <h1 class="banner-logo">
        <a href="/">
          <img class="banner-logo-img"
               src="/img/Logo@2x.png"
               alt="LispCast" />
        </a>
      </h1>

      <div class="meta-data">
        <img class="bio-img"
             src="/img/eric_bio.jpg" />
        <a class="twitter-link"
           href="http://twitter.com/ericnormand">
          <i class="fa fa-twitter"></i>
        </a>
        <a class="github-link"
           href="https://github.com/ericnormand">
          <i class="fa fa-github"></i>
        </a>
        <a class="mail-link"
           href="mailto:eric@lispcast.com">
          <i class="fa fa-envelope"></i>
        </a>
        <a class="rss-link"
           href="/feed">
          <i class="fa fa-rss-square"></i>
        </a>
        <a class="rss-link"
           href="/archive.html">
          <i class="fa fa-list"></i>
        </a>
      </div>

    </header>

    <div class="main-container">


        <article class="article">
          <h2 class="article-title-wrapper">
            <a class="article-title"
               href="https://github.com/manuel/wat-js">
              Wat
            </a>
            <a class="loguito"
               href="http://www.lispcast.com/wat">
              <img class="lambda-loguito"
                   src="/img/lambda.png" />
            </a>
          </h2>

          <div class="timestamp">
            September 07, 2012
          </div>

          
<p>A Lisp written in Javascript with first-class environments and first-class continuations. The README claims it starts in 50ms on modern browsers. Looks interesting.</p>


          <div class="endmark">
            <a class="endmark-link"
               href="/">
              <img class="endmark-lambda"
                   src="/img/lambda.png" />
            </a>
          </div>

        </article>


      <div class="notes">

      </div>

    </div>

    <footer class="footer-banner">
      <a class="footer-previous"
         href="http://www.lispcast.com/liberator">
        <i class="fa fa-chevron-left footer-arrow"></i>
      </a>
      <a class="footer-next"
         href="http://www.lispcast.com/deferring-type-errors-to-runtime">
        <i class="fa fa-chevron-right footer-arrow"></i>
      </a>
    </footer>


    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <script>

      document.write('<script src="https://oberon.herokuapp.com/cookie/get.js?_=' + (new Date()).getTime() + '"><\/script>');

          if(window.oberon && mixpanel) {
            if(document.cookie.indexOf('oberon-id') < 0) {
              var expires = (new Date((new Date().getTime() + 1000*60*60*24*365*10))).toUTCString();
              mixpanel.alias(window.oberon.id);
              document.cookie = "oberon-id=" + window.oberon.id + ";expires=" + expires + ";path=/";
            }
            mixpanel.identify(window.oberon.id);
          }

      mixpanel.register({URL: window.location.pathname,
                         Title: $("title").text()});

      mixpanel.track("Page Visit");

      mixpanel.track_forms('.gazette-form', 'Submit Clojure Gazette');
      mixpanel.track_forms('.subscribe-form', 'Subscribe');

      mixpanel.track_links('a.homepage-offer-box-link',
                           'Click PurelyFunctional.tv',
                           function(e) {
                             return {ToURL: $(e).prop('href')};
                           });

      mixpanel.track_links('a.js-clojuregazette',
                           'Click Clojure Gazette',
                           function(e) {
                             return {ToURL: $(e).prop('href')};
                           });

      $('input[name=EMAIL]').change(function() {
                                                      var i = $(this);
                                                      window.o_email = i.val();
                                                      });

      $('form').submit(function() {
        if(window.o_email)
          mixpanel.people.set({"$email": window.o_email});
});

    </script>

  </body>
</html>
