$(function() {
  $('#routeButton').on('click', function() {
    var checkedVals = $(':checkbox:checked').map(function() {
          return this.value;
    }).get();
    alert(checkedVals.join(","));
  });
});

