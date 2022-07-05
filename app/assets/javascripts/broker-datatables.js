$(document).ready(function () {
  "use strict";


  // Datatables
  console.log("----------------------------------------------")
  $('#insurance-management-datatable').DataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#insurance-management-datatable').data('source'),
    "pagingType": "full_numbers",
    "columns": [
      {
        "data": "name"
      },
      {
        "data": "address"
      },
      {
        "data": "code"
      },
      {
        "data": "dt_actions"
      }
    ],
    "order": [],
    "columnDefs": [{
      "targets": 'no-sort',
      "orderable": false
    }]
  });

});