$( () => {
  var clickableTableRow = {
    clickableTableRowElement: 'tr[data-href]',

    init: function() {
      $.each($(this.clickableTableRowElement), (_, tr) => {
        $(tr).find('td').not(':last').on('click', function() {
          document.location = $(this).parent('tr').data('href');
        });
      })
    }
  }
  clickableTableRow.init();
});
