
function createSong(artistId) {
  var songname = $('#song_name').val();
  var songyear = $('#release_year').val();
  var songgenre = $('#genre').val();
  var newSong = { artist_id: artistId, song_name: songname, release_year: songyear, genre:songgenre };

  $.ajax({
    type: "POST",
    url: "/artists/" + artistId + '/songs',
    contentType: "application/json",
    dataType: "json",
    data: JSON.stringify({
        song: newSong
      })
    })
    .done(function(data) {
      alert('Song created!')
      location.reload();
    })
  }


function deleteSong(artistId, songId) {
  $.ajax({
    type: "DELETE",
    url: "/artist/" + artistId + "/songs/" + songId,
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+songId+'"]').remove();
    alert('Song removed!')
    location.reload();
  });
}

function deleteAllTheSongs(artistId) {
  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistId + '/songs/destroy_all',
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    alert('All songs deleted!')
    location.reload();
  });
}

$(document).ready(function(){
  $(".createSong").bind('click', addSong);
  $(".deleteSong").bind('click', deleteSong);
});
