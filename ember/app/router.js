import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

export default Router.map(function() {
  this.route('about');

  this.resource('weekdays', function() {
    this.route('show', {path: '/:weekday_id'});
  });

  this.resource('markets', function() {
    this.route('show', {path: '/:market_id'});
  });
});
