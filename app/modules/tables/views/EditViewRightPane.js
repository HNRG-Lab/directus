define([
  'core/RightPane',
  'core/widgets/timeline/TimelineWidget',
  'core/widgets/MetadataWidget'
], function(RightPane, TimelineWidget, MetadataWidget) {

  return RightPane.extend({

    attributes: {
      class: 'scroll-y wide no-title'
    },

    template: 'modules/tables/edit-right-pane',

    serialize: function() {
      return this.model ? this.model.toJSON() : {};
    },

    beforeRender: function() {
      this.baseView.rightSidebarView.$el.addClass('scroll-y wide no-title');

      this.insertView(new MetadataWidget({model: this.model}));
      this.insertView(new TimelineWidget({model: this.model}));
    }
  });
});
