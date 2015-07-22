// A plugin to annotate code blocks

(function() {
    var $codecards = $('.code-card');
    var $window = $(window);

    var ii = 0;

    var run_plugin = function() {
        transform_code();
        set_up_resize();
        $window.resize();
    };

    var transform_code = function() {
        $codecards.each(function(i, e) {
            var $code_card = $(e);
            var done_text = "";
            var remaining_text = $code_card.find('code').html();
            var id = $code_card.attr('id');

            var aleft  = '.annotation-left[for='  + id + ']';
            var adown  = '.annotation-down[for='  + id + ']';
            var aright = '.annotation-right[for=' + id + ']';

            var $annotations = $(aleft + ', ' + adown + ', ' + aright);

            $annotations.each(function(i, e) {
                var $ann = $(e);
                var aid = ii;
                ii = ii + 1;

                var a = '<a name="' + aid + '"></a>';
                var at = '' + $ann.data('at');
                var re = new RegExp(escapeRegExp(at));
                var sep = "UnlikelyText019292";
                var f = function(g) {
                    return g + a + sep;
                };
                var temp_text = remaining_text.replace(re, f);
                var split = temp_text.split(sep);
                done_text = done_text + split[0];
                remaining_text = split[1];
                $ann.data('aid', aid);
                $ann.css({display:"block"});
            });

            done_text = done_text + remaining_text;

            done_text = done_text.replace(new RegExp("(\n|$)", "g"),
                                          "<a></a>\n");

            $code_card.html(done_text);

            var mright = _.max($code_card.find('a'),
                               function(a) {
                                   var a = $(a);
                                   return a.position().left + a.width();
                               });

            $(aleft).each(function(i, e) {
                var $ann = $(e);
                var aid = $ann.data('aid');
                var $a = $code_card.find('a[name=' + aid + ']');
                $ann.data('a', $a);
                $ann.data('mright', mright);
                $ann.html('<img src="/img/left arrow.png" style="width:50px"></img>' + 
                          $ann.html());
            });
            $(adown).each(function(i, e) {
                var $ann = $(e);
                var aid = $ann.data('aid');
                var $a = $code_card.find('a[name=' + aid + ']');
                $ann.data('a', $a);
                $ann.html($ann.html() +
                          '<img src="/img/down arrow.png" style="display:block;height:50px"></img>');
                $code_card.css({'margin-top': 85});
            });
            $(aright).each(function(i, e) {
                var $ann = $(e);
                var aid = $ann.data('aid');
                var $a = $code_card.find('a[name=' + aid + ']');
                $ann.data('a', $a);
                $ann.html($ann.html() +
                          '<img src="/img/right arrow.png" style="width:50px"></img>');
            });
        });
    };

    var set_up_resize = function() {
        $window.resize(function() {
            $('.annotation-left').each(function(i, e) {
                var $e = $(e);
                var $a = $e.data('a');
                var $mright = $($e.data('mright'));
                var pos = $a && $a.position();
                if(pos)
                    $e.css({top: pos.top + 4,
                            left: $mright.position().left + $mright.width() + 12});
            });
            $('.annotation-right').each(function(i, e) {
                var $e = $(e);
                var $a = $e.data('a');
                var pos = $a && $a.position();
                if(pos)
                    $e.css({top: pos.top - $e.height() / 4,
                            left: - $e.width()});
            });
            $('.annotation-down').each(function(i, e) {
                var $e = $(e);
                var $a = $e.data('a');
                var pos = $a && $a.position();
                if(pos)
                    $e.css({top: pos.top - $e.height(),
                            left: pos.left});
            });

        });
    };

    var escapeRegExp = function (s) {
        return s.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g, "\\$&");
    }
    $(run_plugin);
}());
