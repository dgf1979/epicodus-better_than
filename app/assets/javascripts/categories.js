$(document).ready(function() {
  console.log("categories.js ready");

  $("div.rank-item.rank-left").click(function() {
    if (!$(this).hasClass('selected')) {
      extendItemRight($(this));
      selectToggle($(this));
      updateBetterThan($(this));
    }
  });

  $("div.rank-item.rank-right").click(function() {
    if ($("#voted_up_item_id").val() === $(this).attr('data-id')) {
      alert("A thing can't be better than itself. OR CAN IT? \n ... \n (no, it can't.)");
    } else {
      if (!$(this).hasClass('selected')) {
        extendItemLeft($(this));
        selectToggle($(this));
        updateWorseThan($(this));
      }
    }
  });

  $("#vote-button").click(function() {
    $('#vote-form').submit();
  });

});

function updateBetterThan(item) {
  resetWorseThan();
  $("#voted_up_item_id").val(item.attr('data-id'));
  $("#left-thing").html('<h1 style="text-align: center;">' + item.html() + '</h1>');
  $("#right-thing").removeClass("start-hidden");
  allowVote();
}

function updateWorseThan(item) {
  $("#voted_down_item_id").val(item.attr('data-id'));
  $("#right-thing").html('<h1 style="text-align: center;">' + item.html() + '</h1>');
  $("#better-than").removeClass("start-hidden");
  allowVote();
}

function resetWorseThan() {
  $("#voted_down_item_id").val('');
  $("#better-than").addClass("start-hidden");
  $("#right-thing").html('<h3 style="text-align: right;">\
    Which one is overrated?\
    <span class="glyphicon glyphicon-hand-right"></span>\
    </h3>');
  $("#item-list-worse").find(".rank-item.selected").attr('style', '');
  $("#item-list-worse").find(".rank-item.selected").removeClass('selected');
}

function allowVote() {
  var up = parseInt($("#voted_up_item_id").val());
  var down = parseInt($("#voted_down_item_id").val());

  if (up && down) {
    $("#vote-thing").removeClass("start-hidden");
  } else {
    $("#vote-thing").addClass("start-hidden");
  }
}

function selectToggle(item) {
  var lastSelected = item.parents(".item-list").find(".rank-item.selected");
  lastSelected.each(function(i) {
    var selected = $(this);
    selected.attr('style', '');
  });
  lastSelected.removeClass('selected');
  item.addClass('selected');
}

function extendItemRight(item) {
  var position = item.position();
  var left = position.left + 20;

  item.animate({
    left: left + 'px'
  }, 600, function() {
    hideHigherRanked(item);
  });
}

function extendItemLeft(item) {
  var position = item.position();
  var left = position.left - 20;
  item.animate({
    left: left + 'px'
  }, 600, function() {

  });
}

function hideHigherRanked(item) {
  var itemRank = item.parents(".rank-group").attr("data-rank");

  $("#item-list-worse > .rank-group").each(function(i) {
    var rankGroup = $(this);
    var groupRank = parseInt(rankGroup.attr('data-rank'));
    if (groupRank > itemRank) {
      rankGroup.slideUp("fast");
    } else {
      rankGroup.slideDown("fast");
    }
  });

  scrollUnderSelected(item);

}

function scrollUnderSelected(item) {
  var bottomOfItem = item.offset().top + item.height();
  var worseItemDiv = $("#item-list-worse");
  var newTop = bottomOfItem + worseItemDiv.height() + 100;

  worseItemDiv.animate({
    top: '1000px'
  }, 2000, function() {
    console.log('done');

  });
}
