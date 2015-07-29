$(document).ready(function() {
  console.log("categories.js ready");

  $("div.item").click(function() {
    slideItemRight($(this));
  });

});

function slideItemRight(item) {
  // var offset = item.offset();
  // var newLeft = offset.left + 60;
  // item.offset({ left: newLeft});

  item.animate({
    width: "200%"
  }, 2000, function() {
    item.append('<span class="float-right">Is better than..</span>');
  });
}
