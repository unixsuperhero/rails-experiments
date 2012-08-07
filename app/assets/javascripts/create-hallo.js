jQuery(document).ready(function() {
  // Instantiate Create
  jQuery('body').midgardCreate({
    url: function() {
      return '/pages/update';
    },
    highlightColor: '#f80000'
  });

//  // Fake Backbone.sync since there is no server to communicate with
//  Backbone.sync = function(method, model, options) {
//    if (console && console.log) {
//      console.log('Model contents', model.toJSONLD(), method, model, options);
//    }
//    options.success(model);
//  };
});
