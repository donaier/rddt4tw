$(document).ready(function() {
  if ($('#posts').length) {
    $(window).resize(function() {
      $('#posts').perfectLayout(window.photos);
    });
  };
});
