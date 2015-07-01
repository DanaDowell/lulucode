import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.findAll('market');
  }/*,
  queryParams: {
    weekday: {
      refreshModel: false,
      replace: false,
      as: 'weekday'
    }
  }*/
});
