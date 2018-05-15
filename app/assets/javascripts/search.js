var app = window.app = {};


app.Tags = function() {
  this._input = $('#tags-search-txt');
  this._initAutocomplete();
};

app.Tags.prototype = {
  _initAutocomplete: function() {
    this._input
      .autocomplete({
        source: '/tags/search',
        appendTo: '#tags-search-results',
        select: $.proxy(this._select, this)
      })
      .autocomplete('instance')._renderItem = $.proxy(this._render, this);
  },

  _render: function(ul, item) {
    var markup = [
      
      '<span class="name">' + item.name + '</span>'
     
    ];
    return $('<li>')
      .append(markup.join(''))
      .appendTo(ul);
  },

  _select: function(e, ui) {
    window.location.href = '/tags/'+ ui.item.id;
    this._input.val(ui.item.name);
    return false;
  }
};

