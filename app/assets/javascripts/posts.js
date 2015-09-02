$(document).ready(function() {
  if ($('#posts').length) {
    var gallery = $('#posts');

    gallery.perfectLayout(window.photos);

    $(window).resize(function() {
      gallery.perfectLayout(window.photos);
    });
    $(window).trigger('resize');
  };
});
