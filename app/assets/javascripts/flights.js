jQuery(function() {
  table = $('#flights_table').dataTable({
        "paging":   false,
        "order": [[ 5, "asc" ]],
        "bAutodWidth": false,
        "aoColumns": [{ "sWidth": "10%" }, { "sWidth": "10%" }, { "sWidth": "20%" }, { "sWidth": "15%" }, { "sWidth": "5%" }, { "sWidth": "5%" }, { "sWidth": "10%" }, { "sWidth": "5%" }, { "sWidth": "5%"}, {"sWidth": "5%"}]
    });

  $('#flights_table').delegate('tbody > tr', 'click', function ()
  {
      // 'this' refers to the current <td>, if you need information out of it
      var data = table.fnGetData(this);
      url = 'https://www.kayak.com/flights/'+data[0]+'-'+data[1]+'/weekend'
      window.open(url);
  });


});
