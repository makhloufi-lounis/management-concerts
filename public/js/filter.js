/**
 * Created by Lounis on 18/01/2016.
 */

$(function(){

    /**
     * Filter
     */

    $('#send').on('submit', function(e){
        e.preventDefault();
        var $this = $(this);
        getConcertsWithFilter($this);
    });

    function  getConcertsWithFilter($this){
        $.ajax({
            url: "/ajax-request/filter",
            type: $this.attr('method'),
            data: $this.serialize(),
            dataType:   'html',
            success: function(data)
            {
                if(data == 'error') {
                    location.href = '/';
                }else {
                    $('.next-concerts').html(data);
                }
            },
            error : function() {
                return;
            }
        });
    }

});

