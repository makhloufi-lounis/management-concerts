/**
 * Created by Lounis on 18/01/2016.
 */
$(document).ready(function() {

    /**
     * google map
     */

    (function () {
        var geocoder = new google.maps.Geocoder(),
            address = $('#address').text() + $('#city').text() + ', ' + ' France';

        geocoder.geocode({'address': address}, function (results, status) {

            if (status == google.maps.GeocoderStatus.OK) {
                var latitude = results[0].geometry.location.lat();
                var longitude = results[0].geometry.location.lng();
            }

            var latlng = new google.maps.LatLng(latitude, longitude),

                map = new google.maps.Map(document.getElementById('map_canvas'), {
                    zoom: 12,
                    center: latlng,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                });

            var marker = new google.maps.Marker({
                position: latlng,
                map: map,
                title: address
            });
        });

    })();


    /**
     * youtube
     */

    (function () {

        // recuperation de nom de l'artiste
        artist = $('.artist-name').text();

        //On récupère les tous infos de l'artist  depuis l'API Youtube
        $.get('https://www.googleapis.com/youtube/v3/search?key=AIzaSyBT1Tv-CfTY1pOCJ2RcDsRQDQc9mR8NzUw', {
            q: artist, part: 'snippet'
        }, function (result) {

            //on vérifie que le videoId de premiers iteme existe sur Youtube
            if (result.items[0].id) {

                for (var i = 0; i < result.items.length; i++) {
                    if (result.items[i].id.videoId) {
                        videoId = result.items[i].id.videoId;
                    }
                }

                //On récupère les datas  depuis l'API Youtube
                $.get('https://www.googleapis.com/youtube/v3/videos?key=AIzaSyBT1Tv-CfTY1pOCJ2RcDsRQDQc9mR8NzUw', {
                    id: videoId,
                    part: 'player'
                }, function (result) {

                    //on vérifie que la vidéo existe sur Youtube grâce à player
                    if (result.items[0].player) {

                        //on affiche la video
                        video = result.items[0].player.embedHtml;
                        $('.video').html(video);

                    } else {
                        console.log('pas de video artist')
                    }

                }, 'json');

            } else {
                console.log('pas d\'infos artist')
            }

        }, 'json');

    })();
})()
