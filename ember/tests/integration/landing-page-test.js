import Ember from 'ember';
import {module, test } from 'qunit';
import startApp from '../helpers/start-app';

var App;

module('Integration - Landing Page', {
  beforeEach: function() {
    App = startApp();
  },
  afterEach: function() {
    Ember.run(App, 'destroy');
  }
});

test('Should welcome me to farmers markets', function(assert) {
  visit('/').then(function() {
    assert.equal(find('h2#title').text(), 'Welcome to farmMkts');
  });
});

test('Should allow navigating back to root from another page', function(assert) {
  visit('/about').then(function() {
    click('a:contains("Home")').then(function() {
      assert.notEqual(find('h3').text(), 'About');
    });
  });
});