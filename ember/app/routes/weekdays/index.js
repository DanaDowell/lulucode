import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.find('weekday').then(function(market) {
      return this.store.find('market');
    });
  }
});
