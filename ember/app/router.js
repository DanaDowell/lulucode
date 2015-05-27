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
});


/*

this.route('show', {path: '/:city_id'}, function(){
      this.resource('markets', function(){});
    });


*/