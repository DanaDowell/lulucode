import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
 // this.route('about');
  this.route('markets');
  this.route('tuesdays');
});

export default Ember.Router.extend().map(function(){
  this.route('markets', function() {
    this.route('market', {
      path: ':title'
    });
  });
  this.route('tuesdays');
  this.route('wednesdays');
});

